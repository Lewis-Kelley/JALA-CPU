// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module stage1PCIncrementerTest;
	// Inputs
	reg [15:0] PCAddFromSE;
	reg [15:0] PCSourceFromValA;
	
	// Control
	
	reg CLK;
	reg PCWrite;
	reg PCSource;
	reg PCAdd;

	// Outputs
	wire [15:0] PC;
	
	reg [2:0] testStage;
	reg [15:0] CLKCount;
	
	reg [15:0] OldPC;

	// Instantiate the Unit Under Test (UUT)
	stage1PCIncrementerSch uut (
		.PCAddFromSE(PCAddFromSE), 
		.PCSourceFromValA(PCSourceFromValA),
		.PC(PC),
		.CLK(CLK), 
		.PCWrite(PCWrite), 
		.PCSource(PCSource),
		.PCAdd(PCAdd)
	);

	initial begin
		PCSource = 0;
		PCAdd = 0;
		
		PCAddFromSE = 0;
		PCSourceFromValA = 0;
		PCWrite = 1;
		
		testStage = 0;
		CLKCount = 0;
		
		OldPC = 0;
		
		#150;

		$display("Test Stage 1");		
	end
	
		// use this if your design contains sequential logic
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
		
		// Delay by two clock cycles
		if(CLKCount < 3) begin
			disable TestCLK;
		end
		
		if(testStage == 0) begin
			// Testing PC = PC + 1
			if(PC != CLKCount-2) begin
				$display("Error: PC was %d, but CLKCount was %d", PC, CLKCount-2);
			end
			
			if(CLKCount > 34) begin
				$display("Test Stage 2");
				testStage = 1;
				
				PCAdd = 1;
				
				PCAddFromSE = 255;
				OldPC = PC;
				
				CLKCount = 2;
			end
		end else if(testStage == 1) begin
			// Test branching (PC = PC + branch offset)
			if(PC != OldPC + PCAddFromSE) begin
				$display("Error: PC was %d, but should have been %d", PC, OldPC + PCAddFromSE);
			end
			
			OldPC = PC;
			
			if(CLKCount > 6) begin
				$display("Test Stage 3");
				
				PCSource = 1;
				
				PCSourceFromValA = 302;
				
				testStage = 2;
			end
		end else if(testStage == 2) begin
			// Test jumping (PC = jump address)
			if(PC != PCSourceFromValA) begin
				$display("Error: PC was %d, but should have been %d", PC, PCSourceFromValA);
			end
			
			$finish;
		end
	end

		
endmodule
