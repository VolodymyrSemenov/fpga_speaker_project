set_property SRC_FILE_INFO {cfile:c:/Users/semenov/Desktop/speaker_project/ultrasonicSpeaker/ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.xdc rfile:../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
