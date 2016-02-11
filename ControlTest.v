`timescale 1ns / 1ps
// Verilog Test Fixture created by ISE for module: Control

module ControlTest;

	// Inputs
	reg [3:0] op;
	reg CLK;
	reg rst;
	reg isZero;

	// Outputs
	wire PCSource;
	wire PCWrite;
	wire PCAdd;
	wire MSPop;
	wire MSPWrite;
	wire RSPop;
	wire RSPWrite;
	wire IRWrite;
	wire ValAWrite;
	wire ValBWrite;
	wire ResSource;
	wire ResWrite;
	wire [1:0] MemDst1;
	wire [1:0] MemDst2;
	wire [1:0] MemData;
	wire MemWrite1;
	wire MemWrite2;
	wire MemRead1;
	wire MemRead2;
	wire dir;
	wire mode;
	wire [2:0] ALUop;
	wire [4:0] CurrentState;
	wire [4:0] NextState;
	
	reg [15:0] TestStage;
	reg [15:0] CLKCount;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.op(op), 
		.clk(CLK), 
		.rst(rst), 
		.isZero(isZero), 
		.PCSource(PCSource), 
		.PCWrite(PCWrite), 
		.PCAdd(PCAdd), 
		.MSPop(MSPop), 
		.MSPWrite(MSPWrite), 
		.RSPop(RSPop), 
		.RSPWrite(RSPWrite), 
		.IRWrite(IRWrite), 
		.ValAWrite(ValAWrite), 
		.ValBWrite(ValBWrite), 
		.ResSource(ResSource), 
		.ResWrite(ResWrite), 
		.MemDst1(MemDst1), 
		.MemDst2(MemDst2), 
		.MemData(MemData), 
		.MemWrite1(MemWrite1), 
		.MemWrite2(MemWrite2), 
		.MemRead1(MemRead1), 
		.MemRead2(MemRead2), 
		.dir(dir), 
		.mode(mode), 
		.ALUop(ALUop), 
		.CurrentState(CurrentState), 
		.NextState(NextState)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		CLK = 0;
		rst = 0;
		isZero = 0;
		
		TestStage = 0;
		CLKCount = 0;

		// Wait 100 ns for global reset to finish
		#100;
		$display("Test Stage 1: rst");
	end
	
		// Add stimulus here
		parameter   PERIOD = 20;
		parameter   real DUTY_CYCLE = 0.5;
		parameter   OFFSET = 10;
		
		initial begin   // Clock process for CLK
			CLK = 0;
			#OFFSET;
			forever begin
				#(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = ~CLK;
				#(PERIOD*DUTY_CYCLE);
			end
		end
		
		always @ (posedge CLK) begin
		#1;
		//Test rst function
		if (TestStage == 0) begin
			op = op + 1;
			CLKCount = CLKCount + 1;
			if (CurrentState != 0)
				$display("Error: CurrentState was %d, but should have been %d", CurrentState, 0);
				
			if (CLKCount > 3) begin
				op = 0;
				rst = 1;
				$display("Test Stage 2: Add");
				TestStage = 1;
				CLKCount = 0;
				end
			end
			
		//Test add op code
		if (TestStage == 1) begin
			case (CLKCount)
			0: begin
				if (PCWrite != 1)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 1);
				if (MSPWrite != 0)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 0);
				if (RSPWrite != 0)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 0);
				if (IRWrite != 1)
					$display("Error: IRWrite was %d, but should have been %d", IRWrite, 1);
				if (ValAWrite != 1)
					$display("Error: ValAWrite was %d, but should have been %d", ValAWrite, 1);
				if (ValBWrite != 0)
					$display("Error: ValBWrite was %d, but should have been %d", ValBWrite, 0);
				if (ResWrite != 0)
					$display("Error: ResWrite was %d, but should have been %d", ResWrite, 0);
				if (MemWrite1 != 0)
					$display("Error: MemWrite1 was %d, but should have been %d", MemWrite1, 0);
				if (MemWrite2 != 0)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 0);
				if (MemRead1 != 1)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 1);
				if (MemRead2 != 1)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 1);
					
				if (MemDst1 != 2'b00)
					$display("Error: MemDst1 was %d, but should have been %d", MemDst1, 0);
				if (MemDst2 != 2'b00)
					$display("Error: MemDst2 was %d, but should have been %d", MemDst2, 0);
					
				if (CurrentState != 0)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 0);
				
				$display("State 1 -> State 2");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 1)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 1);
				if (RSPWrite != 0)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 0);
				if (IRWrite != 0)
					$display("Error: IRWrite was %d, but should have been %d", IRWrite, 0);
				if (ValAWrite != 0)
					$display("Error: ValAWrite was %d, but should have been %d", ValAWrite, 0);
				if (ValBWrite != 0)
					$display("Error: ValBWrite was %d, but should have been %d", ValBWrite, 0);
				if (ResWrite != 0)
					$display("Error: ResWrite was %d, but should have been %d", ResWrite, 0);
				if (MemWrite1 != 0)
					$display("Error: MemWrite1 was %d, but should have been %d", MemWrite1, 0);
				if (MemWrite2 != 0)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 0);
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (MSPop != 1)
					$display("Error: MSPop was %d, but should have been %d", MSPop, 1);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
					
				$display("State 2 -> State 3");
				CLKCount = CLKCount + 1;	
				end
				
			2: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 0)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 0);
				if (RSPWrite != 0)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 0);
				if (IRWrite != 0)
					$display("Error: IRWrite was %d, but should have been %d", IRWrite, 0);
				if (ValAWrite != 0)
					$display("Error: ValAWrite was %d, but should have been %d", ValAWrite, 0);
				if (ValBWrite != 1)
					$display("Error: ValBWrite was %d, but should have been %d", ValBWrite, 1);
				if (ResWrite != 0)
					$display("Error: ResWrite was %d, but should have been %d", ResWrite, 0);
				if (MemWrite1 != 0)
					$display("Error: MemWrite1 was %d, but should have been %d", MemWrite1, 0);
				if (MemWrite2 != 0)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 0);
				if (MemRead1 != 1)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 1);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (MemDst1 != 2'b01)
					$display("Error: MemDst1 was %d, but should have been %d", MemDst1, 1);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
				$display("State 3 -> State 4");
				CLKCount = CLKCount + 1;	
				end
				
			3: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 0)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 0);
				if (RSPWrite != 0)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 0);
				if (IRWrite != 0)
					$display("Error: IRWrite was %d, but should have been %d", IRWrite, 0);
				if (ValAWrite != 0)
					$display("Error: ValAWrite was %d, but should have been %d", ValAWrite, 0);
				if (ValBWrite != 0)
					$display("Error: ValBWrite was %d, but should have been %d", ValBWrite, 0);
				if (ResWrite != 1)
					$display("Error: ResWrite was %d, but should have been %d", ResWrite, 1);
				if (MemWrite1 != 0)
					$display("Error: MemWrite1 was %d, but should have been %d", MemWrite1, 0);
				if (MemWrite2 != 0)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 0);
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (ALUop != 3'b010)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 2);
				if (ResSource != 0)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 0);
					
				if (CurrentState != 3)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 3);
					
				$display("State 4 -> State 5");
				CLKCount = CLKCount + 1;	
				end
				
			4: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 0)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 0);
				if (RSPWrite != 0)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 0);
				if (IRWrite != 0)
					$display("Error: IRWrite was %d, but should have been %d", IRWrite, 0);
				if (ValAWrite != 0)
					$display("Error: ValAWrite was %d, but should have been %d", ValAWrite, 0);
				if (ValBWrite != 0)
					$display("Error: ValBWrite was %d, but should have been %d", ValBWrite, 0);
				if (ResWrite != 0)
					$display("Error: ResWrite was %d, but should have been %d", ResWrite, 0);
				if (MemWrite1 != 0)
					$display("Error: MemWrite1 was %d, but should have been %d", MemWrite1, 0);
				if (MemWrite2 != 1)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 1);
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (MemDst2 != 2'b00)
					$display("Error: MemDst2 was %d, but should have been %d", MemDst2, 0);
				if (MemData != 2'b01)
					$display("Error: MemData was %d, but should have been %d", MemData, 1);
					
				if (CurrentState != 4)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 4);
					
				$display("State 5 -> State 1");
			
				op = 1;
				$display("Test Stage 3: Sub");
				TestStage = 2;
				CLKCount = 0;
				end
			endcase
		end
		
		
	end  
endmodule

