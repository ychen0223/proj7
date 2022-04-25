# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/led_app_system/_ide/scripts/systemdebugger_led_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/led_app_system/_ide/scripts/systemdebugger_led_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A81DEBA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A81DEBA-23727093-0"}
fpga -file /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/led_app/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/led_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/led_app/Debug/led_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
