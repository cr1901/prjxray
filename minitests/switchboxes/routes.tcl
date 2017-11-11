
set_property FIXED_ROUTE {} [get_nets]
route_design -unroute

route_via x_OBUF {INT_L_X10Y118/NR1BEG1 INT_L_X10Y119/EE2BEG0 INT_L_X12Y119/EE2BEG0 INT_L_X14Y119/SW2BEG0}
route_via y_OBUF {INT_L_X10Y116/NR1BEG1 INT_L_X10Y117/EE2BEG0 INT_L_X12Y117/EE2BEG0 INT_L_X14Y117/SW2BEG0}
route_via z_OBUF {INT_L_X10Y114/NR1BEG1 INT_L_X10Y115/EE2BEG0 INT_L_X12Y115/EE2BEG0 INT_L_X14Y115/SW2BEG0}

route_design

write_checkpoint -force routes.dcp
write_bitstream -force routes.bit
