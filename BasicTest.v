`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:59:26 02/13/2016
// Design Name:   stage7FullIntegration
// Module Name:   /home/user/csse232/JALA-CPU/BasicTest.v
// Project Name:  Components
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stage7FullIntegration
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BasicTest;

	// Inputs
	reg CLK;
	wire CtrlRst;
	
	reg [4:0] CurrentState;
	reg [4:0] NextState;

	// Instantiate the Unit Under Test (UUT)
	stage7FullIntegration uut (
		.CLK(CLK),
		.CtrlRst(CtrlRst),
		.CurrentState(CurrentState),
		.NextState(NextState)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

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
      
endmodule

