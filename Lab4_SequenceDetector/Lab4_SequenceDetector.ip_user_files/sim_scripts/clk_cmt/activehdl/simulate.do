onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clk_cmt -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_cmt xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk_cmt.udo}

run -all

endsim

quit -force
