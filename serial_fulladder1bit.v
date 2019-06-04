module serial_fulladder_p5 (out,c_out,a,b,c_in,clk);//max delay
output out,c_out;
input a,b,c_in,clk;
//wire temp , c_temp;
//reg out ,c_out;
fulladder_p2 n1 (out,c_out,a,b,c_in);
dflip_flop   d1 (c_in,c_out,~clk);
    // always@ (posedge clk)
	    // begin
		    // out = temp;
            // c_out = c_temp;			
		// end

endmodule 