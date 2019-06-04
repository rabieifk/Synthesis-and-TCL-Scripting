
module NAND2 (A ,B , out);
  output out;
  input A,B;
  supply1 Vdd;
  supply0 Vss;
  wire m;
  pmos p1 (out,Vdd,A); 
  nmos n1 (out,m,A);
  pmos p2 (out,Vdd,B);
  nmos n2 (m,Vss,B);
 endmodule