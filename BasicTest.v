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

	// Outputs
	wire [4:0] CurrentState;
	wire [4:0] NextState;
	
	wire [15:0] PC;
	wire [15:0] MSP;
	wire [15:0] RSP;
	wire [15:0] ValA;
	wire [15:0] ValB;
	
	// Inputs
	reg CtrlRst;
	
	reg CLK;
	reg ControlCLK;

	// Instantiate the Unit Under Test (UUT)
	stage7FullIntegration uut (
		.CLK(CLK),
		.ControlCLK(ControlCLK),
		
		.CtrlRst(CtrlRst),
		.CurrentState(CurrentState),
		.NextState(NextState),
		
		.PCOut(PC),
		.MSPOut(MSP),
		.RSPOut(RSP),
		.ValAOut(ValA),
		.ValBOut(ValB)
	);

	// use this if your design contains sequential logic
   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;
	
	parameter   CONTROL_PERIOD = 40;
   
	initial begin   // Clock process for CLK
		CLK = 0;
		#OFFSET;
		forever begin
			#(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = ~CLK;
			#(PERIOD*DUTY_CYCLE);
		end
		
	end
	
	initial begin
		ControlCLK = 0;
		#OFFSET;
		forever begin
			#(CONTROL_PERIOD-(CONTROL_PERIOD*DUTY_CYCLE)) ControlCLK = ~ControlCLK;
			#(CONTROL_PERIOD*DUTY_CYCLE);
		end
	end
      
endmodule

