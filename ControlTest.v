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
	wire MSPRegReset;
	wire RSPRegReset;
	wire PCRegReset;
	
	reg [4:0] TestStage;
	reg [3:0] CLKCount;

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
		.NextState(NextState),
		.MSPRegReset(MSPRegReset),
		.RSPRegReset(RSPRegReset),
		.PCRegReset(PCRegReset)
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
		//Test rst function
		if (TestStage == 0) begin
			op = op + 3;
			if (PCWrite != 1)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 1);
				if (MSPWrite != 1)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 1);
				if (RSPWrite != 1)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 1);
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
					
				if (MSPRegReset != 1)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 1);
				if (RSPRegReset != 1)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 1);
				if (PCRegReset != 1)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 1);
					
				if (CurrentState != 0)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 0);

				CLKCount = CLKCount + 1;
			
				
			if (CLKCount == 3) begin
				rst = 1;
				end
				
			if (CLKCount > 3) begin
				op = 0;
				rst = 1;
				$display("Test Stage 2: add");
				TestStage = 1;
				CLKCount = 0;
				end
			end
			
		//Test add op code (0)
		else if (TestStage == 1) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 3)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 3);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 4)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 4);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 5)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 5);
					
				$display("State 5 -> State 1");
				op = 1;
				$display("Test Stage 3: sub");
				TestStage = 2;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test sub op code (1)
		else if (TestStage == 2) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 3)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 3);
					
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
					
				if (ALUop != 3'b100)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 4);
				if (ResSource != 0)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 4)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 4);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 5)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 5);
					
				$display("State 5 -> State 1");
				op = 2;
				$display("Test Stage 4: and");
				TestStage = 3;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test and op code (2)
		else if (TestStage == 3) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 3)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 3);
					
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
					
				if (ALUop != 3'b000)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 0);
				if (ResSource != 0)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 4)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 4);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 5)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 5);
					
				$display("State 5 -> State 1");
			
				op = 3;
				$display("Test Stage 5: or");
				TestStage = 4;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test or op code
		else if (TestStage == 4) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 3)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 3);
					
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
					
				if (ALUop != 3'b001)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 1);
				if (ResSource != 0)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 4)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 4);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 5)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 5);
					
				$display("State 5 -> State 1");
			
				op = 4;
				$display("Test Stage 6: slt");
				TestStage = 5;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test slt op code
		else if (TestStage == 5) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 3)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 3);
					
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
					
				if (ALUop != 3'b011)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 3);
				if (ResSource != 0)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 4)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 4);
					
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 5)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 5);
					
				$display("State 5 -> State 1");
			
				op = 5;
				$display("Test Stage 7: jpop");
				TestStage = 6;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test jpop op code
		else if (TestStage == 6) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 20");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
				if (PCWrite != 1)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 1);
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
				if (MSPWrite != 1)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 1);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 20)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 20);
					
				$display("State 20 -> State 1");
				
				op = 6;
				$display("Test Stage 8: jpush");
				TestStage = 7;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test jpush op code
		else if (TestStage == 7) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 15");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 1)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 1);
				if (RSPWrite != 1)
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
				if (RSPop != 1)
					$display("Error: RSPop was %d, but should have been %d", RSPop, 1);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 15)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 15);
					
				$display("State 15 -> State 16");
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
					
				if (MemDst2 != 2'b01)
					$display("Error: MemDst2 was %d, but should have been %d", MemDst2, 1);
				if (MemData != 2'b00)
					$display("Error: MemData was %d, but should have been %d", MemData, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 16)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 16);
					
				$display("State 16 -> State 19");
				CLKCount = CLKCount + 1;	
				end
				
				3: begin
				if (PCWrite != 1)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 1);
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
				if (MemWrite2 != 0)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 0);
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (PCSource != 1)
					$display("Error: PCSource was %d, but should have been %d", PCSource, 1);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 19)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 19);
					
				$display("State 19 -> State 1");
				op = 7;
				$display("Test Stage 9: jr");
				TestStage = 8;
				CLKCount = 0;
				end
			endcase
		end
				
		//Test jr op code
		else if (TestStage == 8) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 17");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 0)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 0);
				if (RSPWrite != 0)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 0);
				if (IRWrite != 0)
					$display("Error: IRWrite was %d, but should have been %d", IRWrite, 0);
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
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 1)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 1);
					
				if (MemDst2 != 2'b01)
					$display("Error: MemDst2 was %d, but should have been %d", MemDst2, 1);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 17)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 17);
					
				$display("State 17 -> State 18");
				CLKCount = CLKCount + 1;	
				end
				
			2: begin
				if (PCWrite != 0)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 0);
				if (MSPWrite != 0)
					$display("Error: MSPWrite was %d, but should have been %d", MSPWrite, 0);
				if (RSPWrite != 1)
					$display("Error: RSPWrite was %d, but should have been %d", RSPWrite, 1);
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
					
				if (RSPop != 0)
					$display("Error: RSPop was %d, but should have been %d", RSPop, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 18)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 18);
					
				$display("State 18 -> State 19");
				CLKCount = CLKCount + 1;	
				end
				
				3: begin
				if (PCWrite != 1)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 1);
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
				if (MemWrite2 != 0)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 0);
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (PCSource != 1)
					$display("Error: PCSource was %d, but should have been %d", PCSource, 1);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 19)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 19);
					
				$display("State 19 -> State 1");
				op = 8;
				$display("Test Stage 10: sll");
				TestStage = 9;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test sll op code
		else if (TestStage == 9) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 11");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
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
					
				if (ResSource != 1)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 1);
				if (dir != 0)
					$display("Error: dir was %d, but should have been %d", dir, 0);
				if (mode != 0)
					$display("Error: mode was %d, but should have been %d", mode, 0);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 11)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 11);
					
				$display("State 11 -> State 14");
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 14)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 14);
					
				$display("State 14 -> State 1");
				op = 9;
				$display("Test Stage 11: srl");
				TestStage = 10;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test srl op code
		else if (TestStage == 10) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 12");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
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
					
				if (ResSource != 1)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 1);
				if (dir != 1)
					$display("Error: dir was %d, but should have been %d", dir, 1);
				if (mode != 0)
					$display("Error: mode was %d, but should have been %d", mode, 0);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 12)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 12);
					
				$display("State 12 -> State 14");
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 14)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 14);
					
				$display("State 14 -> State 1");
				op = 10;
				$display("Test Stage 12: sra");
				TestStage = 11;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test sra op code
		else if (TestStage == 11) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 13");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
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
					
				if (ResSource != 1)
					$display("Error: ResSource was %d, but should have been %d", ResSource, 1);
				if (dir != 1)
					$display("Error: dir was %d, but should have been %d", dir, 1);
				if (mode != 1)
					$display("Error: mode was %d, but should have been %d", mode, 1);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 13)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 13);
					
				$display("State 13 -> State 14");
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 14)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 14);
					
				$display("State 14 -> State 1");
				op = 11;
				$display("Test Stage 13: bne");
				TestStage = 12;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test bne op code
		else if (TestStage == 12) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
				$display("State 2 -> State 6");
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 6)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 6);
					
				$display("State 6 -> State 8");
				CLKCount = CLKCount + 1;	
				end
				
			3: begin
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
					
				if (MSPop != 0)
					$display("Error: MSPop was %d, but should have been %d", MSPop, 0);
				if (ALUop != 3'b100)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 4);
				if (PCAdd != 1)
					$display("Error: PCAdd was %d, but should have been %d", PCAdd, 1);
				if (PCSource != 0)
					$display("Error: PCSource was %d, but should have been %d", PCSource, 0);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 8)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 8);
				
				$display("State 8  -> State 1");
				op = 12;
				$display("Test Stage 14: beq");
				TestStage = 13;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test beq op code
		else if (TestStage == 13) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
				$display("State 2 -> State 6");
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 6)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 6);
					
				$display("State 6 -> State 7");
				CLKCount = CLKCount + 1;	
				end
				
			3: begin
				if (PCWrite != 1)
					$display("Error: PCWrite was %d, but should have been %d", PCWrite, 1);
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
					
				if (MSPop != 0)
					$display("Error: MSPop was %d, but should have been %d", MSPop, 0);
				if (ALUop != 3'b100)
					$display("Error: ALUop was %d, but should have been %d", ALUop, 4);
				if (PCAdd != 1)
					$display("Error: PCAdd was %d, but should have been %d", PCAdd, 1);
				if (PCSource != 0)
					$display("Error: PCSource was %d, but should have been %d", PCSource, 0);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 7)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 7);
				
				$display("State 7  -> State 1");
				op = 13;
				$display("Test Stage 15: pop");
				TestStage = 14;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test pop op code
		else if (TestStage == 14) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 2)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 2);
					
				$display("State 2 -> State 9");
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 9)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 9);
					
				$display("State 9 -> State 10");
				CLKCount = CLKCount + 1;	
				end
				
			3: begin
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
				if (MemWrite2 != 1)
					$display("Error: MemWrite2 was %d, but should have been %d", MemWrite2, 1);
				if (MemRead1 != 0)
					$display("Error: MemRead1 was %d, but should have been %d", MemRead1, 0);
				if (MemRead2 != 0)
					$display("Error: MemRead2 was %d, but should have been %d", MemRead2, 0);
					
				if (MSPop != 1)
					$display("Error: MSPop was %d, but should have been %d", MSPop, 1);
				if (MemDst2 != 2'b10)
					$display("Error: MemDst2 was %d, but should have been %d", MemDst2, 2);
				if (MemData != 2'b11)
					$display("Error: MemData was %d, but should have been %d", MemData, 3);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 10)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 10);
				
				$display("State 10  -> State 1");
				op = 14;
				$display("Test Stage 16: push");
				TestStage = 15;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test push op code
		else if (TestStage == 15) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 21");
				CLKCount = CLKCount + 1;
				end
				
			1: begin
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
					
				if (MemDst1 != 2'b10)
					$display("Error: MemDst1 was %d, but should have been %d", MemDst1, 1);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 21)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 21);
					
				$display("State 21 -> State 22");
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
				if (MemData != 2'b11)
					$display("Error: MemData was %d, but should have been %d", MemData, 3);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 22)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 22);
				
				$display("State 22  -> State 1");
				op = 15;
				$display("Test Stage 17: pushi");
				TestStage = 16;
				CLKCount = 0;
				end
			endcase
		end
		
		//Test pushi op code
		else if (TestStage == 16) begin
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
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 1)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 1);
				
				$display("State 1 -> State 23");
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
					
				if (MSPop != 0)
					$display("Error: MSPop was %d, but should have been %d", MSPop, 0);
					
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 23)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 23);
					
				$display("State 23 -> State 24");
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
				if (MemData != 2'b10)
					$display("Error: MemData was %d, but should have been %d", MemData, 2);
				
				if (MSPRegReset != 0)
					$display("Error: MSPRegReset was %d, but should have been %d", MSPRegReset, 0);
				if (RSPRegReset != 0)
					$display("Error: RSPRegReset was %d, but should have been %d", RSPRegReset, 0);
				if (PCRegReset != 0)
					$display("Error: PCRegReset was %d, but should have been %d", PCRegReset, 0);
					
				if (CurrentState != 24)
					$display("Error: Incorrect State. CurrentState was %d, but should have been %d", CurrentState, 24);
				
				$display("State 24  -> State 1");
				$display("DONE");
				$finish;
				end
			endcase
		end
	end  
endmodule

