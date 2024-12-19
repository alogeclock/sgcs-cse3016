# reset switch
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS18} [get_ports rst]

# push switch
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports clk]

# switches
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18} [get_ports x]
# set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18} [get_ports clk] # for debug, can be omitted

# LED
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports seq[0]]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports seq[1]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS18} [get_ports seq[2]]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports seq[3]]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS18} [get_ports out]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]