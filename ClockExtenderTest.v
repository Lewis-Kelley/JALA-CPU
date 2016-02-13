`timescale 1ns / 1ps

// Verilog Test Fixture created by ISE for module: ClockExtender


module ClockExtenderTest;

	// Inputs
	reg clk;

	// Outputs
	wire ExtendedClk;

	// Instantiate the Unit Under Test (UUT)
	ClockExtender uut (
		.clk(clk), 
		.ExtendedClk(ExtendedClk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
        
		// Add stimulus here
		parameter   PERIOD = 20;
		parameter   real DUTY_CYCLE = 0.5;
		parameter   OFFSET = 10;
		
		initial begin   // Clock process for CLK
			clk = 0;
			#OFFSET;
			forever begin
				#(PERIOD-(PERIOD*DUTY_CYCLE)) clk = ~clk;
				#(PERIOD*DUTY_CYCLE);
			end
		end
      
endmodule

