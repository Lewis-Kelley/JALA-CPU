`timescale 1ns / 1ps

module stage5Integration(
						 //Valued Inputs
						 input [15:0]  SignExtOut,
						 input [15:0]  ZeroExtOut,
						 input [15:0]  ResOut,

						 //Control Inputs
						 input 		   CLK,

						 input 		   MSPWrite,
						 input 		   MSPPop,

						 input 		   RSPWrite,
						 input 		   RSPPop,

						 input 		   PCWrite,
						 input 		   PCSource,
						 input 		   PCAdd,

						 input 		   ValAWrite,
						 input 		   ValBWrite,
						 input 		   IRWrite,

						 input 		   MemRead1,
						 input 		   MemRead2,
						 input 		   MemWrite1,
						 input 		   MemWrite2,

						 input [1:0]   MemDst1,
						 input [1:0]   MemDst2,
						 input [2:0]   MemData,

						 // Register Outputs
						 output [15:0] ValAOut,
						 output [15:0] ValBOut,
						 output [15:0] IROut,

						 // Optional Register Outputs
						 output [15:0] PCOut, 
						 output [15:0] MSPOut,
						 output [15:0] RSPOut 
    );

   stage1PCIncrementerSch pc(
							 .PCAddFromSE(SignExtOut),
							 .PCSourceFromValA(ValAOut),
							 .PC(PCOut),
							 .CLK(CLK),
							 .PCWrite(PCWrite),
							 .PCSource(PCSource),
							 .PCAdd(PCAdd)
							 );

   stage1MSPIncrementer msp(
							.RegWrite(MSPWrite),
							.Op(MSPPop),
							.CLK(CLK),
							.RegOut(MSPOut)
							);

   stage1MSPIncrementer rsp(
							.RegWrite(RSPWrite),
							.Op(~RSPPop), //Note the inversion since RS grows down
							.CLK(CLK),
							.RegOut(RSPOut)
							);

   stage2MemoryAccess mem(
						  //Memory Valued Inputs
						  .MemDst1FromPC(PCOut),
						  .MemDst1FromMSP(MSPOut),

						  .MemDst2FromMSP(MSPOut),
						  .MemDst2FromRSP(RSPOut),

						  .MemDataFromPC(PCOut),
						  .MemDataFromRes(ResOut),
						  .MemDataFromZEImm(ZeroExtOut),

						  //Memory Control
						  .MemRead1(MemRead1),
						  .MemRead2(MemRead2),
						  .MemWrite1(MemWrite1),
						  .MemWrite2(MemWrite2),

						  .MemData(MemData),
						  .MemDst1(MemDst1),
						  .MemDst2(MemDst2),

						  //Register outputs
						  .ValA(ValAOut),
						  .ValB(ValBOut),
						  .IR(IROut),

						  //Register control
						  .ValAWrite(ValAWrite),
						  .ValBWrite(ValBWrite),
						  .IRWrite(IRWrite),

						  .CLK(CLK)
						  );


endmodule
