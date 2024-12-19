# global clock
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS18} [get_ports clk]

# reset switch
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS18} [get_ports ]

# push switch
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports ]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS18} [get_ports ]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS18} [get_ports ]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS18} [get_ports ]
set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS18} [get_ports ]

# switches
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18} [get_ports a]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18} [get_ports b]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS18} [get_ports c]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS18} [get_ports d]
set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVCMOS18} [get_ports e]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS18} [get_ports f]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS18} [get_ports g]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS18} [get_ports h]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS18} [get_ports i]
set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS18} [get_ports j]
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS18} [get_ports k]
set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS18} [get_ports l]
set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVCMOS18} [get_ports m]
set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS18} [get_ports n]
set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS18} [get_ports o]
set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS18} [get_ports p]

# LED
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports out1]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports out2]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS18} [get_ports out3]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports out4]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS18} [get_ports out5]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS18} [get_ports out6]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS18} [get_ports out7]
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS18} [get_ports out8]
set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVCMOS18} [get_ports out9]
set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS18} [get_ports out10]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS18} [get_ports out11]
set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS18} [get_ports out12]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS18} [get_ports out13]
set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVCMOS18} [get_ports out14]
set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS18} [get_ports out15]
set_property -dict {PACKAGE_PIN W12 IOSTANDARD LVCMOS18} [get_ports out16]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]