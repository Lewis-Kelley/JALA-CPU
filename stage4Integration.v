`timescale 1ns / 1ps

module stage4Integration(
						 input [15:0] 	   IROut,
						 input 			   isZero,
						 input 			   CLK,

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

						 output 		   MSPPop,
						 output 		   MSPWrite,

						 output 		   RSPPop,
						 output 		   RSPWrite,

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

						 output [2:0] 	   ALUop
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

   //TODO Instantiate control

   always @ (*) begin
	  ZeroExtOut = {4'b0000, IROut[11:0]};
	  SignExtOut = {IROut[11], IROut[11], IROut[11], IROut[11], IROut[11:0]};
   end
endmodule
