# switches
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18} [get_ports a[3]]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18} [get_ports a[2]]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS18} [get_ports a[1]]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS18} [get_ports a[0]]
set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVCMOS18} [get_ports b[3]]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS18} [get_ports b[2]]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS18} [get_ports b[1]]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS18} [get_ports b[0]]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS18} [get_ports cin]

# LED
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports cout]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports sum[3]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS18} [get_ports sum[2]]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports sum[1]]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS18} [get_ports sum[0]]