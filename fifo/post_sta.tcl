read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_tech.lef
read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_stdcell.lef

read_liberty /home/sudheer/OpenROAD/test/Nangate45/Nangate45_typ.lib

read_def routed.def

read_sdc fifo.sdc

report_checks -path_delay max
report_checks -path_delay min

report_tns
report_wns
