onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vio_fsm_opt

do {wave.do}

view wave
view structure
view signals

do {vio_fsm.udo}

run -all

quit -force
