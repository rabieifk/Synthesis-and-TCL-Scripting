# Synthesis-and-TCL-Scripting

**Objective:** Changing the core of MIPS processor to add the XOR instruction and synthesis the new MIPS to calculate area, delay and power.
[Design Compiler](https://www.synopsys.com/implementation-and-signoff/rtl-synthesis-test/design-compiler-graphical.html) is a Synopsys synthesis tool. 


RTL design of a simple MIPS processor is here. then I try to modify its arithmetic and logic unit (ALU) to add one new instruction, and then synthesize the final description with your own constraints. 

XOR function is added to the code of MIPS processor which is here. This design is synthesis with Design Compiler and the accuracy of function can be evaluate. the MIPS whish is used here, has one coer with multiple unit. it is 8 bit processor with 32 bit instruction.

The file ["fib.dat"](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/blob/master/fib.dat) is the input for [exmem.v](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/blob/master/exmem.v).


Using [Modelsim](https://www.mentor.com/company/higher_ed/modelsim-student-edition) to compile MIPS:
>Vsim –do ~/mips/sim.tcl

a [sync.tcl](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/blob/master/syn1.tcl~) is created by Modelsim and put 100 to clock and use compile script in that then use it for Design Compiler.

>Dc_shell –f ~/mips/sync.tcl

In sync.tcl file with report-timing, report-power, report-area and report-constraint can calculate power, delay and area.

instaed of compile, in sync.tcl if use -compile_ultera timing_high_effort_script, store the result in a seprate file.

[slack](https://www.researchgate.net/post/Is_anyone_working_on_synopsys_tool_DC_Compiler) in a timing path,we try and bring it down to Zero. slack in clock of 6.11 will be zero in this tutorial.

help you to have more detail of your design, in sync.tcl:
>Write -format verilog -hierarchy -output /home/icic/Desktop/report/mips_syn.v
