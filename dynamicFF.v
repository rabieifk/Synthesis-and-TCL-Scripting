
module dynamicFF (d,phi,q);
  input d,phi;
  output q;
  wire d1,phibar;
  trireg #(2,2,70) x;
  trireg #(2,2,70) x1;
  not (phibar,phi);
  cmos #(10:12:14,8:10:12) c1(x,d,phi,phibar);
  cmos #(10:12:14,8:10:12) c2(x1,d1,phibar,phi);
  not #(10:12:14) (d1,x);
  not #(10:12:14) (q,x1);
endmodule