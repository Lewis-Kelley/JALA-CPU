`timescale 1ns / 1ps

module stage5Integration(
						 //Valued Inputs
						 input [15:0]  SignExtOut,
						 input [15:0]  ZeroExtOut,
						 input [15:0]  ResOut,

						 //Control Inputs
						 input         CLK,
						 input         MemCLK,

						 input         MSPWrite,
						 input         MSPop,
						 input         MSPRegReset,

						 input         RSPWrite,
						 input         RSPop,
						 input         RSPRegReset,

						 input         PCWrite,
						 input         PCSource,
						 input         PCAdd,
						 input         PCRegReset,

						 input         ValAWrite,
						 input         ValBWrite,
						 input         IRWrite,
						 input         displayWrite,

						 input         MemRead1,
						 input         MemRead2,
						 input         MemWrite1,
						 input         MemWrite2,

						 input [1:0]   MemDst1,
						 input [1:0]   MemDst2,
						 input [2:0]   MemData,

                         input [3:0]   switches, 
						 
						 // lcd IO
						 input         RESET,
						 output        sf_ce,
						 output        sf_oe,
						 output        sf_we,
						 output        lcd_rw,
						 output        lcd_rs,
						 output        lcd_E,
						 output [3:0]  lcd_D,
						 output        led7,

						 // Register Outputs
						 output [15:0] ValAOut,
						 output [15:0] ValBOut,
						 output [15:0] IROut,

						 // Optional Register Outputs
						 output [15:0] PCOut,
						 output [15:0] MSPOut,
						 output [15:0] RSPOut,
						 
						 output [15:0] MemAOut,
						 output [15:0] MemBOut
    );

   stage1PCIncrementerSch pc(
							 .PCAddFromSE(SignExtOut),
							 .PCSourceFromValA(ValAOut),
							 .PC(PCOut),
							 .CLK(CLK),
							 .PCWrite(PCWrite),
							 .PCSource(PCSource),
							 .PCAdd(PCAdd),
							 .RegReset(PCRegReset)
							 );

   stage1MSPIncrementer msp(
							.RegWrite(MSPWrite),
							.Op(MSPop),
							.CLK(CLK),
							.RegOut(MSPOut),
							.RegReset(MSPRegReset)
							);

   stage1RSPIncrementer rsp(
							.RegWrite(RSPWrite),
							.Op(RSPop),
							.CLK(CLK),
							.RegOut(RSPOut),
							.RegReset(RSPRegReset)
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
						  
						  // Optional outputs
						  .MemAOut(MemAOut),
						  .MemBOut(MemBOut),

						  //Register control
						  .ValAWrite(ValAWrite),
						  .ValBWrite(ValBWrite),
						  .IRWrite(IRWrite),
						  .displayWrite(displayWrite),

							//Display inputs/outputs
						  .CLK(CLK),
						  .MemCLK(MemCLK),
						  .RESET(RESET),
						  .sf_ce(sf_ce),
						  .sf_oe(sf_oe),
						  .sf_we(sf_we),
						  .lcd_rw(lcd_rw),
						  .lcd_rs(lcd_rs),
						  .lcd_E(lcd_E),
						  .lcd_D(lcd_D),
						  .led7(led7),

                          .switches(switches)
						  );


endmodule
