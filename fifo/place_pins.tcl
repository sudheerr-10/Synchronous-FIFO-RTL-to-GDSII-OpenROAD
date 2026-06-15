read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_tech.lef
read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_stdcell.lef

read_def pdn.def

make_tracks

place_pins \
    -hor_layers metal3 \
    -ver_layers metal4

write_def pins.def
