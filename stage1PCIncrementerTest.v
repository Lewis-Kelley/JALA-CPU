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

	// Instantiate the Unit Under Test (UUT)
	stage1PCIncrementerSch uut (
		.PCAddFromSE(PCAddFromSE), 
		.PCSourceFromValA(PCSourceFromValA), 
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
		CLK = 0;
		PCWrite = 1;
		
		#100;
	
		repeat(20) begin
			CLK = 1;
			PCWrite = 1;
			
			#5;
			
			CLK = 0;
									
			$display("%d", PC);
		end
	
	end
		
endmodule
