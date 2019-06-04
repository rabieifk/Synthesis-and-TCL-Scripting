module fulladdertest ;
    reg a,b,cin;
	  wire y,c_out;
	  fulladder1  m1 (a,b,cin,y,c_out);
	initial begin
	  $monitor($time, ,"a=%b , b=%b , cin=%cin, y=%b , c_out=%b " , a ,b , cin, y, c_out);
	  a=0 ; b=0 ; cin=0 ;
	  #100 a=0 ; b=0 ; cin=1; 
	  #100 a=0 ; b=1 ; cin=0;
	  #100 a=0 ; b=1 ; cin=1; 
	  #100 a=1 ; b=0 ; cin=0;
	  #100 a=1 ; b=0 ; cin=1;
	  #100 a=1 ; b=1 ; cin=0;
	  #100 a=1 ; b=1 ; cin=1;
	  #100 a=0 ; b=0 ; cin=0;
	  #100 a=0 ; b=0 ; cin=1;
	  #100 a=0 ; b=1 ; cin=0;
	  #100 a=0 ; b=1 ; cin=1;
	  #100 a=1 ; b=0 ; cin=0;
	  #100 a=1 ; b=0 ; cin=1;
	  #100 a=1 ; b=1 ; cin=0;
	  #100 a=1 ; b=1 ; cin=1;
	end
endmodule