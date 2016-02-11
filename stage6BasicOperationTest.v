// Verilog test fixture created from schematic /home/user/csse232/JALA-CPU/stage6BasicOperation.sch - Wed Feb 10 22:04:48 2016

`timescale 1ns / 1ps

module stage6BasicOperationTest();

// Inputs
   reg CLK;
   reg MSPWrite;
   reg MSPop;
   reg RSPWrite;
   reg RSPop;
   reg PCWrite;
   reg PCSource;
   reg PCAdd;
   reg ValAWrite;
   reg ValBWrite;
   reg MemWrite2;
   reg [15:0] SignExtOut;
   reg [15:0] ZeroExtOut;
   reg [1:0] MemDst1;
   reg [15:0] ShifterOut;
   reg IRWrite;
   reg MemRead1;
   reg MemRead2;
   reg MemWrite1;
   reg ResSource;
   reg ResWrite;
   reg [1:0] MemDst2;
   reg [2:0] MemData;
   reg [3:0] ALUop;

// Output
   wire [15:0] MSPOut;
   wire [15:0] RSPOut;
   wire isZero;
   wire [15:0] IROut;
   wire [15:0] PCOut;
   wire [15:0] ValAOut;
   wire [15:0] ValBOut;

   // Variables
   reg [15:0]  trials;
   reg [15:0]  errors;
   reg [15:0]  CLKCount;

   // Expected Values
   reg [15:0]  eValA;
   reg [15:0]  eValB;
   reg [15:0]  eIR;

   reg [15:0]  ePC;
   reg [15:0]  eMSP;
   reg [15:0]  eRSP;


// Instantiate the UUT
   stage6BasicOperation UUT (
		.CLK(CLK), 
		.MSPWrite(MSPWrite), 
		.MSPop(MSPop), 
		.RSPWrite(RSPWrite), 
		.RSPop(RSPop), 
		.PCWrite(PCWrite), 
		.PCSource(PCSource), 
		.PCAdd(PCAdd), 
		.ValAWrite(ValAWrite), 
		.ValBWrite(ValBWrite), 
		.MemWrite2(MemWrite2), 
		.SignExtOut(SignExtOut), 
		.ZeroExtOut(ZeroExtOut), 
		.MemDst1(MemDst1), 
		.RSPOut(RSPOut), 
		.ShifterOut(ShifterOut), 
		.IRWrite(IRWrite), 
		.MemRead1(MemRead1), 
		.MemRead2(MemRead2), 
		.MemWrite1(MemWrite1), 
		.ResSource(ResSource), 
		.ResWrite(ResWrite), 
		.MemDst2(MemDst2), 
		.MemData(MemData), 
		.ALUop(ALUop), 
		.isZero(isZero), 
		.IROut(IROut), 
		.PCOut(PCOut), 
		.MSPOut(MSPOut), 
		.ValAOut(ValAOut), 
		.ValBOut(ValBOut)
   );
// Initialize Inputs
   initial begin
	  // Initialize Inputs
	  SignExtOut = 16'h 0000;
	  ZeroExtOut = 16'h 0000;
	  
	  CLK = 0;

	  MSPWrite = 0;
	  MSPop = 0;

	  RSPWrite = 0;
	  RSPop = 0;

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

	  ePC = 0;
	  eMSP = 0;
	  eRSP = 0;
   end
	
	parameter   PERIOD = 20;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;

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
	  
	  // Duplicate Stage 5 tests

	  // Give the system 5 cycles to initialize
	  if(CLKCount <= 5) begin
		 disable TestCLK;
	  end else begin
		 if(CLKCount <= 59) begin // Increment up MSP
			PCWrite = 0;

			MemRead1 = 0;
			MemRead2 = 0;

			MemWrite1 = 0;
			MemWrite2 = 0;

			IRWrite = 0;
			ValAWrite = 0;
			ValBWrite = 0;

			MSPWrite = 1;
			MSPop = 0;

			RSPWrite = 0;
		 end else if(CLKCount % 3 == 0) begin
			if(CLKCount <= 209) begin // Standard Instruction Fetch
			   PCWrite = 1;
			   PCAdd = 0;
			   PCSource = 0;

			   MemRead1 = 1;
			   MemRead2 = 1;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   MemDst1 = 2'b 00;
			   MemDst2 = 2'b 00;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 1;
			   MSPop = 1;

			   RSPWrite = 0;

			   eValA = MSPOut % 10;
			   eValB = ValBOut;
			   eIR = PCOut % 10;

			   ePC = PCOut + 1;
			   eMSP = MSPOut - 1;
			   eRSP = RSPOut;
			end else if(CLKCount <= 359) begin // Load ValB
			   PCWrite = 0;

			   MemRead1 = 1;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   MemDst1 = 2'b 01;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 1;
			   MSPop = 0;

			   RSPWrite = 0;

			   eValA = ValAOut;
			   eValB = MSPOut % 10;
			   eIR = IROut;

			   ePC = PCOut;
			   eMSP = MSPOut + 1;
			   eRSP = RSPOut;
			end else if(CLKCount <= 509) begin // Store top of RS into ValA
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 1;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   MemDst2 = 2'b 01;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 0;

			   RSPWrite = 1;
			   RSPop = 1;

			   eValA = RSPOut % 10;
			   eValB = ValBOut;
			   eIR = IROut;

			   ePC = PCOut;
			   eMSP = MSPOut;
			   eRSP = RSPOut + 1;
			end else if(CLKCount <= 659) begin // jpop
			   PCWrite = 1;
			   PCSource = 1;

			   MemRead1 = 0;
			   MemRead2 = 1;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   MemDst2 = 2'b 00;
			   
			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 1;
			   MSPop = 1;

			   RSPWrite = 0;

			   eValA = MSPOut % 10;
			   eValB = ValBOut;
			   eIR = IROut;

			   ePC = ValAOut;
			   eMSP = MSPOut - 1;
			   eRSP = RSPOut;
			end else if(CLKCount <= 809) begin // Load Mem[ValA] into ValB
			   PCWrite = 0;

			   MemRead1 = 1;
			   MemRead2 = 1;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   MemDst1 = 2'b 10;
			   MemDst2 = 2'b 00;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 1;
			   MSPop = 0;

			   RSPWrite = 0;

			   eValA = MSPOut % 10;
			   eValB = ValAOut % 10;
			   eIR = IROut;

			   ePC = PCOut;
			   eMSP = MSPOut + 1;
			   eRSP = RSPOut;
			end else if(CLKCount <= 959) begin // Add some positive immediate to PC
			   PCWrite = 1;
			   PCAdd = 1;
			   PCSource = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 0;
			   MSPop = 0;

			   RSPWrite = 0;

			   SignExtOut = CLKCount % 20;

			   eValA = ValAOut;
			   eValB = ValBOut;
			   eIR = IROut;

			   ePC = PCOut + SignExtOut;
			   eMSP = MSPOut;
			   eRSP = RSPOut;
			end else if(CLKCount <= 1109) begin // Add some negative immediate to PC
			   PCWrite = 1;
			   PCAdd = 1;
			   PCSource = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;

			   MSPWrite = 0;
			   MSPop = 0;

			   RSPWrite = 0;

			   SignExtOut = -(CLKCount % 20);

			   eValA = ValAOut;
			   eValB = ValBOut;
			   eIR = IROut;

			   ePC = PCOut + SignExtOut;
			   eMSP = MSPOut;
			   eRSP = RSPOut;
			end else begin
			   $display("Finished with %d/%d errors.", errors, trials);
			   $finish;
			end
		 end else if(CLKCount % 3 == 1) begin
			if(CLKCount <= 209) begin // Standard Instruction Fetch
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 1;
			   ValAWrite = 1;
			   ValBWrite = 0;

			   MSPWrite = 0;

			   RSPWrite = 0;
			end else if(CLKCount <= 359) begin // Load ValB
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 1;

			   MSPWrite = 0;

			   RSPWrite = 0;
			end else if(CLKCount <= 509) begin // Store top of RS into ValA
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 1;
			   ValBWrite = 0;
			   
			   MSPWrite = 0;

			   RSPWrite = 0;
			end else if(CLKCount <= 659) begin // jpop
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 1;
			   ValBWrite = 0;
			   
			   MSPWrite = 0;

			   RSPWrite = 0;
			end else if(CLKCount <= 809) begin // Load Mem[ValA] into ValB
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 1;
			   ValBWrite = 1;
			   
			   MSPWrite = 0;

			   RSPWrite = 0;
			end else if(CLKCount <= 959) begin // Add some positive immediate to PC
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;
			   
			   MSPWrite = 0;

			   RSPWrite = 0;
			end else if(CLKCount <= 1109) begin // Add some negative immediate to PC
			   PCWrite = 0;

			   MemRead1 = 0;
			   MemRead2 = 0;
			   MemWrite1 = 0;
			   MemWrite2 = 0;

			   IRWrite = 0;
			   ValAWrite = 0;
			   ValBWrite = 0;
			   
			   MSPWrite = 0;

			   RSPWrite = 0;
			end
		 end else begin
			PCWrite = 0;

			MemRead1 = 0;
			MemRead2 = 0;
			MemWrite1 = 0;
			MemWrite2 = 0;

			IRWrite = 0;
			ValAWrite = 0;
			ValBWrite = 0;

			MSPWrite = 0;

			RSPWrite = 0;

			if(ValAOut != eValA) begin
			   $display("ERROR with ValAOut at CLK %d: %x != %x",
						CLKCount, ValAOut, eValA);
			   errors = errors + 1;
			end

			if(ValBOut != eValB) begin
			   $display("ERROR with ValBOut at CLK %d: %x != %x",
						CLKCount, ValBOut, eValB);
			   errors = errors + 1;
			end

			if(IROut != eIR) begin
			   $display("ERROR with IROut at CLK %d: %x != %x",
						CLKCount, IROut, eIR);
			   errors = errors + 1;
			end

			if(PCOut != ePC) begin
			   $display("ERROR with PCOut at CLK %d: %x != %x",
						CLKCount, PCOut, ePC);
			   errors = errors + 1;
			end

			if(MSPOut != eMSP) begin
			   $display("ERROR with MSPOut at CLK %d: %x != %x",
						CLKCount, MSPOut, eMSP);
			   errors = errors + 1;
			end

			if(RSPOut != eRSP) begin
			   $display("ERROR with RSPOut at CLK %d: %x != %x",
						CLKCount, RSPOut, eRSP);
			   errors = errors + 1;
			end

			trials = trials + 1;
		 end
	  end
   end

endmodule
