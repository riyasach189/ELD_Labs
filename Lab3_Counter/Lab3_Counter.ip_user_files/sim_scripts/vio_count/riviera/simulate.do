onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+vio_count -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.vio_count xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {vio_count.udo}

run -all

endsim

quit -force
