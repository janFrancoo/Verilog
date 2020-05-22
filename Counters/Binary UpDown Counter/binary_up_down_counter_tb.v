
module binary_up_down_tb;

	localparam N = 3;
	reg clk;
	reg reset;
	reg enable;
	reg mode;
	wire cout;
	wire bout;
	wire [N-1:0] Q;

	binary_up_down #(N) uut (clk, reset, enable, mode, cout, bout, Q);

	initial begin
			reset = 1'b0; enable = 1'b0; mode = 1'b1; clk = 1'b0;
		#1	reset = 1'b1; enable = 1'b1;
		@(negedge cout) #5 mode = 1'b0; 
		#200	$stop;
	end

	always #5 clk = ~clk;

endmodule
