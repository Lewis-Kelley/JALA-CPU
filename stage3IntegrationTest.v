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

   //Variables
   reg [15:0] trials;
   reg [15:0] errors;
   reg [15:0] i;
   reg [15:0] expected;
   reg [15:0]  CLKCount;

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
	  CLKCount = 0;
	  expected = 0;
   end
   
   always @ (posedge CLK) begin: TestCLK
	  // Give the system 4 cycles to initialize
	  if(CLKCount < 5) begin
		 CLKCount = CLKCount + 1;
		 disable TestCLK;
	  end else if(CLKCount < 105) begin //and

		 if(ResOut != expected) begin
   			$display("ERROR at CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA & ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount == 105) begin //init or
		 ALUop = 1;

		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA & ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount < 205) begin //or
		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA | ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount == 205) begin //init add
		 ALUop = 2;

		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA | ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount < 305) begin //add
		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA + ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount == 305) begin //init sub
		 ALUop = 6;

		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA + ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount < 405) begin //sub
		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA - ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount == 405) begin //init slt
		 ALUop = 4;

		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA - ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else if(CLKCount < 505) begin //slt
		 if(ResOut != expected) begin
   			$display("ERROR CLK %d: %x != %x", CLKCount, ResOut, expected);
			$finish;
		 
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 expected = ALUInA < ALUInB;
   		 ALUInA = i * 5;
   		 ALUInB = 16'h FFFF - i * 3;
	  end else begin
		 $display("Finished with %d/%d errors.", errors, trials);
		 $finish;
	  end
   end

endmodule
