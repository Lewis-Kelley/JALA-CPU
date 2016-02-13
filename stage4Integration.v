`timescale 1ns / 1ps

module stage4Integration(
						 input [15:0] 	   IROut,
						 input 			   isZero,
						 input 			   CLK,
						 input 			   CtrlRst,

						 //Shifter inputs
						 input [15:0] 	   ShifterIn,

						 //Valued outputs
						 output [15:0] 	   ShifterOut,
						 output reg [15:0] ZeroExtOut,
						 output reg [15:0] SignExtOut,

						 //***************
						 //Control outputs
						 //***************
						 output 		   PCSource,
						 output 		   PCWrite,
						 output 		   PCAdd,
						 output 		   PCRegReset,

						 output 		   MSPPop,
						 output 		   MSPWrite,
						 output 		   MSPRegReset,

						 output 		   RSPPop,
						 output 		   RSPWrite,
						 output 		   RSPRegReset,

						 output 		   IRWrite,
						 output 		   ValAWrite,
						 output 		   ValBWrite,

						 output 		   ResSource,
						 output 		   ResWrite,

						 output [1:0] 	   MemDst1,
						 output [1:0] 	   MemDst2,
						 output [2:0] 	   MemData,

						 output 		   MemWrite1,
						 output 		   MemWrite2,
						 output 		   MemRead1,
						 output 		   MemRead2,

						 output [2:0] 	   ALUop,

						 output [4:0] CurrentState,
						 output [4:0] NextState
						 );

   wire 							   ShifterDir,
 									   ShifterMode;

   shift16b shifter(
					.in(ShifterIn),
					.amt(ZeroExtOut),
					.mode(ShifterMode),
					.dir(ShifterDir),
					.out(ShifterOut)
					);

   Control ctrl(
				.op(IROut[15:12]),
				.clk(CLK),
				.rst(CtrlRst),

				.PCSource(PCSource),
				.PCWrite(PCWrite),
				.PCAdd(PCAdd),
				.PCRegReset(PCRegReset),

				.MSPop(MSPPop),
				.MSPWrite(MSPWrite),
				.MSPRegReset(MSPRegReset),

				.RSPop(RSPPop),
				.RSPWrite(RSWrite),
				.RSPRegReset(RSPRegReset),

				.IRWrite(IRWrite),
				.ValAWrite(ValAWrite),
				.ValBWrite(ValBWrite),

				.ResSource(ResSource),
				.ResWrite(ResWrite),

				.MemDst1(MemDst1),
				.MemDst2(MemDst2),
				.MemData(MemData),

				.MemWrite1(MemWrite1),
				.MemWrite2(MemWrite2),
				.MemRead1(MemRead1),
				.MemRead2(MemRead2),

				.dir(ShifterDir),
				.mode(ShifterMode),

				.ALUop(ALUop),

				.CurrentState(CurrentState),
				.NextState(NextState)
				);

   always @ (*) begin
	  ZeroExtOut = {4'b0000, IROut[11:0]};
	  SignExtOut = {IROut[11], IROut[11], IROut[11], IROut[11], IROut[11:0]};
   end
endmodule
