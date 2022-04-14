vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7

vcom -work xil_defaultlib -64 -93 \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_led_ctl_0_0/sim/UART_LED_Subsystem_led_ctl_0_0.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_meta_harden_1_0/sim/UART_LED_Subsystem_meta_harden_1_0.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_meta_harden_2_0/sim/UART_LED_Subsystem_meta_harden_2_0.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_util_ds_buf_0_0/sim/UART_LED_Subsystem_util_ds_buf_0_0.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_uart_baud_gen_0_0/sim/UART_LED_Subsystem_uart_baud_gen_0_0.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_meta_harden_0_0/sim/UART_LED_Subsystem_meta_harden_0_0.vhd" \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_uart_rx_ctl_0_0/sim/UART_LED_Subsystem_uart_rx_ctl_0_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu \
"../../../../UART_LED_Subsystem.gen/sources_1/bd/UART_LED_Subsystem/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu \
"../../../bd/UART_LED_Subsystem/ip/UART_LED_Subsystem_xlconstant_0_1/sim/UART_LED_Subsystem_xlconstant_0_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/UART_LED_Subsystem/sim/UART_LED_Subsystem.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

