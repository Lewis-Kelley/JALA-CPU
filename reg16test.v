// Verilog test fixture created from schematic /home/user/csse232/Project/Components/reg16.sch - Mon Jan 25 18:48:29 2016

`timescale 1ns / 1ps

module reg16_reg16_sch_tb();

// Inputs
   reg [15:0] I;
   reg Write;
   reg CLK;

// Output
   wire [15:0] O;
	
// Variables
	reg [3:0] CLKCount;

// Instantiate the UUT
   reg16 UUT (
		.I(I), 
		.Write(Write), 
		.CLK(CLK), 
		.O(O)
   );
	
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
	  
// Initialize Inputs
   initial begin
		I = 0;
		Write = 0;
		
		CLKCount = 0;
		
		#150;
	end
	
	always @ (posedge CLK) begin: TestCLK
		// Give the system 4 cycles to initialize
		if(CLKCount < 5) begin
			CLKCount = CLKCount + 1;
			disable TestCLK;
		end
		if(Write == 1) begin
			if(O != I-1) begin
				$display("Output %b does not equal input %b", O, I-1);
			end
			Write = 0;
			CLKCount = 4;
		end else begin
			Write = 1;
			I = I+1;
		end

		CLKCount = CLKCount + 1;
	end
	
endmodule
