
module adder32v5 (y, c_out, a, b, cin);
output reg c_out;
output reg [31:0] y;
input cin;
input [31:0] a, b;
always @(a or b or cin)
  begin
          #63 {c_out,y} = a + b + cin;
        end
endmodule