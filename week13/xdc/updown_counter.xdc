# reset switch
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS18} [get_ports rst]

# push switch
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports clk]

# switches
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18} [get_ports up]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18} [get_ports down]

# LED
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports out[3]]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports out[2]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS18} [get_ports out[1]]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports out[0]]

# 7-segment
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS18} [get_ports seg[6]]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS18} [get_ports seg[5]]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS18} [get_ports seg[4]]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS18} [get_ports seg[3]]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS18} [get_ports seg[2]]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS18} [get_ports seg[1]]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS18} [get_ports seg[0]]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS18} [get_ports dp]
set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS18} [get_ports digit]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]