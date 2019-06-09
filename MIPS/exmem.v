//-------------------------------------------------------
// Model of 256-word 8-bit memory for the mips processor. 
// Erik Brunvand
//-------------------------------------------------------
module exmem #(parameter WIDTH = 8, RAM_ADDR_BITS = 8)
   (input clk, en, memwrite,
    input [RAM_ADDR_BITS-1:0] adr,
    input [WIDTH-1:0] writedata,
    output reg [WIDTH-1:0] memdata
    );

   reg [WIDTH-1:0] mips_ram [(2**RAM_ADDR_BITS)-1:0];

 // The following $readmemh statement initializes the RAM contents 
 // via an external file (use $readmemb for binary data). The fib.dat 
 // file is a list of bytes, one per line, starting at address 0.  
 initial $readmemh("fib.dat", mips_ram);

 // The behavioral description of the RAM - note clocked behavior
   always @(negedge clk)
      if (en) begin
         if (memwrite)
            mips_ram[adr] <= writedata;
         memdata <= mips_ram[adr];
      end
endmodule
