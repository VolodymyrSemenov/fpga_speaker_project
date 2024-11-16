transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" -l xil_defaultlib \
"../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen_clk_wiz.v" \
"../../../../ultrasonicSpeaker.gen/sources_1/ip/combined_clock_gen/combined_clock_gen.v" \


vlog -work xil_defaultlib \
"glbl.v"

