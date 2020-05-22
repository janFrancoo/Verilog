
module binary_counter #(parameter N) (input clk, reset, enable,
				output cout, output reg [N-1:0] Q);

	always @(posedge clk or negedge reset) begin
		if (!reset) Q <= 0;
		else if (enable) Q <= Q + 1;
	end

	assign cout = &Q;

endmodule
