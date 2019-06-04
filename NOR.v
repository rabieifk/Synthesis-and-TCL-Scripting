
module NOR2 (out ,A ,B );
  output out;
  input A,B;
  supply1 Vdd;
  supply0 Vss;
  wire m;
  pmos p1 (m,Vdd,A); 
  nmos n1 (out,Vss,A);
  pmos p2 (out,m,B);
  nmos n2 (out,Vss,B);
 endmodule