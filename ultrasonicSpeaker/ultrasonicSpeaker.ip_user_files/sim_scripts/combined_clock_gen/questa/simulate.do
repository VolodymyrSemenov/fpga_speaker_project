onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib combined_clock_gen_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {combined_clock_gen.udo}

run 1000ns

quit -force
