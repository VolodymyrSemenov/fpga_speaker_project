create_clock -period 8 [get_ports clk]
create_generated_clock -name mclk -source [get_pins clk] -multiply_by 23 -divide_by 234 [get_pins mclk]

set_property PACKAGE_PIN R19 [get_ports {bclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {bclk}]

set_property PACKAGE_PIN R18 [get_ports {pbdat}]
set_property IOSTANDARD LVCMOS33 [get_ports {pbdat}]

set_property PACKAGE_PIN R16 [get_ports {recdat}]
set_property IOSTANDARD LVCMOS33 [get_ports {recdat}]

set_property PACKAGE_PIN Y18 [get_ports {reclrc}]
set_property IOSTANDARD LVCMOS33 [get_ports {reclrc}]

set_property PACKAGE_PIN T19 [get_ports {pblrc}]
set_property IOSTANDARD LVCMOS33 [get_ports {pblrc}]

set_property PACKAGE_PIN K17 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]

set_property PACKAGE_PIN P18 [get_ports {mute}]
set_property IOSTANDARD LVCMOS33 [get_ports {mute}]

set_property PACKAGE_PIN R17 [get_ports {mclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {mclk}]

set_property PACKAGE_PIN G15 [get_ports {start}]
set_property IOSTANDARD LVCMOS33 [get_ports {start}]

set_property PACKAGE_PIN V12 [get_ports {modulated}]
set_property IOSTANDARD LVCMOS33 [get_ports {modulated}]