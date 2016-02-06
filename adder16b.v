module adder16b(
   input [15:0] in_a,
	input [15:0] in_b,
	input op,
		
	output reg [15:0] o
   );
	
	always @ (in_a, in_b, op) begin
		if(op == 0) begin
			o = in_a + in_b;
		end else begin
			o = in_a - in_b;
		end
	end

endmodule
