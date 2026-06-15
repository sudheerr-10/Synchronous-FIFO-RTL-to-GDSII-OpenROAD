read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_tech.lef
read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_stdcell.lef

read_liberty /home/sudheer/OpenROAD/test/Nangate45/Nangate45_typ.lib


read_def floorplan.def

tapcell \
    -distance 14 \
    -tapcell_master TAPCELL_X1

write_def tapcell.def
