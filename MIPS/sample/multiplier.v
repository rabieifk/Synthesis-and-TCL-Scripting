module multiplier(a , b , c);
	input signed [3:0] a;
	input signed [3:0] b;
	output reg [7:0] c;
//	input clk, reset;

//	wire 

	always@(a,b)
	begin
		c = a*b;
	end
endmodule
