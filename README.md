# Synthesis-and-TCL-Scripting

**Objective:** Changing the core of the given [MIPS](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/tree/master/MIPS) processor to add the XOR function and synthesis the new processor to calculate area, delay and power.

In this projest [Design Compiler](https://www.synopsys.com/implementation-and-signoff/rtl-synthesis-test/design-compiler-graphical.html) is used as a Digital Design Synopsys® And Cadence® CAD Tools.

RTL design of a simple MIPS processor is here, then I try to modify its arithmetic and logic unit (ALU) to add one a new instruction, and then synthesize the final description with my own constraints. Synthesis process gives us the final gate level netlist of our design and I should verify its functionality.
After confirmation of verification, I analyze and estimate the performance and power consumption of my design with Synopsis CAD tool and observe the effect of constraints on power and performance.

First of all I modify the arithmetic unit and add another instruction with my own choice. I  add the instruction to ALU of my processor (for this I need to modify ALU to add one new opcode [just modify alu and alucontrol modules] to be able to execute programs including new instruction). 
I Simulate modified design with [Modelsim](https://www.mentor.com/company/higher_ed/modelsim-student-edition) and verify the functionally of the processor including my own instruction. In this step automatic simulation and verification with TCL scripts is needed. The MIPS which is used here, has one core with multiple units. it is 8 bits processor with 32 bit instructions.


I Synthesize my design with 45nm Nangate OpenCell technology library. In this process I synthesize my design with higher area optimization effort. Then I add another constraint to my script to limit the critical path and improve the performance of my design and run the synthesis process again. I Generate a second gate level netlist and report the area and performance for this design. After those steps, I simulate both generated netlists in Modelsim to verify functionality of them. After the confirmation, I generate VCD file. This file is a dump for changing signal value during simulation time. Using extracted VCD files in the previous step, I estimate power consumption for both generated netlists and report detailed results including static and dynamic power separately. Finally I compare area, power and performance results for steps above.

The file ["fib.dat"](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/blob/master/fib.dat) is the input for [exmem.v](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/blob/master/exmem.v).


Using [Modelsim] to compile MIPS with this command:
>Vsim –do ~/mips/sim.tcl

a [sync.tcl](https://github.com/rabieifk/Synthesis-and-TCL-Scripting/blob/master/syn1.tcl~) is created by Modelsim and put 100 to clock and use a compile script in that then use it for Design Compiler.

>Dc_shell –f ~/mips/sync.tcl

In sync.tcl file with report-timing, report-power, report-area and report-constraint can calculate power, delay and area.

instaed of compile, in sync.tcl if use -compile_ultera timing_high_effort_script, I can store the result in a seprate file.

[slack](https://www.researchgate.net/post/Is_anyone_working_on_synopsys_tool_DC_Compiler) in a timing path, we try and bring it down to Zero. slack in clock of 6.11 will be zero in this tutorial.

help you to have more detail of my design, in sync.tcl:
>Write -format verilog -hierarchy -output /home/icic/Desktop/report/mips_syn.v
