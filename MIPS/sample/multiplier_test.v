module multiplier_test();
reg [3:0] a , b;
wire [7:0]c;

integer i;

multiplier M1(a , b , c);

initial begin
	for(i = 0; i < 100; i = i + 1)
	begin
		#20
		a = $random;
		b = $random;
	end
	$stop;
end

endmodule
