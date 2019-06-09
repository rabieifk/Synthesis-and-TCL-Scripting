puts {
  A Simple Compile and Simulation Script
  Provided by H. Dorosti
}

# change the working directory
cd E:\UT\TA\VLSI-Fall 2012\mips\sample



# defining an arbitrary variable named library_file_list
set library_file_list {
  design_library {cub.v
  		multiplier_syn.v}
  test_library   {multiplier_test.v}
}

# compilation
vlib work
foreach {library file_list} $library_file_list {
  foreach file $file_list {
    vlog $file
  }
}

# simulation
eval vsim work.multiplier_test

# show the waveforms
add wave a
add wave b
add wave c

# run the simulation
run -all
