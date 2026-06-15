read_liberty NangateOpenCellLibrary_typical.lib

read_verilog fifo_netlist.v

link_design fifo_sync

read_sdc fifo.sdc

report_checks
report_tns
report_wns
report_power
