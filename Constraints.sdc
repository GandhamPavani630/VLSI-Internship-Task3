create_clock -period 8 [get_ports clk]

set_input_delay 1 -clock clk [all_inputs]
set_output_delay 1 -clock clk [all_outputs]
