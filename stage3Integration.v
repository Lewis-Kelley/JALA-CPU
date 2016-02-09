`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    21:19:13 02/08/2016
// Design Name:
// Module Name:    stage3Integration
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module stage3Integration(
						 input [15:0]  ShifterOut, 
						 input 		   CLK,

						 //ALU inputs
						 input [15:0]  ALUInA,
						 input [15:0]  ALUInB,
						 input [3:0]   ALUop,

						 //Res Control
						 input 		   ResSource,
						 input 		   ResWrite, 
						 
						 //Outputs
						 output [15:0] ResOut,
						 output 	   isZero
						 );

   wire [15:0] 						   ALUOut;
   reg [15:0] 						   ResSourceOut;
   reg16 res(
			 .I(ResSourceOut),
			 .Write(ResWrite),
			 .CLK(CLK),
			 .O(ResOut)
			 );
   alu16 alu(
		 .in_a(ALUInA),
		 .in_b(ALUInB),
		 .op(ALUop),
		 .r(ALUOut),
		 .isZero(isZero)
		 );
   
   always @ (ALUInA, ALUInB, ALUop, CLK, ShifterOut, ResWrite, ResSource) begin
	  if(ResSource == 0)
		ResSourceOut = ALUOut;
	  else
		ResSourceOut = ShifterOut;
	  $display("ResOut = %x", ResOut);
   end
endmodule
