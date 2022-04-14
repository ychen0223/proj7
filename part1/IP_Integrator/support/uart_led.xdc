# Global Clock Constraints
create_clock -period 8 -name clk_pin_p [get_ports clk_pin_p]


# IO Timing Constraints
set_input_delay -clock [get_clocks clk_pin_p] 1.500 [get_ports {rst_pin rxd_pin btn_pin}]
set_input_delay -clock [get_clocks clk_pin_p] -min 1.00 [get_ports {rst_pin rxd_pin btn_pin}]
set_output_delay -clock [get_clocks clk_pin_p] 0.500 [get_ports led_pins*]
set_output_delay -clock [get_clocks clk_pin_p] -min -0.500 [get_ports led_pins*]


#Physical Constraints

set_property PACKAGE_PIN G10      [get_ports "clk_pin_p"] 
set_property IOSTANDARD  LVDS     [get_ports "clk_pin_p"] 
set_property PACKAGE_PIN F10      [get_ports "clk_pin_n"] 
set_property IOSTANDARD  LVDS     [get_ports "clk_pin_n"]


set_property PACKAGE_PIN AN8      [get_ports rst_pin]
set_property IOSTANDARD LVCMOS18  [get_ports rst_pin]
set_property PACKAGE_PIN AE10     [get_ports btn_pin]
set_property IOSTANDARD LVCMOS18  [get_ports rxd_pin]
set_property PACKAGE_PIN G25      [get_ports rxd_pin]
set_property IOSTANDARD LVCMOS18  [get_ports btn_pin]

set_property PACKAGE_PIN AP8      [get_ports "led_pins[0]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[0]"]
set_property PACKAGE_PIN H23      [get_ports "led_pins[1]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[1]"]
set_property PACKAGE_PIN P20      [get_ports "led_pins[2]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[2]"]
set_property PACKAGE_PIN P21      [get_ports "led_pins[3]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[3]"]
set_property PACKAGE_PIN N22      [get_ports "led_pins[4]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[4]"]
set_property PACKAGE_PIN M22      [get_ports "led_pins[5]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[5]"]
set_property PACKAGE_PIN R23      [get_ports "led_pins[6]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[6]"] 
set_property PACKAGE_PIN P23      [get_ports "led_pins[7]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[7]"] 


