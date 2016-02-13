module Control (
	input [3:0] op,
	input	clk, rst, isZero,
	output reg PCSource,
	output reg PCWrite,
	output reg PCAdd,
	output reg PCRegReset,
	output reg MSPop,
	output reg MSPWrite,
	output reg MSPRegReset,
	output reg RSPop,
	output reg RSPWrite,
	output reg RSPRegReset,
	output reg IRWrite,
	output reg ValAWrite,
	output reg ValBWrite,
	output reg ResSource,
	output reg ResWrite,
	output reg [1:0] MemDst1,
	output reg [1:0] MemDst2,
	output reg [1:0] MemData,
	output reg MemWrite1,
	output reg MemWrite2,
	output reg MemRead1,
	output reg MemRead2,
	output reg dir,
	output reg mode,
	output reg [2:0] ALUop,
	output reg [4:0] CurrentState = 5'b00000,
	output reg [4:0] NextState
);

	// State Encoding
	parameter 	State0  = 5'b00000, 
					State1  = 5'b00001, 
					State2  = 5'b00010,
					State3  = 5'b00011,
					State4  = 5'b00100,
					State5  = 5'b00101,
					State6  = 5'b00110,
					State7  = 5'b00111,
					State8  = 5'b01000,
					State9  = 5'b01001,
					State10 = 5'b01010,
					State11 = 5'b01011,
					State12 = 5'b01100,
					State13 = 5'b01101,
					State14 = 5'b01110,
					State15 = 5'b01111,
					State16 = 5'b10000,
					State17 = 5'b10001,
					State18 = 5'b10010,
					State19 = 5'b10011,
					State20 = 5'b10100,
					State21 = 5'b10101,
					State22 = 5'b10110,
					State23 = 5'b10111,
					State24 = 5'b11000;

	// Current State Assignment
	always @(posedge clk) begin
		if (rst != 1) begin
			CurrentState <= NextState;
			$display("Pls %d", CurrentState);
		end
	end
	
	always @(rst) begin
		if(rst) begin
			CurrentState <= State0;
			$display("Reset");
		end
	end
		
	// Next State Logic
	always @(CurrentState or op or posedge clk) begin
		case (CurrentState)
			State0:	begin
				NextState <= State1;
			end
		
			State1:	begin
				//R-type, beq, bne, pop
				if (((!op[3]&&!op[2])||(!op[3]&&!op[1]&&!op[0]))||(op[3]&&((!op[2]&&op[1]&&op[0])||(op[2]&&!op[1]))))
					NextState <= State2;
					
				//sll
				else if (op[3]&&!op[2]&&!op[1]&&!op[0])
					NextState <= State11;
					
				//srl
				else if (op[3]&&!op[2]&&!op[1]&&op[0])
					NextState <= State12;
					
				//sra
				else if (op[3]&&!op[2]&&op[1]&&!op[0])
					NextState <= State13;
					
				//jpush
				else if (!op[3]&&op[2]&&op[1]&&!op[0])
					NextState <= State15;
					
				//jr
				else if (!op[3]&&op[2]&&op[1]&&op[0])
					NextState <= State17;
					
				//jpop
				else if (!op[3]&&op[2]&&!op[1]&&op[0])
					NextState <= State20;
					
				//push
				else if (op[3]&&op[2]&&op[1]&&!op[0])
					NextState <= State21;
					
				//pushi
				else if (op[3]&&op[2]&&op[1]&&op[0])
					NextState <= State23;
				end
				
			State2:	begin
				//R-type
				if ((!op[3]&&!op[2])||(!op[3]&&!op[1]&&!op[0]))
					NextState <= State3;
				
				//beq, bne
				else if (op[3]&&((!op[2]&&op[1]&&op[0])||(op[2]&&!op[1]&&!op[0])))
					NextState <= State6;
					
				//pop
				else if (op[3]&&op[2]&&!op[1]&&op[0])
					NextState <= State9;
				end
				
			State3:	begin
				NextState <= State4;
				end
			State4:	begin
				NextState <= State5;
				end
			State5:	begin
				NextState <= State1;
				end
				
			State6:	begin
				//beq
				if (op[3]&&op[2]&&!op[1]&&!op[0])
					NextState <= State7;
					
				//bne
				else if(op[3]&&!op[2]&&op[1]&&op[0])
					NextState <= State8;
				end
			
			State7:	begin
				NextState <= State1;
				end
			
			State8:	begin
				NextState <= State1;
				end
			
			State9:	begin
				NextState <= State10;
				end
			State10:	begin
				NextState <= State1;
				end
			
			State11:	begin
				NextState <= State14;
				end
			State12:	begin
				NextState <= State14;
				end
			State13:	begin
				NextState <= State14;
				end
			State14:	begin
				NextState <= State1;
				end
			
			State15:	begin
				NextState <= State16;
				end
			State16:	begin
				NextState <= State19;
				end
			
			State17:	begin
				NextState <= State18;
				end
			State18:	begin
				NextState <= State19;
				end
				
			State19:	begin
				NextState <= State1;
				end
				
			State20:	begin
				NextState <= State1;
				end
				
			State21:	begin
				NextState <= State22;
				end
			State22:	begin
				NextState <= State1;
				end
				
			State23:	begin
				NextState <= State24;
				end
			State24:	begin
				NextState <= State1;
				end
				
			default:
				NextState <= CurrentState;
		endcase
	end

	// Output Logic
	always @(CurrentState or isZero) begin
		case (CurrentState)
			State0: begin
				PCWrite <= 1;
				MSPWrite <= 1;
				RSPWrite <= 1;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 1;
				RSPRegReset <= 1;
				PCRegReset <= 1;
			end
			
			State1: begin
				PCWrite <= 1;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 1;
				ValAWrite <= 1;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 1;
				MemRead2 <= 1;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MemDst1 <= 2'b00;
				MemDst2 <= 2'b00;
				PCAdd <= 0;
				PCSource <= 0;
				end
			
			State2: begin
				PCWrite <= 0;
				MSPWrite <= 1;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MSPop <= 1;
				end
			
			State3: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 1;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 1;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MemDst1 <= 2'b01;
				end
			
			State4: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 1;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				ResSource <= 0;
				//add
				if (!op[3]&&!op[2]&&!op[1]&&!op[0])
					ALUop <= 3'b010;
				//sub
				else if (!op[3]&&!op[2]&&!op[1]&&op[0])
					ALUop <= 3'b100;
				//and
				else if (!op[3]&&!op[2]&&op[1]&&!op[0])
					ALUop <= 3'b000;
				//or
				else if (!op[3]&&!op[2]&&op[1]&&op[0])
					ALUop <= 3'b001;
				//slt
				else if (!op[3]&&op[2]&&!op[1]&&!op[0])
					ALUop <= 3'b011;
				end
				
			State5: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 1;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MemDst2 <= 2'b00;
				MemData <= 2'b01;
				end
				
			State6: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 1;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 1;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MemDst1 <=2'b01;
				end
				
			State7: begin
				PCWrite <= !isZero;
				MSPWrite <= 1;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MSPop <= 0;
				ALUop <= 3'b100;
				PCAdd <= 1;
				PCSource <= 0;
				end
			
			State8: begin
				PCWrite <= isZero;
				MSPWrite <= 1;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MSPop <= 0;
				ALUop <= 3'b100;
				PCAdd <= 1;
				PCSource <= 0;
				end
			
			State9: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 1;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 1;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MemDst1 <= 2'b01;
				end
			
			State10: begin
				PCWrite <= 0;
				MSPWrite <= 1;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 1;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;
				
				MemDst2 <= 2'b10;
				MemData <= 2'b11;
				MSPop <= 1;
				end
				
			State11: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 1;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				dir <= 0;
				mode <= 0;
				ResSource <= 1;
				end

			State12: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 1;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				dir <= 1;
				mode <= 0;
				ResSource <= 1;
				end

			State13: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 1;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				dir <= 1;
				mode <= 1;
				ResSource <= 1;
				end

			State14: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 1;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MemDst2 <= 2'b00;
				MemData <= 2'b01;
				end

			State15: begin
				PCWrite <= 0;
				MSPWrite <= 1;
				RSPWrite <= 1;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MSPop = 1;
				RSPop = 1;
				end

			State16: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 1;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MemDst2 <= 2'b01;
				MemData <= 2'b00;
				end

			State17: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 1;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 1;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MemDst2 <= 2'b01;
				end

			State18: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 1;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				RSPop <= 0;
				end

			State19: begin
				PCWrite <= 1;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				PCSource <= 1;
				end

			State20: begin
				PCWrite <= 1;
				MSPWrite <= 1;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MSPop <= 1;
				PCSource <= 1;
				end

			State21: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 1;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 1;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MemDst1 <= 2'b10;
				end

			State22: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 1;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MemDst2 <= 2'b00;
				MemData <= 2'b11;
				end

			State23: begin
				PCWrite <= 0;
				MSPWrite <= 1;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 0;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MSPop <= 0;
				end

			State24: begin
				PCWrite <= 0;
				MSPWrite <= 0;
				RSPWrite <= 0;
				IRWrite <= 0;
				ValAWrite <= 0;
				ValBWrite <= 0;
				ResWrite <= 0;
				MemWrite1 <= 0;
				MemWrite2 <= 1;
				MemRead1 <= 0;
				MemRead2 <= 0;
				
				MSPRegReset <= 0;
				RSPRegReset <= 0;
				PCRegReset <= 0;

				MemDst2 <= 2'b00;
				MemData <= 2'b10;
				end

		endcase
	end
endmodule
