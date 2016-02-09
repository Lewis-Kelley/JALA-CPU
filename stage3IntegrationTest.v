`timescale 1ns / 1ps

module stage3IntegrationTest;

   // Inputs
   reg [15:0] ShifterOut;
   reg 		  CLK;
   reg [15:0] ALUInA;
   reg [15:0] ALUInB;
   reg [3:0]  ALUop;
   reg 		  ResSource;
   reg 		  ResWrite;

   // Outputs
   wire [15:0] ResOut;
   wire 	   isZero;

   //Variables
   reg [15:0]  trials;
   reg [15:0]  errors;
   reg [15:0]  i;
   reg [15:0]  expected;
   reg [15:0]  CLKCount;

   // Instantiate the Unit Under Test (UUT)
   stage3Integration uut (
						  .ShifterOut(ShifterOut),
						  .CLK(CLK),
						  .ALUInA(ALUInA),
						  .ALUInB(ALUInB),
						  .ALUop(ALUop),
						  .ResSource(ResSource),
						  .ResWrite(ResWrite),
						  .ResOut(ResOut),
						  .isZero(isZero)
						  );

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

   // Initialize Inputs
   initial begin
	  ShifterOut = 0;
	  CLK = 0;
	  ALUInA = 0;
	  ALUInB = 0;
	  ALUop = 0;
	  ResSource = 0;
      ResWrite = 1;
	  i = 0;
      errors = 0;
      trials = 0;
	  CLKCount = 0;
	  expected = 0;
   end

   always @ (posedge CLK) begin: TestCLK
	  // Give the system 5 cycles to initialize
	  if(CLKCount < 5) begin
		 CLKCount = CLKCount + 1;
		 disable TestCLK;
	  end else begin //and
		 if(ResOut != expected) begin
   			$display("ERROR at CLK %d: %x != %x", CLKCount, ResOut, expected);
   			errors = errors + 1;
   		 end

		 CLKCount = CLKCount + 1;
		 trials = trials + 1;
		 i = i + 1;

		 if(CLKCount <=  105) begin
			expected = ALUInA & ALUInB;
			if(CLKCount == 105)
			  ALUop = 1;
		 end else if(CLKCount <= 205) begin
			expected = ALUInA | ALUInB;
			if(CLKCount == 205)
			  ALUop = 2;
		 end else if(CLKCount <= 305) begin
			expected = ALUInA + ALUInB;
			if(CLKCount == 305)
			  ALUop = 6;
		 end else if(CLKCount <= 405) begin
			expected = ALUInA - ALUInB;
			if(CLKCount == 405)
			  ALUop = 4;
		 end else if(CLKCount <= 505) begin
			expected = ALUInA < ALUInB;
			if(CLKCount == 505) begin
			   ALUop = 6;
			   ALUInA = 16'b 0000000000000000;
			   ALUInB = 16'b 0000000000000000;
			end
		 end else if(CLKCount <= 605) begin
			expected = ALUInA - ALUInB;
			if(CLKCount == 605)
			  ResSource = 1;
		 end else if(CLKCount <= 705) begin
			expected = ShifterOut;
		 end else begin
			$display("Finished with %d/%d errors.", errors, trials);
			$finish;
		 end

		 ShifterOut = CLKCount;

		 if(CLKCount < 505) begin
   			ALUInA = i * 5;
   			ALUInB = 16'h FFFF - i * 3;
		 end else if(CLKCount == 505) begin
			ALUInA = 16'b 0000000000000000;
			ALUInB = 16'b 0000000000000000;
		 end else if(CLKCount % 2 == 0) begin
			ALUInA = ALUInA + 1;
		 end else begin
			ALUInB = ALUInB + 1;
		 end

		 if(isZero != (expected == 0) && ResSource == 0) begin
			$display("ERROR at CLK %d: isZero isn't %b", CLKCount, ~isZero);
   			errors = errors + 1;
		 end
	  end
   end

endmodule
