puts {
  A Simple Compile and Simulation Script
  Provided by F.Rabiei
}

# change the working directory
cd /home/icic/Desktop/mips



# defining an arbitrary variable named library_file_list
set library_file_list {
  design_library {mips.v
  		exmem.v
		mipsmem.v
		}
  test_library   {top2.v}
}

# compilation
vlib work
foreach {library file_list} $library_file_list {
  foreach file $file_list {
    vlog $file
  }
}

# simulation
eval vsim work.top

# show the waveforms
add wave -r /*

# run the simulation
run -all
