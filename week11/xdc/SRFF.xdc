# switches
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18} [get_ports S]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18} [get_ports R]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS18} [get_ports clk]

# LED
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports Q]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports NQ]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets Q_OBUF]