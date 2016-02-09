`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   22:03:23 02/08/2016
// Design Name:   stage3Integration
// Module Name:   C:/Users/kelleyld/XiLinx Projects/JALA-CPU/stage3IntegrationTest.v
// Project Name:  Components
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: stage3Integration
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module stage3IntegrationTest;

	// Inputs
	reg [15:0] ShifterOut;
	reg CLK;
	reg [15:0] ALUInA;
	reg [15:0] ALUInB;
	reg [3:0] ALUop;
	reg ResSource;
	reg ResWrite;

	// Outputs
	wire [15:0] ResOut;
	wire isZero;

   reg [7:0] i;
   reg [15:0] trials;
   reg [15:0] errors;

	// Instantiate the Unit Under Test (UUT)
	stage3Integration uut (
		.ShifterOut(ShifterOut),
		.CLK(CLK),
		.ALUInA(ALUInA),
		.ALUInB(ALUInB),
		.ALUop(ALUop),
		.ResSource(ResSource),
		.ResWrite(ResWrite),
		.ResOut(ResOut),
		.isZero(isZero)
	);

	initial begin
	   // Initialize Inputs
	   ShifterOut = 0;
	   CLK = 0;
	   ALUInA = 0;
	   ALUInB = 0;
	   ALUop = 0;
	   ResSource = 0;
	   ResWrite = 1;
	   i = 0;
	   errors = 0;
	   trials = 0;

	   // Wait 100 ns for global reset to finish
	   #100;

	   // Add stimulus here
	   
	   repeat(100) begin //test and-ing
		  trials = trials + 1;
		  ALUInA = i * 5;
		  ALUInB = 16'h FFFF - i * 3;

		  #2;

		  CLK = 1;
		  
		  #3;
		  
		  if(ResOut != ALUInA & ALUInB) begin
			 $display("ERROR: %x != %x & %x", ResOut, ALUInA, ALUInB);
			 errors = errors + 1;
		  end

		  CLK = 0;
		  i = i + 1;
	   end

	   $display("Finished with %d/%d errors.", errors, trials);
	   $finish;
	end

endmodule
