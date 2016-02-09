// Verilog test fixture created from schematic /home/user/csse232/JALA-CPU/stage2MemoryAccess.sch - Mon Feb  8 21:15:34 2016

`timescale 1ns / 1ps

module stage2MemoryAccess_stage2MemoryAccess_sch_tb();

// Inputs
   reg [15:0] MemDst1FromPC;
   reg [15:0] MemDst1FromMSP;
   reg [15:0] MemDst2FromMSP;
   reg [15:0] MemDst2FromRSP;
   reg [15:0] MemDataFromPC;
   reg [15:0] MemDataFromRes;
   reg [15:0] MemDataFromZEImm;
	
   reg MemWrite1;
   reg MemWrite2;
   reg MemRead1;
	reg MemRead2;

   reg IRWrite;
	reg ValAWrite;
   reg ValBWrite;
	
   reg [2:0] MemData;
   reg [1:0] MemDst1;
   reg [1:0] MemDst2;
	
   reg CLK;

// Output
   wire [15:0] IR;   
	wire [15:0] ValA;
   wire [15:0] ValB;


	reg CLKCount;

// Instantiate the UUT
   stage2MemoryAccess UUT (
		.MemRead2(MemRead2), 
		.ValB(ValB), 
		.ValA(ValA), 
		.IR(IR), 
		.MemDst1FromPC(MemDst1FromPC), 
		.MemDst1FromMSP(MemDst1FromMSP), 
		.MemDst2FromMSP(MemDst2FromMSP), 
		.MemDst2FromRSP(MemDst2FromRSP), 
		.MemDataFromPC(MemDataFromPC), 
		.MemDataFromRes(MemDataFromRes), 
		.MemDataFromZEImm(MemDataFromZEImm), 
		.MemWrite1(MemWrite1), 
		.MemWrite2(MemWrite2), 
		.MemRead1(MemRead1), 
		.ValBWrite(ValBWrite), 
		.MemData(MemData), 
		.IRWrite(IRWrite), 
		.ValAWrite(ValAWrite), 
		.CLK(CLK), 
		.MemDst1(MemDst1), 
		.MemDst2(MemDst2)
   );
	
// Initialize Inputs
	initial begin
	
		CLKCount = 0;
		
		#150;

		$display("Test Stage 1");		
	end
	
		// use this if your design contains sequential logic
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
	
	always @ (posedge CLK) begin: TestCLK
		#1;
		
		/*CLKCount = CLKCount + 1;
		
		// Delay by two clock cycles
		if(CLKCount < 3) begin
			disable TestCLK;
		end
		
		if(testStage == 0) begin
			// Testing PC = PC + 1
			if(PC != CLKCount-2) begin
				$display("Error: PC was %d, but CLKCount was %d", PC, CLKCount-2);
			end
			
			if(CLKCount > 34) begin
				$display("Test Stage 2");
				testStage = 1;
				
				PCAdd = 1;
				
				PCAddFromSE = 255;
				OldPC = PC;
				
				CLKCount = 2;
			end
		end else if(testStage == 1) begin
			// Test branching (PC = PC + branch offset)
			if(PC != OldPC + PCAddFromSE) begin
				$display("Error: PC was %d, but should have been %d", PC, OldPC + PCAddFromSE);
			end
			
			OldPC = PC;
			
			if(CLKCount > 6) begin
				$display("Test Stage 3");
				
				PCSource = 1;
				
				PCSourceFromValA = 302;
				
				testStage = 2;
			end
		end else if(testStage == 2) begin
			// Test jumping (PC = jump address)
			if(PC != PCSourceFromValA) begin
				$display("Error: PC was %d, but should have been %d", PC, PCSourceFromValA);
			end
			
			$finish;
		end*/
	end
	
endmodule