`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:42 02/06/2016
// Design Name:   adder16b
// Module Name:   /home/user/csse232/JALA-CPU/adder16btest.v
// Project Name:  Components
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder16btest;

	// Inputs
	reg [15:0] in_a;
	reg [15:0] in_b;
	reg op;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	adder16b uut (
		.in_a(in_a), 
		.in_b(in_b), 
		.op(op), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in_a = 0;
		in_b = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Basic tests
		
		in_a = 1;
		in_b = 1;
		
		#10;
		
		if(out != 2) begin
			$display("Adding %d and %d failed", in_a, in_b);
		end
		
		in_a = 1;
		in_b = -1;
		
		#10;
		
		if(out != 0) begin
			$display("Adding %d and %d failed", in_a, in_b);
		end
		
		// -32768
		in_a = 16'b1000_0000_0000_0000;
		in_b = 32767;
		
		#10;
		
		if($signed(out) != -1) begin
			$display("Adding %d and %d failed, instead %d", in_a, in_b, out);
		end
		
		in_a = 1;
		in_b = 32767;
		
		#10;
		
		if($signed(out) != -32768) begin
			$display("Adding %d and %d failed, instead %d", in_a, in_b, out);
		end
		
		// Subtraction
		
		op = 1;
		in_a = 1;
		in_b = 1;
		
		#10;
		
		if(out != 0) begin
			$display("Subtracting %d and %d failed", in_a, in_b);
		end
		
		in_a = 1;
		in_b = -1;
		
		#10;
		
		if(out != 2) begin
			$display("Subtracting %d and %d failed", in_a, in_b);
		end
		
		// -32768
		in_a = 16'b1000_0000_0000_0000;
		in_b = 32767;
		
		#10;
		
		if($signed(out) != 1) begin
			$display("Subtracting %d and %d failed, instead %d", in_a, in_b, out);
		end
		
		in_a = -1;
		in_b = -32768;
		
		#10;
		
		if($signed(out) != 32767) begin
			$display("Subtracting %d and %d failed, instead %d", in_a, in_b, out);
		end
		
		// Thorough tests
		
		op = 0;
		
		#10;
        
		while(in_a != 0) begin
			while(in_b != 0) begin
				if(out != in_a + in_b) begin
					$display("Adding %d and %d failed", in_a, in_b);
				end
				
				in_b = in_b + 5;
				
				#10;
			end
			
			in_a = in_a + 5;
			in_b = 1;
			#10;
		end
		
		op = 1;
		
		#10;
		
		while(in_a != 0) begin
			while(in_b != 0) begin
				if(out != in_a - in_b) begin
					$display("Subtracting %d and %d failed", in_a, in_b);
				end
				
				in_b = in_b + 5;
				
				#10;
			end
			
			in_a = in_a + 5;
			in_b = 1;
			#10;
		end

	end
      
endmodule

