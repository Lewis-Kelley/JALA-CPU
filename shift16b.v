`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:47 01/25/2016 
// Design Name: 
// Module Name:    shift16b 
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
module shift16b(
	input [15:0] in,
	input [4:0] amt,
	
	// Control
	input mode,
	input dir,
	
	output reg [15:0] out
    );

	always @ (in, amt, mode, dir) begin
		// Logic
		if(dir == 1) begin
			// Shift right
			if(mode == 1) begin
				// Arithmetic
				out = $signed(in) >>> amt;
			end else begin
				// Logical
				out = in >> amt;
			end
		end else begin
			out = in << amt;
		end
	end
	
endmodule
