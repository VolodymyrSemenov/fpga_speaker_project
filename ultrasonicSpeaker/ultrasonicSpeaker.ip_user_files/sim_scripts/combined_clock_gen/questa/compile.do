vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen_clk_wiz.v" \
"../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.v" \


vlog -work xil_defaultlib \
"glbl.v"

