# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/exports/design_1_wrapper.xsa}\
-out {/home/chris/workspace/sp22-e520-lab-assignment7-ychen0223/part4/software}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
