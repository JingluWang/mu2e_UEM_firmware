set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]

#
#  Input clocks
#
create_clock -period 10.000 -name clk100mhz1_p -waveform {0.000 5.000} [get_ports clk100mhz1_p]
create_clock -period 8.000 -name clk125mhz1_p -waveform {0.000 4.000} [get_ports clk125mhz1_p]
create_clock -period 8.000 -name clk125mhz2_p -waveform {0.000 4.000} [get_ports clk125mhz2_p]
create_clock -period 25.000 -name amc502_fpclka_p -waveform {0.000 12.500} [get_ports amc502_fpclka_p]
create_clock -period 25.000 -name amc502_fpclkb_p -waveform {0.000 12.500} [get_ports amc502_fpclkb_p]
create_clock -period 25.000 -name amc502_fpclkc_p -waveform {0.000 12.500} [get_ports amc502_fpclkc_p]
create_clock -period 25.000 -name amc502_fpclkd_p -waveform {0.000 12.500} [get_ports amc502_fpclkd_p]
create_clock -period 12.500 -name amc502_fpclkf_p -waveform {0.000 6.250} [get_ports amc502_fpclkf_p]

#
#  derived clocks
#
create_generated_clock -name master_sysclk -source [get_pins amc502_imp/master_pll_imp/CLKIN1] -multiply_by 2 -add -master_clock amc502_fpclkb_p [get_pins amc502_imp/master_pll_imp/CLKOUT1]
create_generated_clock -name master_bcoclk -source [get_pins amc502_imp/master_pll_imp/CLKIN1] -multiply_by 1 -add -master_clock amc502_fpclkb_p [get_pins amc502_imp/master_pll_imp/CLKOUT0]
create_generated_clock -name slave_sysclk -source [get_pins amc502_imp/slave_pll_imp/CLKIN1] -multiply_by 2 -add -master_clock amc502_fpclka_p [get_pins amc502_imp/slave_pll_imp/CLKOUT1]
create_generated_clock -name slave_bcoclk -source [get_pins amc502_imp/slave_pll_imp/CLKIN1] -multiply_by 2 -add -master_clock amc502_fpclka_p [get_pins amc502_imp/slave_pll_imp/CLKOUT0]

#
#  Inputs
#
set_input_delay -clock slave_sysclk -max 3.000 [get_ports amc502_fpclkg_p]
set_input_delay -clock slave_sysclk -min -1.000 [get_ports amc502_fpclkg_p]
set_input_delay -clock slave_sysclk -clock_fall -max -add_delay 3.000 [get_ports amc502_fpclkg_p]
set_input_delay -clock slave_sysclk -clock_fall -min -add_delay -1.000 [get_ports amc502_fpclkg_p]

#
#  Multicycle path constraints
#
set_multicycle_path -setup -end -from [get_clocks slave_bcoclk] -to [get_clocks slave_sysclk] 2
set_multicycle_path -hold -end -from [get_clocks slave_bcoclk] -to [get_clocks slave_sysclk] 1

#
#  Unrelated clocks
#
set_clock_groups -asynchronous -group [get_clocks clk125mhz2_p] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks amc502_fpclka_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkb_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkc_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkd_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkf_p] -group [get_clocks clk100mhz1_p]

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
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkf_p] -group [get_clocks slave_sysclk]

set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks master_bcoclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks slave_bcoclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks slave_sysclk]
set_clock_groups -asynchronous -group [get_clocks master_bcoclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks master_sysclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks slave_sysclk] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins pcs_pma/inst/core_clocking_i/mmcm_adv_inst/CLKOUT0]] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks -of_objects [get_pins pcs_pma/inst/core_clocking_i/mmcm_adv_inst/CLKOUT0]]

set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks link_imp/gt0_imp/U0/gtwizard_0_init_i/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i/TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks link_imp/gt0_imp/U0/gtwizard_0_init_i/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i/TXOUTCLK] -group [get_clocks clk100mhz1_p]


connect_debug_port u_ila_0/probe1 [get_nets [list {link_imp/gtx_rx_data_0[0]} {link_imp/gtx_rx_data_0[1]} {link_imp/gtx_rx_data_0[2]} {link_imp/gtx_rx_data_0[3]} {link_imp/gtx_rx_data_0[4]} {link_imp/gtx_rx_data_0[5]} {link_imp/gtx_rx_data_0[6]} {link_imp/gtx_rx_data_0[7]} {link_imp/gtx_rx_data_0[8]} {link_imp/gtx_rx_data_0[9]} {link_imp/gtx_rx_data_0[10]} {link_imp/gtx_rx_data_0[11]} {link_imp/gtx_rx_data_0[12]} {link_imp/gtx_rx_data_0[13]} {link_imp/gtx_rx_data_0[14]} {link_imp/gtx_rx_data_0[15]}]]

set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks master_bcoclk]



connect_debug_port u_ila_0/probe3 [get_nets [list amc502_imp/i2c_lllx_imp/nack]]


connect_debug_port u_ila_0/probe8 [get_nets [list amc502_imp/i2c_lllx_imp/sda_stop]]





