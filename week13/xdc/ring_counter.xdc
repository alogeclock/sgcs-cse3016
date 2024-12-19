# reset switch
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS18} [get_ports rst]

# push switch
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports clk]

# LED
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports out[3]]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports out[2]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS18} [get_ports out[1]]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports out[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]