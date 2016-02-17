`timescale 1ns / 1ps

module BasicTest;

	// Outputs
	wire [4:0] CurrentState;
	wire [4:0] NextState;
	
	wire [15:0] PC;
	wire [15:0] MSP;
	wire [15:0] RSP;
	wire [15:0] IR;
	wire [15:0] ValA;
	wire [15:0] ValB;
	wire [15:0] Res;
	
	wire [15:0] MemA;
	wire [15:0] MemB;
	
	wire isZero;
	
	// Inputs
	reg CtrlRst;
	
	reg CLK;
	reg MemCLK;
	
	reg [1:0] CLKCount;
	integer file;
	reg [18*8:1] string;
	integer lineCount;

	// Instantiate the Unit Under Test (UUT)
	stage7FullIntegration uut (
		.CLK(CLK),
		.MemCLK(MemCLK),
		
		.CtrlRst(CtrlRst),
		.CurrentState(CurrentState),
		.NextState(NextState),
		
		.PCOut(PC),
		.MSPOut(MSP),
		.RSPOut(RSP),
		.IROut(IR),
		.ValAOut(ValA),
		.ValBOut(ValB),
		.ResOut(Res),
		
		.MemAOut(MemA),
		.MemBOut(MemB),
		
		.isZero(isZero)
	);

	// use this if your design contains sequential logic
   parameter   PERIOD = 11;
   parameter   real DUTY_CYCLE = 0.5;
   parameter   OFFSET = 10;
   	
	initial begin
		CLK = 0;
		#OFFSET;
		forever begin
			#(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = ~CLK;
			#(PERIOD*DUTY_CYCLE);
		end
	end
	
	initial begin
		MemCLK = 0;
		#OFFSET;
		forever begin
			#(PERIOD/2-(PERIOD/2*DUTY_CYCLE)) MemCLK = ~MemCLK;
			#(PERIOD/2*DUTY_CYCLE);
		end
	end
	
	initial begin
		CtrlRst = 1;
		
		CLKCount = 0;
			
		file = $fopen("../ipcore_dir/blockmem20480b.mif", "r");
		if(file == 0) begin
			$display("File was null");
			$finish;
		end
		
		lineCount = 0;
		
		while($fgets(string, file)) begin
			lineCount = lineCount + 1;
		end
				
		$display("The file had %d lines, and %d instructions", lineCount, lineCount - 10239);
		
		$fclose(file);
		
		// Set max instructions on Control
		uut.four.ctrl.maxInstructions = lineCount - 10239;
	end
	
	always @(posedge CLK) begin: TestCLK
		if(CLKCount < 3) begin
			CLKCount = CLKCount + 1;
			disable TestCLK;
		end
		
		CtrlRst = 0;
	end
      
endmodule

