set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]

#
#  Input clocks
#
create_clock -period 10.000 -name clk100mhz1_p -waveform {0.000 5.000} [get_ports clk100mhz1_p]
create_clock -period 8.000 -name clk125mhz2_p -waveform {0.000 4.000} [get_ports clk125mhz2_p]
create_clock -period 25.000 -name amc502_fpclka_p -waveform {0.000 12.500} [get_ports amc502_fpclka_p]
create_clock -period 25.000 -name amc502_fpclkb_p -waveform {0.000 12.500} [get_ports amc502_fpclkb_p]
create_clock -period 25.000 -name amc502_fpclkc_p -waveform {0.000 12.500} [get_ports amc502_fpclkc_p]
create_clock -period 25.000 -name amc502_fpclkd_p -waveform {0.000 12.500} [get_ports amc502_fpclkd_p]
create_clock -period 4.000 -name fmc228_dclkout0_p -waveform {0.000 2.000} [get_ports fmc228_dclkout0_p]
create_clock -period 4.000 -name fmc228_dclkout10_p -waveform {0.000 2.000} [get_ports fmc228_dclkout10_p]
create_clock -period 4.000 -name fmc228_dclkout12_p -waveform {0.000 2.000} [get_ports fmc228_dclkout12_p]
create_clock -period 4.000 -name fmc228_dclkout2_p -waveform {0.000 2.000} [get_ports fmc228_dclkout2_p]
create_clock -period 2000.000 -name fmc228_sysref11_p -waveform {0.000 1000.000} [get_ports fmc228_sysref11_p]
create_clock -period 2000.000 -name fmc228_sysref13_p -waveform {0.000 1000.000} [get_ports fmc228_sysref13_p]
create_clock -period 6.400 -name clk156_25mhz2_p -waveform {0.000 3.200} [get_ports clk156_25mhz2_p]


#
#  derived clocks
#
create_generated_clock -name master_sysclk -source [get_pins amc502_imp/master_pll_imp/CLKIN1] -multiply_by 2 -add -master_clock amc502_fpclkb_p [get_pins amc502_imp/master_pll_imp/CLKOUT1]
create_generated_clock -name master_bcoclk -source [get_pins amc502_imp/master_pll_imp/CLKIN1] -multiply_by 1 -add -master_clock amc502_fpclkb_p [get_pins amc502_imp/master_pll_imp/CLKOUT0]
create_generated_clock -name slave_sysclk -source [get_pins amc502_imp/slave_pll_imp/CLKIN1] -multiply_by 2 -add -master_clock amc502_fpclka_p [get_pins amc502_imp/slave_pll_imp/CLKOUT1]
create_generated_clock -name slave_bcoclk -source [get_pins amc502_imp/slave_pll_imp/CLKIN1] -multiply_by 1 -add -master_clock amc502_fpclka_p [get_pins amc502_imp/slave_pll_imp/CLKOUT0]

#
#  Inputs
#
# set_input_delay -clock slave_sysclk -max 2.000 [get_ports amc502_fpclkf_p]
# set_input_delay -clock slave_sysclk -min 1.000 [get_ports amc502_fpclkf_p]
# set_input_delay -clock slave_sysclk -max 2.000 [get_ports amc502_fpclkf_p] -clock_fall -add_delay;
# set_input_delay -clock slave_sysclk -min 1.000 [get_ports amc502_fpclkf_p] -clock_fall -add_delay;

#
#  Outputs
#
set_output_delay -clock [get_clocks clk100mhz1_p] 0.000 [get_ports {nuled[0]}]
set_output_delay -clock [get_clocks clk100mhz1_p] 0.000 [get_ports {nuled[1]}]
set_output_delay -clock [get_clocks clk100mhz1_p] 0.000 [get_ports {nuled[2]}]
set_output_delay -clock [get_clocks clk100mhz1_p] 0.000 [get_ports {nuled[3]}]
set_output_delay -clock [get_clocks clk100mhz1_p] 0.000 [get_ports fpga_tx_uart]

#
#  Multicycle path constraints
#
set_multicycle_path -setup -end -from [get_clocks slave_bcoclk] -to [get_clocks slave_sysclk] 1
set_multicycle_path -hold -end -from [get_clocks slave_bcoclk] -to [get_clocks slave_sysclk] 1
set_multicycle_path -setup -end -from [get_clocks master_bcoclk] -to [get_clocks master_sysclk] 1
set_multicycle_path -hold -end -from [get_clocks master_bcoclk] -to [get_clocks master_sysclk] 1

#
#  False paths
#
set_false_path -from [get_cells -hier -filter { NAME =~ amc502_imp/i2c_wbuf_reg* }] -to [get_cells -hier -filter { NAME =~ amc502_imp/i2c_din_reg* }]
set_false_path -from [get_cells -hier -filter { NAME =~ amc502_imp/i2c_len_reg* }] -to [get_cells -hier -filter { NAME =~ amc502_imp/i2c_l1_imp/ulen_reg* }]


#
#  Unrelated clocks
#
set_clock_groups -asynchronous -group [get_clocks clk125mhz2_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks clk156_25mhz2_p] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks amc502_fpclka_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkb_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkc_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkd_p] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks fmc228_dclkout10_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks fmc228_dclkout12_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks fmc228_dclkout2_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks fmc228_sysref11_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks fmc228_sysref13_p] -group [get_clocks clk100mhz1_p]


set_clock_groups -asynchronous -group [get_clocks amc502_fpclka_p] -group [get_clocks amc502_fpclkb_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclka_p] -group [get_clocks amc502_fpclkc_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclka_p] -group [get_clocks amc502_fpclkd_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkb_p] -group [get_clocks amc502_fpclka_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkb_p] -group [get_clocks amc502_fpclkc_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkb_p] -group [get_clocks amc502_fpclkd_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkc_p] -group [get_clocks amc502_fpclka_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkc_p] -group [get_clocks amc502_fpclkb_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkc_p] -group [get_clocks amc502_fpclkd_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkd_p] -group [get_clocks amc502_fpclka_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkd_p] -group [get_clocks amc502_fpclkb_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkd_p] -group [get_clocks amc502_fpclkc_p]

set_clock_groups -asynchronous -group [get_clocks master_bcoclk] -group [get_clocks slave_sysclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks master_bcoclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks slave_bcoclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks slave_sysclk]
set_clock_groups -asynchronous -group [get_clocks master_bcoclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks master_sysclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks slave_sysclk] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]] -group [get_clocks fmc228_dclkout0_p]
set_clock_groups -asynchronous -group [get_clocks fmc228_dclkout0_p] -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks fmc228_dclkout0_p]

set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks master_bcoclk]

set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins mmcm_imp/CLKOUT1]] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks fmc228_dclkout0_p]

set_false_path -from [get_pins {FSM_onehot_state_reg[2]/C}] -to [get_ports {nuled[3]}]
set_false_path -from [get_pins {FSM_onehot_state_reg[3]/C}] -to [get_ports {nuled[0]}]
set_false_path -from [get_pins {FSM_onehot_state_reg[5]/C}] -to [get_ports {nuled[2]}]
set_false_path -from [get_pins {FSM_onehot_state_reg[4]/C}] -to [get_ports {nuled[1]}]
