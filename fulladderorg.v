module fulladder1 (a,b,cin,y,c_out);
  output y,c_out;
  input a,b,cin;
  wire c1,c2,c3,c4,c5,c6,c7;
  
  //delays are all in ps (FF:TT:SS)
  nand #(14.62:18.79:25.32,9:15:23) ( c1,	a,	b);
  nand #(14.62:18.79:25.32,9:15:23) ( c2,	a	,c1);
  nand #(14.62:18.79:25.32,9:15:23) ( c3,	c1,	b	);
  nand #(14.62:18.79:25.32,9:15:23) ( c4,	c2	,c3);
  nand #(14.62:18.79:25.32,9:15:23) ( c5,	cin	,c4);
  nand #(14.62:18.79:25.32,9:15:23) ( c6,	c4,	c5);
  nand #(14.62:18.79:25.32,9:15:23) ( c7,	cin	,c5);
  nand #(14.62:18.79:25.32,9:15:23) ( c_out,	c5	,c1);
  nand #(14.62:18.79:25.32,9:15:23) ( y, c6	,c7);
endmodule