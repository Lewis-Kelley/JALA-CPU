`timescale 1ns / 1ps

module shift16btest;

	// Inputs
	reg [15:0] in;
	reg [4:0] amt;
	reg mode;
	reg dir;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	shift16b uut (
		.in(in), 
		.amt(amt), 
		.mode(mode), 
		.dir(dir), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		amt = 0;
		mode = 0;
		dir = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		in = 1;
		amt = 0;
		
		#10;
		
		repeat(17) begin
			if(out != in << amt) begin
				$display("Left Shifting %b by %b failed", in, amt);
			end
			
			amt = amt + 1;
			#10;
		end
		
		in = 32768;
		amt = 0;
		dir = 1;
		
		#10;
		
		repeat(17) begin
			if(out != in >> amt) begin
				$display("Right Shifting Logically %b by %b failed", in, amt);
			end
			
			amt = amt + 1;
			#10;
		end
		
		in = 32768;
		amt = 0;
		dir = 1;
		mode = 1;
		
		#10;
		
		repeat(17) begin
			if($signed(out) != $signed(in) >>> amt) begin
				$display("Right Shifting Arithmetic %b by %b failed", in, amt);
			end
			
			amt = amt + 1;
			#10;
		end
		
		$finish;

	end
      
endmodule

