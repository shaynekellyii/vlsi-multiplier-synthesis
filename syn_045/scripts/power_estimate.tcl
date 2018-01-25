
# fcampi@sfu.ca Sept 2013
# Post-Layout Power estimation with parasitics from Cadence & multiple SAIF files
#
# VCDs can be SAIF-ied with the command vcd2saif -input file.vcd -output file.vcd.saif -instance /e/uut

set search_path    "/ensc/fac1/fcampi/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/DB"

# Target library is the library that is used by the synthesis tool 
# in order to map the behavioral RTL logic that is being synthesized
set target_library "NangateOpenCellLibrary_fast.db"

# The synthetic library variable specified pre-designed technology independent architectures pre-packaged by Synopsys
set synthetic_library [list dw01.sldb dw02.sldb dw03.sldb \
                            dw04.sldb dw05.sldb  dw07.sldb \
			    dw_foundation.sldb ]  

# The link library must contain ALL CELLS used in the design.cOther than the two above, it shall include any IO cell, memory cell, 
# or other cell/block that the user wishes to include in the design from other sources
set link_library  [concat $target_library $synthetic_library]

# Post-Synthesis Netlist
read_verilog -netlist ./results/mulcascade.ref.v

# Post Layout Netlist : Goodbye Wireload Models  ###################
#read_verilog -netlist ../BE_045/results/verilog/mulcascade.final.v
# If you dont have the VCD, you need to add create_clock here otherwise you dont have ANY frequency
current_design mulcascade
# this one is available only after P&R in the encounter results folder. If you dont have it you can skip it
#read_parasitics ../BE_045/results/mulcascade.spef 
#####################################################################

# The analysis here can be repeated indefinitely for all VCD/SAIF files available
# If you dont have a vcd file just use the create_clock statement as described above
set VCDFILES {../sim/mulcascade.vcd.saif}

foreach file $VCDFILES {
    read_saif -input $file -instance e/uut
    report_power -analysis_effort high 
}

#exit
