
module NOT1 (out ,A );
  output out;
  input A;
  
  supply1 Vdd;
  supply0 Vss;
 
  pmos p1 (out,Vdd,A); 
  nmos n1 (out,Vss,A);
 endmodule