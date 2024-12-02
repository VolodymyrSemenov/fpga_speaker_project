set_property SRC_FILE_INFO {cfile:c:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen/combined_clock_gen_in_context.xdc rfile:../../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen/combined_clock_gen_in_context.xdc id:1 order:EARLY scoped_inst:clk_gen} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/semenov/Desktop/fpga_speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc rfile:../../../../../ultrasonicSpeaker.srcs/constrs_1/new/constraints.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 -name clk [get_ports clk]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_gen/clk_out1 -source [get_pins clk_gen/clk_in1] -edges {1 2 3} -edge_shift {0.000 36.678 73.356} [get_pins clk_gen/clk_out1]
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_gen/clk_out2 -source [get_pins clk_gen/clk_in1] -edges {1 2 3} -edge_shift {0.000 -0.949 -1.898} [get_pins clk_gen/clk_out2]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property IO_BUFFER_TYPE NONE [get_ports clk]
set_property src_info {type:SCOPED_XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_BUFFER_TYPE NONE [get_ports clk]
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property IS_IP_OOC_CELL true [get_cells clk_gen]
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 -name clk [get_ports clk]
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports bclk]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports pbdat]
set_property src_info {type:XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports recdat]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports reclrc]
set_property src_info {type:XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports pblrc]
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property src_info {type:XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports mute]
set_property src_info {type:XDC file:2 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports mclk]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports start]
set_property src_info {type:XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports modulated]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells clk_gen]
