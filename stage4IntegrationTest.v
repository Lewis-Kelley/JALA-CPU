`timescale 1ns / 1ps

module stage4IntegrationTest;

   // Inputs
   reg [15:0] IROut;
   reg 		  isZero;
   reg 		  CLK;
   reg 		  CtrlRst;
   reg [15:0] ShifterIn;

   // Outputs
   wire [15:0] 			 ShifterOut;
   wire [15:0] 			 ZeroExtOut;
   wire [15:0] 			 SignExtOut;
   wire 				 PCSource;
   wire 				 PCWrite;
   wire 				 PCAdd;
   wire 				 MSPPop;
   wire 				 MSPWrite;
   wire 				 RSPPop;
   wire 				 RSPWrite;
   wire 				 IRWrite;
   wire 				 ValAWrite;
   wire 				 ValBWrite;
   wire 				 ResSource;
   wire 				 ResWrite;
   wire [1:0] 			 MemDst1;
   wire [1:0] 			 MemDst2;
   wire [2:0] 			 MemData;
   wire 				 MemWrite1;
   wire 				 MemWrite2;
   wire 				 MemRead1;
   wire 				 MemRead2;
   wire [2:0] 			 ALUop;

   wire [4:0] 			 CurrentState;
   wire [4:0] 			 NextState;

   // Variables
   reg [15:0] 			 trials;
   reg [15:0] 			 errors;
   reg [15:0] 			 CLKCount;

   // Expected Values
   reg [15:0] 			 eShifterOut;
   reg [15:0] 			 eZeroExtOut;
   reg [15:0] 			 eSignExtOut;

   // Instantiate the Unit Under Test (UUT)
   stage4Integration uut (
						  .IROut(IROut),
						  .isZero(isZero),
						  .CLK(CLK),
						  .CtrlRst(CtrlRst),
						  .ShifterIn(ShifterIn),
						  .ShifterOut(ShifterOut),
						  .ZeroExtOut(ZeroExtOut),
						  .SignExtOut(SignExtOut),
						  .PCSource(PCSource),
						  .PCWrite(PCWrite),
						  .PCAdd(PCAdd),
						  .MSPPop(MSPPop),
						  .MSPWrite(MSPWrite),
						  .RSPPop(RSPPop),
						  .RSPWrite(RSPWrite),
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
						  .ALUop(ALUop)
						  );

   parameter   PERIOD = 20;
   parameter   real 	 DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   initial begin
	  // Initialize Inputs
	  IROut = 0;
	  isZero = 0;
	  CLK = 0;
	  ShifterIn = 0;
   end

   initial begin   // Clock process for CLK
	  CLK = 0;
	  #OFFSET;
	  forever begin
		 #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = ~CLK;
		 #(PERIOD*DUTY_CYCLE);
	  end
   end

   // Initialize Inputs
   initial begin
	  IROut = 0;
	  isZero = 0;
	  CLK = 0;
	  ShifterIn = 0;
      errors = 0;
      trials = 0;
	  CLKCount = 0;
	  eShifterOut = 0;
	  eZeroExtOut = 0;
	  eSignExtOut = 0;
   end

   always @ (posedge CLK) begin: TestCLK
	  // Give the system 5 cycles to initialize
	  if(CLKCount < 5) begin
		 CLKCount = CLKCount + 1;
		 disable TestCLK;
	  end else begin

		 ////////////////////
         //  Error Check   //
         ////////////////////

		 if(ShifterOut != eShifterOut) begin
   			$display("ERROR at CLK %d: ShifterOut %x != %x", CLKCount, ShifterOut, eShifterOut);
   			errors = errors + 1;
   		 end

		 if(ZeroExtOut != eZeroExtOut) begin
   			$display("ERROR at CLK %d: ZeroExtOut %x != %x", CLKCount, ZeroExtOut, eZeroExtOut);
   			errors = errors + 1;
   		 end

		 if(SignExtOut != eSignExtOut) begin
   			$display("ERROR at CLK %d: SignExtOut %x != %x", CLKCount, SignExtOut, eSignExtOut);
   			errors = errors + 1;
   		 end

		 //////////////////////////
         // Increment variables	 //
         //////////////////////////

		 ShifterIn = 16'h FFFF - CLKCount[11:0];
		 CLKCount = CLKCount + 1;
		 trials = trials + 1;

		 //////////////
         //  Tests	 //
         //////////////

		 if(CLKCount <= 105) begin
			IROut = {4'b 1000, (CLKCount[11:0]) % 16};

			eShifterOut = ShifterIn << {4'b 0000, IROut[11:0]};
			eZeroExtOut = {4'b 0000, IROut[11:0]};
			eSignExtOut = {IROut[11], IROut[11], IROut[11], IROut[11], IROut[11:0]};
		 end else if(CLKCount <= 205) begin
			IROut = {4'b 1001, (CLKCount[11:0]) % 16};

			eShifterOut = ShifterIn >> {4'b 0000, IROut[11:0]};
			eZeroExtOut = {4'b 0000, IROut[11:0]};
			eSignExtOut = {IROut[11], IROut[11], IROut[11], IROut[11], IROut[11:0]};
		 end else if(CLKCount <= 305) begin
			IROut = {4'b 1010, (CLKCount[11:0]) % 16};

			eShifterOut = $signed(ShifterIn) >>> {4'b 0000, IROut[11:0]};
			eZeroExtOut = {4'b 0000, IROut[11:0]};
			eSignExtOut = {IROut[11], IROut[11], IROut[11], IROut[11], IROut[11:0]};
		 end else begin
			$display("Finished with %d/%d errors.", errors, trials);
			$finish;
		 end
	  end
   end
endmodule
