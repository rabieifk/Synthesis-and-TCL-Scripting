
module fulladdersync (a,b,phi,y,c_out);
  input a,b,phi;
  output c_out,y;
  
  wire cin1;
    dynamicFF m1 (c_out,phi,cin1);
    fulladder1 m2 (a,b,cin1,y,c_out);
    
endmodule