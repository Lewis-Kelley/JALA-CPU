`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:41 02/06/2016 
// Design Name: 
// Module Name:    stage1PCIcrementer 
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
module stage1PCIcrementer(
	input [15:0] inPCSourceValA,
	input [15:0] inPCAddSE,
	
	input CLK,
	
	// Control
	input conPCAdd,
	input conPCSource,
	input conPCWrite,
	
	output outPC
    );
	 
	wire [15:0] PCSourceToPC, PCAddToAdder, AdderToPCSource;
	
	reg16 PC (.I(PCSourceToPC), .Write(conPCWrite), .CLK(CLK), .O(outPC));
	 
	always @ (inPCSourceValA, inPCAddSE, conPCAdd, conPCSource, conPCWrite) begin
		
	end


endmodule
