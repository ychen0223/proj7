# Christopher Chen LAB 7 Report 
## The project consisting of four different parts to gain familarilty of designing customize IP
### part 1: Partice Designing a customized IP integrater. We will be practicing importing IP from non-viviado packages, renaming IP components, and create constaints in vivado.
The lab helped us to create the IPI subsystem design by using the Vivado IP integrator. The Vivado IP integrator allows user to create system design by connecting IP with each others. The user may interact with the system through the IP integrator canvas GUI. To practice creating the system using vivado IP integrator, We created a uart_led design using the Vivado IP integrator.  
1. first we created the project as usually. We pull the pre-existing package from github and store it at one place call training path. No board is required for this excise.
2. Reporsite the pre-existing IP packages by navigating through the IP setting, then add it in IP remository.
3. Once the remote IP packages are locallized, create a block design and uart_baud_gen_v1_0, uart_rx_ctl_v1_0, led_ctrl_v1_0, meta_harden_v1_0 (thrice), and Utility Buffer.
4. Rename each IP component respectively to its representation.
5. Connect Buffer output to all clock signals.
6. Construct system respectively.
7. regenerate, vaildate the block design once done with construction. Then, create HDL wrapper and let vivado handle the rest.
8. Create a LED constaint and run design implementation, then we are done with the block design of this project.

### Part 2: Creating and packaging customized IP
This part helps us understand how to create and package customized IP. To go through this lab, we will be observing the follow feature: Select a submodule in an RTL project and initiate IP packaging, Select a repository location to create the new IP definition, Specify basic options for IP packaging, Define IP interfaces from the ports, Specify IP customization parameters, and Add or remove files to/from many of the possible file groups during packaging.

1. lauch vivado and open pre-exisiting project
2. click on Hierarchy and see if we have any missing file.
3. Navigate to wave_gen and observe the constaints
4. set uart_tx_i0 as the top design
5. The click create and package new IP in tool manu
6. Since we have a package, then we will just edit our current package.
7. Establish customized IP directory to your training path
8. clicking on each packaging steps and observe each respective feature
9. Identification give your power to edit the IP info.
10. Compatibility sets which family this IP can be use with.
11. file group show cases the files need for to include in the IP
12. Customization provides baud rate and clock rate
13. Port and interface includes all the input and outputs. Edit and port map nessessary input and output to acceptable maps.
14. Go to summary and repack the IP.

### Part 3: Creating Custom AXI IP
This part of the lab we created a custom AXI IP block in Vivado and imported custom VHDL code to give its functionality. The custom IP will be a multiplier which the processor reads and writes over an AXI bus from the register. The multiplier will takes in two 16 bit unsigned inputs and outputs a 32 bit unsigned output.
1. create the project as usually then select VHDL as the desired language.
2. Nagivate to the tool manu and click create and packging new IP
3. Select create new AXI4 Peripheral rather than modify existing IP.
4. have Default for all the IP creation process.
5. In the flow navigator page, add source and import the VHDL code we had to the source.
6. Modify the respectively preperial at respectively sections.
7. repackage the package and create block design.
8. check if the new IP that we created is reposited to vivado in the IP repository section.
9. The drag respectively IP from the IP catlog and auto connect all the wire.
10. Generate bitstream and extract the hardware to the folder.
11. Import the extracted hardware design file to the vitis.
12. then import the existing C code to the project.
13. then connect the serial port to pre set baud rate channel.
14. observe the result.

### Part 4:


