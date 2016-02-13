`timescale 1ns / 1ps

module ClockExtender(
	input clk,
	output reg ExtendedClk = 0
	);
	 
	reg [2:0] CLKCount = 0;
	reg CLKExtendValue = 3;
					
	always @(posedge clk) begin
		CLKCount <= CLKCount + 1;
		if (CLKCount > CLKExtendValue) begin
			ExtendedClk <= ~ExtendedClk;
			CLKCount <= 0;
			end
		end
endmodule
