// Verilog test fixture created from schematic /home/user/csse232/JALA-CPU/stage2MemoryAccess.sch - Mon Feb  8 21:15:34 2016

`timescale 1ns / 1ps

module stage2MemoryAccessTest();

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
	
   reg [1:0] MemData;
   reg [1:0] MemDst1;
   reg [1:0] MemDst2;
	
   reg CLK;

// Output
   wire [15:0] IR;   
	wire [15:0] ValA;
   wire [15:0] ValB;

	reg [3:0] testStage;
	reg [15:0] CLKCount;
	reg [15:0] CLKStage;
	
	reg [15:0] temp;

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
	
		MemDst1 = 0;
		MemDst2 = 0;
		
		MemRead1 = 1;
		MemRead2 = 1;
		MemWrite1 = 0;
		MemWrite2 = 0;
		
		ValAWrite = 1;
		ValBWrite = 0;
		IRWrite = 1;
		
		MemDst1FromPC = 19;
		MemDst2FromMSP = 0;
		
		MemDst1FromMSP = 0;
		MemDst2FromRSP = 0;
		MemDataFromPC = 0;
		MemDataFromRes = 0;
		MemDataFromZEImm = 0;
		MemData = 0;
	
		testStage = 0;
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
		
		CLKCount = CLKCount + 1;
		
		// Delay by two clock cycles
		if(CLKCount < 3 || !(CLKCount % 2)) begin
			disable TestCLK;
		end
		
		// Memory stage takes 2 cycles to read then write to register
		if(testStage == 0) begin
			// Test initial instruction fetch
			if(ValA != MemDst2FromMSP % 10) begin
				$display("Error: ValA was %d, but MemDst2FromMSP (%d) mod 10 was %d at time %t", ValA, MemDst2FromMSP, (MemDst2FromMSP % 10), $time);
			end
						
			if(IR != MemDst1FromPC % 10) begin
				$display("Error: IR was %d, but MemDst1FromPC (%d) mod 10 was %d at time %t", IR, MemDst1FromPC, (MemDst1FromPC % 10), $time);
			end
			
			MemDst2FromMSP = MemDst2FromMSP + 1;
			MemDst1FromPC = MemDst1FromPC - 1;
			
			if(MemDst1FromPC < 1) begin
				MemDst1 = 1;
				ValAWrite = 0;
				ValBWrite = 1;
				IRWrite = 0;
				
				MemDst1FromMSP = 1;
			
				testStage = 1;
				CLKStage = CLKCount + 2;
				
				$display("Test Stage 2 (starting at %t)", $time);
			end
		end else if(testStage == 1 && CLKCount > CLKStage) begin
			// Test read from stack
			if(ValB != MemDst1FromMSP % 10) begin
				$display("Error: ValB was %d, but MemDst1FromMSP (%d) mod 10 was %d at time %t", ValB, MemDst1FromMSP, (MemDst1FromMSP % 10), $time);
			end
			
			MemDst1FromMSP = MemDst1FromMSP + 1;
			
			if(MemDst1FromMSP > 19) begin
				MemDst2 = 1;
				MemWrite2 = 1;
				MemData = 1;
				
				MemDst2FromRSP = 255;
				MemDataFromRes = 255;
				
				testStage = 2;
				CLKStage = CLKCount + 2;
				
				$display("Test Stage 3 (starting at %t)", $time);
			end
		end else if(testStage == 2 && CLKCount > CLKStage) begin
			// Test store into memory
			MemWrite2 = 0;
			
			MemDataFromRes = 0;
			
			ValAWrite = 1;
			
			// Load 8 into ValB for test 4
			ValBWrite = 1;
			MemDst1 = 1;
			MemDst1FromMSP = 8;
			
			testStage = 3;
		end else if(testStage == 3) begin
			// Test store into memory (read the stored value back)
			if(ValA != 255) begin
				$display("Error: ValA was %d, but should have been 255 at time %t", ValA, $time);
			end
			
			// Test pop into memory using data from ValB and address from ValA
			// Stores to 255
			
			MemDst2 = 2;
			MemWrite2 = 1;
			MemData = 3;
			
			ValAWrite = 0;
			ValBWrite = 0;
			
			testStage = 4;
			CLKStage = CLKCount + 2;
				
			$display("Test Stage 4 (starting at %t)", $time);
		end else if(testStage == 4 && CLKCount > CLKStage) begin
			// Test pop into memory (read the stored value back)			
			MemWrite2 = 0;
			
			MemDst2 = 0;
			// Read from 255
			MemDst2FromMSP = ValA;
						
			ValAWrite = 1;
			
			testStage = 5;
		end else if(testStage == 5) begin
			if(ValA != 8) begin
				$display("Error: ValA was %d, but should have been 8 at time %t", ValA, $time);
			end
			
			// Test storing Res to the stack
			
			MemDst2 = 0;
			
			MemWrite2 = 1;
			MemData = 1;
			
			ValAWrite = 0;
			
			MemDst2FromMSP = 495;
			MemDataFromRes = 25555;
			
			testStage = 6;
			$display("Test Stage 5 (starting at %t)", $time);
		end else if(testStage == 6) begin
			// Test storing Res to the stack (read the stored value back)			
			MemWrite2 = 0;
			
			// Read from MSP
			MemDst1 = 1;
			MemDst1FromMSP = MemDst2FromMSP;
						
			ValBWrite = 1;
			
			testStage = 7;

		end else if(testStage == 7) begin
			if(ValB != MemDataFromRes) begin
				$display("Error: ValB was %d, but should have been %d at time %t", ValB, MemDataFromRes, $time);
			end
			
			// Test storing PC to the return stack
			MemWrite2 = 1;
			
			MemDst2 = 1;
			MemDst2FromRSP = 4839;
			MemData = 0;
			MemDataFromPC = 6800;
			
			testStage = 8;
			$display("Test Stage 6 (starting at %t)", $time);
		end else if(testStage == 8) begin
			// Test storing PC to the return stack (read the stored value back)			
			MemWrite2 = 0;
			
			// Read from RSP
			MemDst1 = 1;
			MemDst1FromMSP = MemDst2FromRSP;
						
			ValBWrite = 1;
			
			/*// Set ValA to 2 (for test 8)
			MemRead2 = 1;
			MemDst2 = 0;
			MemDst2FromMSP = 2;
			ValAWrite = 1;*/
			
			CLKStage = CLKCount + 2;
			testStage = 9;
		end else if(testStage == 9 && CLKCount > CLKStage) begin
			if(ValB != MemDataFromPC) begin
				$display("Error: ValB was %d, but should have been %d at time %t", ValB, MemDataFromPC, $time);
			end
			
			// Test loading data from memory at ValA into ValB
			MemDst1 = 2;
			MemRead1 = 1;
			ValAWrite = 0;
			ValBWrite = 1;
			
			testStage = 10;
			
			$display("Test Stage 7 (starting at %t)", $time);
		end else if(testStage == 10) begin
			if(ValB != 8) begin
				$display("Error: ValB was %d, but should have been 8 at time %t", ValB, $time);
			end
			
			$finish;
			
			// Test storing ValA to stack (at 543)
			
			/*MemDst2 = 0;
			MemWrite2 = 1;
			MemData = 2;
			
			MemDst2FromMSP = 543;
			
			testStage = 11;
			$display("Test Stage 8 (starting at %t)", $time);*/
		end /*else if(testStage == 11) begin
			// Test storing ValA to stack (read the stored value back)
			MemWrite2 = 0;
			MemDst1 = 1;
			MemDst1FromMSP = MemDst2FromMSP;
			
			ValBWrite = 1;
			
			testStage = 12;
		end else if(testStage == 12) begin
			if(ValB != ValA) begin
				$display("Error: ValB was %d, but should have been %d at time %t", ValB, ValA, $time);
			end
			
			$finish;
		end*/
	end
	
endmodule
