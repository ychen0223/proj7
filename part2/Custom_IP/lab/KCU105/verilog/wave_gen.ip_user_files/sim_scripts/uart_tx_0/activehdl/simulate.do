onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uart_tx_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uart_tx_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {uart_tx_0.udo}

run -all

endsim

quit -force
