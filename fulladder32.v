

module fulladder32bits (y,c_out,a,b) ;
  output [31:0] y;
  output c_out;
  input [31:0] a;
  input [31:0] b;
  wire [30:0] c;
 
  halfadder1 m0(a[0],b[0],y[0],c[0]);
  fulladder1 m1(a[1],b[1],c[0],y[1],c[1]);
  fulladder1 m2(a[2],b[2],c[1],y[2],c[2]);
  fulladder1 m3(a[3],b[3],c[2],y[3],c[3]);
  fulladder1 m4(a[4],b[4],c[3],y[4],c[4]);
  fulladder1 m5(a[5],b[5],c[4],y[5],c[5]);
  fulladder1 m6(a[6],b[6],c[5],y[6],c[6]);
  fulladder1 m7(a[7],b[7],c[6],y[7],c[7]);
  fulladder1 m8(a[8],b[8],c[7],y[8],c[8]);
  fulladder1 m9(a[9],b[9],c[8],y[9],c[9]);
  fulladder1 m10(a[10],b[10],c[9],y[10],c[10]);
  fulladder1 m11(a[11],b[11],c[10],y[11],c[11]);
  fulladder1 m12(a[12],b[12],c[11],y[12],c[12]);
  fulladder1 m13(a[13],b[13],c[12],y[13],c[13]);
  fulladder1 m14(a[14],b[14],c[13],y[14],c[14]);
  fulladder1 m15(a[15],b[15],c[14],y[15],c[15]);
  fulladder1 m16(a[16],b[16],c[15],y[16],c[16]);
  fulladder1 m17(a[17],b[17],c[16],y[17],c[17]);
  fulladder1 m18(a[18],b[18],c[17],y[18],c[18]);
  fulladder1 m19(a[19],b[19],c[18],y[19],c[19]);
  fulladder1 m20(a[20],b[20],c[19],y[20],c[20]);
  fulladder1 m21(a[21],b[21],c[20],y[21],c[21]);
  fulladder1 m22(a[22],b[22],c[21],y[22],c[22]);
  fulladder1 m23(a[23],b[23],c[22],y[23],c[23]);
  fulladder1 m24(a[24],b[24],c[23],y[24],c[24]);
  fulladder1 m25(a[25],b[25],c[24],y[25],c[25]);
  fulladder1 m26(a[26],b[26],c[25],y[26],c[26]);
  fulladder1 m27(a[27],b[27],c[26],y[27],c[27]);
  fulladder1 m28(a[28],b[28],c[27],y[28],c[28]);
  fulladder1 m29(a[29],b[29],c[28],y[29],c[29]);
  fulladder1 m30(a[30],b[30],c[29],y[30],c[30]);
  fulladder1 m31(a[31],b[31],c[30],y[31],c_out);
  
endmodule