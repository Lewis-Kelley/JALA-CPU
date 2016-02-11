`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:34 02/10/2016 
// Design Name: 
// Module Name:    stage7FullIntegration 
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
module stage7FullIntegration(
	// Control
	wire CLK,
   wire MSPWrite,
   wire MSPop,
   wire RSPWrite,
   wire RSPop,
   wire PCWrite,
   wire PCSource,
   wire PCAdd,
   wire ValAWrite,
   wire ValBWrite,
   wire IRWrite,
   wire MemRead1,
   wire MemRead2,
   wire MemWrite1,
	wire MemWrite2,
   wire ResSource,
   wire ResWrite,
	wire [1:0] MemDst1,
   wire [1:0] MemDst2,
   wire [2:0] MemData,
   wire [3:0] ALUop,
	
	// Stage 6 Control Ouput
	wire isZero,
	
	// Stage 6 Inputs
	wire [15:0] SignExtOut,
   wire [15:0] ZeroExtOut,
   wire [15:0] ShifterOut,

	// Stage 6 Outputs
	wire [15:0] IROut,
	
	// Stage 6 Optional Outputs
	wire [15:0] MSPOut,
   wire [15:0] RSPOut,
   wire [15:0] PCOut,
   wire [15:0] ValAOut,
   wire [15:0] ValBOut

    );


endmodule
