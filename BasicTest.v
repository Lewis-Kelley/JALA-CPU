`timescale 1ns / 1ps

module BasicTest;

	// Outputs
	wire [4:0] CurrentState;
	wire [4:0] NextState;
	
	wire [15:0] PC;
	wire [15:0] MSP;
	wire [15:0] RSP;
	wire [15:0] ValA;
	wire [15:0] ValB;
	
	// Inputs
	reg CtrlRst;
	
	reg CLK;
	
	reg CLKCount;

	// Instantiate the Unit Under Test (UUT)
	stage7FullIntegration uut (
		.CLK(CLK),
		
		.CtrlRst(CtrlRst),
		.CurrentState(CurrentState),
		.NextState(NextState),
		
		.PCOut(PC),
		.MSPOut(MSP),
		.RSPOut(RSP),
		.ValAOut(ValA),
		.ValBOut(ValB)
	);

	// use this if your design contains sequential logic
   parameter   PERIOD = 40;
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
		CtrlRst = 1;
	end
	
	always @(posedge CLK) begin: TestCLK
		if(CLKCount < 3) begin
			CLKCount = CLKCount + 1;
			disable TestCLK;
		end else
			CtrlRst = 0;
	end
      
endmodule

