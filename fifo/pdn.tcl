read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_tech.lef
read_lef /home/sudheer/OpenROAD/test/Nangate45/Nangate45_stdcell.lef

read_def tapcell.def

add_global_connection \
    -net VDD \
    -pin_pattern ^VDD$ \
    -power

add_global_connection \
    -net VSS \
    -pin_pattern ^VSS$ \
    -ground

global_connect

set_voltage_domain \
    -name CORE \
    -power VDD \
    -ground VSS

define_pdn_grid -name core -voltage_domains CORE


add_pdn_ring \
    -grid core \
    -layers {metal4 metal5} \
    -widths 1.0 \
    -spacings 0.5 \
    -core_offsets 1.0

add_pdn_connect \
    -grid core \
    -layers {metal4 metal5}

pdngen

write_def pdn.def
