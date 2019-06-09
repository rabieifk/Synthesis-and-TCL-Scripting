//-------------------------------------------------------
// Test the mips together with memory
// Erik Brunvand, University of Utah
//-------------------------------------------------------

// top level design for testing
module top #(parameter WIDTH = 8, REGBITS = 3)();

   reg clk = 0;
   reg reset = 1;

   // instantiate devices to be tested
   mips_mem dut(clk, reset);

   // initialize the test, then quit after a while
   initial
      begin
         reset <= 1; 
         #220 reset <= 0;
         #30000 $finish; 
      end

   // generate clock to sequence the tests
   always #50 clk <= ~clk; 

   // check the data on the memory interface of the mips_dut
   // Check whenever the memwrite signal is active
   always@(negedge clk)
      begin
         if(dut.memwrite)
            if(dut.adr == 8'hff & dut.writedata == 8'h0D)
               $display(``Fibonacci Simulation was successful!!!'');
            else begin 
                 $display(``Fibonacci Simulation has failed...'');
                 $display(``Data at address FF should be 0D'');
                 end
      end
endmodule
