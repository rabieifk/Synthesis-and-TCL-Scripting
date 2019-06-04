module testbench;
reg a,b,cin1,phi;
integer i,j;
wire y,c_out;
reg [31:0] temp;
fulladdersync m1 (a,b,cin,phi,y,c_out);
reg [31:0] input_file  [0:1000];
integer outfile;  

    initial
	    begin
		    $readmemh ("inputfarzane.txt",input_file);
			  outfile= $fopen ("output.txt"); 
			  i=0;
			  j=0;
			  cin1 = 0;
			  phi = 1 ;
			  temp = 0;
		end
	always@ (posedge phi)
		begin
			a= input_file [j][i];
			b= input_file [j+1][i];
			if (i==0)
			   cin1 = 0;
			else
			//begin
               cin1 = c_out;
		    temp[i-1]= y;
			//end
			if (i==31)
			  begin
			   temp[31] = a + b + cin1 ;
			   end
		end
	always@ (negedge phi)
		begin
		    i=i+1; 
			if (i-1==31)
			begin
			  #300 j=j+4; 
			   i=0;
			   cin1 = 0;
			   temp = 0;
			
				if ((temp != input_file[j+3]) ^ (c_out != input_file[j+2]))
				begin
				  $fwrite (outfile, "ok\n");
				end
				else
				  $fwrite (outfile, "wrongAnswer:y= %x,temp=%x  c_out=%b\n",y,temp,c_out);
				  end if;
			end   
		end	
initial
$monitor($time, "a_in1=%b,b_in2=%b, cin=%b,phi=%b,y=%b,c_out=%b" ,a,b,cin1,phi,y,c_out);
endmodule
