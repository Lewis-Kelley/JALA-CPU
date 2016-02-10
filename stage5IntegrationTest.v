`timescale 1ns / 1ps

module stage5IntegrationTest;
	// Inputs
   reg [15:0] SignExtOut;
   reg [15:0] ZeroExtOut;
   reg [15:0] ResOut;
   reg 		  CLK;
   reg 		  MSPWrite;
   reg 		  MSPPop;
   reg 		  RSPWrite;
   reg 		  RSPPop;
   reg 		  PCWrite;
   reg 		  PCSource;
   reg 		  PCAdd;
   reg 		  ValAWrite;
   reg 		  ValBWrite;
   reg 		  IRWrite;
   reg 		  MemRead1;
   reg 		  MemRead2;
   reg 		  MemWrite1;
   reg 		  MemWrite2;
   reg [1:0]  MemDst1;
   reg [1:0]  MemDst2;
   reg [2:0]  MemData;

   // Outputs
   wire [15:0] ValAOut;
   wire [15:0] ValBOut;
   wire [15:0] IROut;

   // Variables
   reg [15:0]  trials;
   reg [15:0]  errors;
   reg [15:0]  CLKCount;

   // Expected Values
   reg [15:0]  eValA;
   reg [15:0]  eValB;
   reg [15:0]  eIR;

   // Instantiate the Unit Under Test (UUT)
   stage5Integration uut (
						  .SignExtOut(SignExtOut),
						  .ZeroExtOut(ZeroExtOut),
						  .ResOut(ResOut),

						  .CLK(CLK),

						  .MSPWrite(MSPWrite),
						  .MSPPop(MSPPop),

						  .RSPWrite(RSPWrite),
						  .RSPPop(RSPPop),

						  .PCWrite(PCWrite),
						  .PCSource(PCSource),
						  .PCAdd(PCAdd),

						  .ValAWrite(ValAWrite),
						  .ValBWrite(ValBWrite),
						  .IRWrite(IRWrite),

						  .MemRead1(MemRead1),
						  .MemRead2(MemRead2),
						  .MemWrite1(MemWrite1),
						  .MemWrite2(MemWrite2),

						  .MemDst1(MemDst1),
						  .MemDst2(MemDst2),
						  .MemData(MemData),

						  .ValAOut(ValAOut),
						  .ValBOut(ValBOut),
						  .IROut(IROut)
						  );

   parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

   initial begin
	  // Initialize Inputs
	  SignExtOut = 16'h 0000;
	  ZeroExtOut = 16'h 0000;
	  ResOut = 16'h 0000;

	  CLK = 0;

	  MSPWrite = 0;
	  MSPPop = 0;

	  RSPWrite = 0;
	  RSPPop = 0;

	  PCWrite = 0;
	  PCSource = 0;
	  PCAdd = 0;

	  ValAWrite = 0;
	  ValBWrite = 0;
	  IRWrite = 0;

	  MemRead1 = 0;
	  MemRead2 = 0;
	  MemWrite1 = 0;
	  MemWrite2 = 0;

	  MemDst1 = 0;
	  MemDst2 = 0;
	  MemData = 0;

	  trials = 0;
	  errors = 0;
	  CLKCount = 0;

	  eValA = 0;
	  eValB = 0;
	  eIR = 0;
   end

   initial begin   // Clock process for CLK
	  CLK = 0;
	  #OFFSET;
	  forever begin
		 #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = ~CLK;
		 #(PERIOD*DUTY_CYCLE);
	  end
   end

   always @ (posedge CLK) begin: TestCLK
	  #1;

	  CLKCount = CLKCount + 1;
	  
	  // Give the system 5 cycles to initialize
	  // Only execute on odd CLK cycles
	  if(CLKCount <= 5 || (CLKCount % 2 == 0)) begin
		 disable TestCLK;
	  end else begin
		 if(CLKCount <= 10) begin // Increment up MSP and RSP
			PCWrite = 0;

			MemRead1 = 0;
			MemRead2 = 0;
			
			MemWrite1 = 0;
			MemWrite2 = 0;

			IRWrite = 0;
			ValAWrite = 0;
			ValBWrite = 0;
			
			MSPWrite = 1;
			MSPPop = 0;

			RSPWrite = 1;
			RSPPop = 1;
		 end else if(CLKCount <= 20) begin // Standard Instruction Fetch
			PCAdd = 1;
			PCSource = 0;
			PCWrite = 1;
			
			MemDst1 = 2'b 00;
			MemDst2 = 2'b 00;
			
			MemRead1 = 1;
			MemRead2 = 1;
			MemWrite1 = 0;
			MemWrite2 = 0;
			
			IRWrite = 1;
			ValAWrite = 1;
			ValBWrite = 0;
			
			MSPWrite = 1;
			MSPPop = 0;
			
			RSPWrite = 0;
		 end else begin
			$display("Finished with %d/%d errors.", errors, trials);
			$finish;
		 end
		 
		 trials = trials + 1;
	  end
   end

endmodule
