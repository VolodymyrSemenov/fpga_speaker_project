vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen_clk_wiz.v" \
"../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.v" \


vlog -work xil_defaultlib \
"glbl.v"

