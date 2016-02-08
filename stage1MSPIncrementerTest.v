// Verilog test fixture created from schematic /home/user/csse232/JALA-CPU/stage1MSPIncrementer.sch - Mon Feb  8 16:33:15 2016

`timescale 1ns / 1ps

module stage1MSPIncrementer_stage1MSPIncrementer_sch_tb();

// Inputs
   reg RegWrite;
   reg Op;
   reg CLK;

// Output
   wire [15:0] RegOut;

	reg testStage;
	reg [15:0] CLKCount;
	reg [15:0] previousCount;

// Instantiate the UUT
   stage1MSPIncrementer UUT (
		.RegWrite(RegWrite), 
		.Op(Op), 
		.CLK(CLK), 
		.RegOut(RegOut)
   );
	
// Initialize Inputs
	initial begin
		RegWrite = 1;
		Op = 0;
		CLK = 0;
				
		testStage = 0;
		previousCount = 0;
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
		if(CLKCount < 3) begin
			disable TestCLK;
		end
		
		if(testStage == 0) begin
			// Testing Reg = Reg + 1
			if(RegOut != CLKCount-2) begin
				$display("Error: RegOut was %d, but CLKCount was %d", RegOut, CLKCount-2);
			end
			
			if(CLKCount > 34) begin
				$display("Test Stage 2");
				testStage = 1;
				previousCount = CLKCount;
				
				Op = 1;
			end
		end else if(testStage == 1) begin
			// Testing Reg = Reg - 1
			if(RegOut != previousCount - CLKCount + 33) begin
				$display("Error: Reg was %d, but should have been %d", RegOut, previousCount - CLKCount + 32);
			end
			
			if(CLKCount > 67) begin
				$finish;
			end
		end
	end

endmodule
