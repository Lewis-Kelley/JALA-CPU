`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    20:51:37 02/08/2016
// Design Name:
// Module Name:    alu16
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
module alu16(
			 input [15:0]  in_a,
			 input [15:0]  in_b,
			 input [2:0]   op,

			 output reg [15:0] r,
			 output reg	   isZero
			 );

   always @ (in_a, in_b, op) begin
	  if(op == 0) //and
		r = in_a & in_b;
	  else if(op == 1) //or
		r = in_a | in_b;
	  else if(op == 2) //add
		r = in_a + in_b;
	  else if(op == 3) //slt
		r = in_a > in_b;
	  else if(op == 4) //sub
		r = in_b - in_a;

	  isZero = ~(r[0] | r[1] | r[2] | r[3] | r[4] | r[5] | r[6] | r[7] | r[8] | r[9] | r[10] | r[11] | r[12] | r[13] | r[14] | r[15]);
   end
endmodule
