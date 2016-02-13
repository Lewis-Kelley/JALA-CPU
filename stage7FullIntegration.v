`timescale 1ns / 1ps

module stage7FullIntegration(
							 input CLK,
							 input ControlCLK,
							 
							 // Stage 4 special control inputs/outputs
							 input CtrlRst,
							 output [4:0] CurrentState,
							 output [4:0] NextState,
							 
							 // Stage 6 Optional Outputs
							 output [15:0] MSPOut,
							 output [15:0] RSPOut,
							 output [15:0] PCOut,
							 output [15:0] ValAOut,
							 output [15:0] ValBOut


);
   // Control
   wire 		 MSPWrite;
   wire 		 MSPop;
	wire 		 MSPRegReset;
   
   wire 		 RSPWrite;
   wire 		 RSPop;
	wire 		 RSPRegReset;
   
   wire 		 PCWrite;
   wire 		 PCSource;
   wire 		 PCAdd;
	wire 		 PCRegReset;
   
   wire 		 ValAWrite;
   wire 		 ValBWrite;
   wire 		 IRWrite;
   

   wire 		 MemRead1;
   wire 		 MemRead2;
   wire 		 MemWrite1;
   wire 		 MemWrite2;
   
   wire 		 ResSource;
   wire 		 ResWrite;
   
   wire [1:0] 	 MemDst1;
   wire [1:0] 	 MemDst2;
   wire [1:0] 	 MemData;
   
   wire [2:0] 	 ALUop;

   // Stage 6 Control Ouput
   wire 		 isZero;

   // Stage 6 Inputs
   wire [15:0] 	 SignExtOut;
   wire [15:0] 	 ZeroExtOut;
   wire [15:0] 	 ShifterOut;
   
   // Stage 6 Outputs
   wire [15:0] 	 IROut;   

   stage6BasicOperation six(
						.CLK(CLK),

						.MSPWrite(MSPWrite),
						.MSPop(MSPop),
						.MSPRegReset(MSPRegReset),

						.RSPWrite(RSPWrite),
						.RSPop(RSPop),
						.RSPRegReset(RSPRegReset),

						.PCWrite(PCWrite),
						.PCSource(PCSource),
						.PCAdd(PCAdd),
						.PCRegReset(PCRegReset),

						.ValAWrite(ValAWrite),
						.ValBWrite(ValBWrite),
						.IRWrite(IRWrite),

						.MemRead1(MemRead1),
						.MemRead2(MemRead2),
						.MemWrite1(MemWrite1),
						.MemWrite2(MemWrite2),

						.ResSource(ResSource),
						.ResWrite(ResWrite),

						.MemDst1(MemDst1),
						.MemDst2(MemDst2),
						.MemData(MemData),

						.ALUop(ALUop),

						.isZero(isZero),

						.SignExtOut(SignExtOut),
						.ZeroExtOut(ZeroExtOut),
						.ShifterOut(ShifterOut),

						.IROut(IROut),
						
						.MSPOut(MSPOut),
						.RSPOut(RSPOut),
						.PCOut(PCOut),
						.ValAOut(ValAOut),
						.ValBOut(ValBOut)
						);

   stage4Integration four(
					 .ShifterIn(ValAOut),
					 .CLK(ControlCLK),
					 
					 .CtrlRst(CtrlRst),
					 .CurrentState(CurrentState),
					 .NextState(NextState),

					 .ValAWrite(ValAWrite),
					 .ValBWrite(ValBWrite),
					 .IRWrite(IRWrite),
					 
					 .MSPWrite(MSPWrite),
					 .MSPop(MSPop),
					 .MSPRegReset(MSPRegReset),

					 .RSPWrite(RSPWrite),
					 .RSPop(RSPop),
					 .RSPRegReset(RSPRegReset),

					 .PCWrite(PCWrite),
					 .PCSource(PCSource),
					 .PCAdd(PCAdd),
					 .PCRegReset(PCRegReset),

					 .MemRead1(MemRead1),
					 .MemRead2(MemRead2),
					 .MemWrite1(MemWrite1),
					 .MemWrite2(MemWrite2),

					 .ResSource(ResSource),
					 .ResWrite(ResWrite),

					 .MemDst1(MemDst1),
					 .MemDst2(MemDst2),
					 .MemData(MemData),
					 
					 .ALUop(ALUop),

					 .isZero(isZero),
					 
					 .IROut(IROut),

					 .SignExtOut(SignExtOut),
					 .ZeroExtOut(ZeroExtOut),
					 .ShifterOut(ShifterOut)
					 );
endmodule
