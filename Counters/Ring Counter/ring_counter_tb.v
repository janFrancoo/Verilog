
module ring_counter_tb;

	localparam N = 5;
	reg clk;
	reg reset;
	wire [0:N-1] Q;

	ring_counter #(N) uut (clk, reset, Q);

	initial begin
			reset = 1'b0; clk = 1'b0;
		#1	reset = 1'b1;
		#100	$stop;
	end

	always #5 clk = ~clk;

endmodule
