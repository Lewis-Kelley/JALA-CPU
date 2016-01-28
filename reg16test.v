// Verilog test fixture created from schematic /home/user/csse232/Project/Components/reg16.sch - Mon Jan 25 18:48:29 2016

`timescale 1ns / 1ps

module reg16_reg16_sch_tb();

// Inputs
   reg [15:0] I;
   reg Write;
   reg CLK;

// Output
   wire [15:0] O;

// Bidirs

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
   
	initial    // Clock process for CLK
		begin
			#OFFSET;
			forever begin
				CLK = 1'b0;
				#(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = 1'b1;
				#(PERIOD*DUTY_CYCLE);
			end
		end
	  
// Initialize Inputs
   initial begin
		I = 0;
		Write = 0;
		
		#100;
	end
	
	// Doesn't work, register takes more than 1 cycle to write
	always @ (posedge CLK) begin		
		if(Write == 1) begin
			if(O != I) begin
				$display("Output %b does not equal input %b", O, I);
			end
			Write = 0;
		end else begin
			Write = 1;
		end
		
		I = I+1;
	end
	
endmodule
