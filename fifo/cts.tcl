read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_tech.lef
read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_stdcell.lef

read_liberty /home/sudheer/OpenROAD/test/Nangate45/Nangate45_typ.lib

read_def placed.def

read_sdc fifo.sdc

set_wire_rc -signal -layer metal3
set_wire_rc -clock  -layer metal5

clock_tree_synthesis

write_def cts.def
