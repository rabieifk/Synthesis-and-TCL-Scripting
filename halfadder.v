module halfadder1 (a,b,y,c_out);
  output y,c_out;
  input a,b;
  wire c1,c2,c3;
  
  //delays are all in ps (FF:TT:SS)
  nand #(14.62:18.79:25.32) (	c1,a,	b);
  nand #(14.62:18.79:25.32) (	c2,a	,c1	);
  nand #(14.62:18.79:25.32) (	c3,c1,	b	);
  nand #(14.62:18.79:25.32) (	y,c2	,c3);
  nand #(14.62:18.79:25.32) (	c_out,c1	,c1);
  
endmodule