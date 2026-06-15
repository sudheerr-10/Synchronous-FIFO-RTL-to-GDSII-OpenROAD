read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_tech.lef
read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_stdcell.lef

read_liberty /home/sudheer/OpenROAD/test/Nangate45/Nangate45_typ.lib

read_verilog fifo_netlist.v
link_design fifo_sync

read_sdc fifo.sdc

initialize_floorplan \
    -site FreePDK45_38x28_10R_NP_162NW_34O \
    -utilization 40 \
    -aspect_ratio 1.0 \
    -core_space 10

write_def floorplan.def
