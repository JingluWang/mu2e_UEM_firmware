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

set_clock_groups -asynchronous -group [get_clocks xaui_core/U0/gt_wrapper_i/gt0_xaui_0_gt_wrapper_i/gtxe2_i/TXOUTCLK] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks xaui_core/U0/gt_wrapper_i/gt0_xaui_0_gt_wrapper_i/gtxe2_i/TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks master_bcoclk]


set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks xaui_core/U0/gt_wrapper_i/gt0_xaui_0_gt_wrapper_i/gtxe2_i/TXOUTCLK]

set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins mmcm_imp/CLKOUT1]] -group [get_clocks clk100mhz1_p]






















set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks fmc228_dclkout0_p]







set_clock_groups -asynchronous -group [get_clocks link_imp/gt0_imp/U0/gtwizard_0_init_i/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i/TXOUTCLK] -group [get_clocks fmc228_dclkout0_p]
set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks link_imp/gt0_imp/U0/gtwizard_0_init_i/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i/TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks link_imp/gt0_imp/U0/gtwizard_0_init_i/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i/TXOUTCLK]
set_clock_groups -asynchronous -group [get_clocks link_imp/gt0_imp/U0/gtwizard_0_init_i/gtwizard_0_i/gt0_gtwizard_0_i/gtxe2_i/TXOUTCLK] -group [get_clocks clk100mhz1_p]
connect_debug_port u_ila_0/clk [get_nets [list u_ila_0_GT0_RXUSRCLK2_OUT]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_GT0_RXUSRCLK2_OUT]

connect_debug_port u_ila_0/probe3 [get_nets [list {link_imp/adc_fd[0]} {link_imp/adc_fd[1]} {link_imp/adc_fd[2]} {link_imp/adc_fd[3]}]]

connect_debug_port u_ila_0/probe1 [get_nets [list {link_imp/gtx_rx_data[0]} {link_imp/gtx_rx_data[1]} {link_imp/gtx_rx_data[2]} {link_imp/gtx_rx_data[3]} {link_imp/gtx_rx_data[4]} {link_imp/gtx_rx_data[5]} {link_imp/gtx_rx_data[6]} {link_imp/gtx_rx_data[7]} {link_imp/gtx_rx_data[8]} {link_imp/gtx_rx_data[9]} {link_imp/gtx_rx_data[10]} {link_imp/gtx_rx_data[11]} {link_imp/gtx_rx_data[12]} {link_imp/gtx_rx_data[13]} {link_imp/gtx_rx_data[14]} {link_imp/gtx_rx_data[15]} {link_imp/gtx_rx_data[16]} {link_imp/gtx_rx_data[17]} {link_imp/gtx_rx_data[18]} {link_imp/gtx_rx_data[19]} {link_imp/gtx_rx_data[20]} {link_imp/gtx_rx_data[21]} {link_imp/gtx_rx_data[22]} {link_imp/gtx_rx_data[23]} {link_imp/gtx_rx_data[24]} {link_imp/gtx_rx_data[25]} {link_imp/gtx_rx_data[26]} {link_imp/gtx_rx_data[27]} {link_imp/gtx_rx_data[28]} {link_imp/gtx_rx_data[29]} {link_imp/gtx_rx_data[30]} {link_imp/gtx_rx_data[31]}]]

connect_debug_port u_ila_0/clk [get_nets [list link_imp/gt0_imp/U0/gt_usrclk_source/GT0_RXUSRCLK2_OUT]]
connect_debug_port u_ila_0/probe0 [get_nets [list {link_imp/gtx_tx_data[0]} {link_imp/gtx_tx_data[1]} {link_imp/gtx_tx_data[2]} {link_imp/gtx_tx_data[3]} {link_imp/gtx_tx_data[4]} {link_imp/gtx_tx_data[5]} {link_imp/gtx_tx_data[6]} {link_imp/gtx_tx_data[7]} {link_imp/gtx_tx_data[8]} {link_imp/gtx_tx_data[9]} {link_imp/gtx_tx_data[10]} {link_imp/gtx_tx_data[11]} {link_imp/gtx_tx_data[12]} {link_imp/gtx_tx_data[13]} {link_imp/gtx_tx_data[14]} {link_imp/gtx_tx_data[15]}]]
connect_debug_port u_ila_0/probe1 [get_nets [list {link_imp/gtx_rx_charisk[0]} {link_imp/gtx_rx_charisk[1]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {link_imp/gtx_tx_charisk[0]} {link_imp/gtx_tx_charisk[1]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {link_imp/gtx_rx_charisk_r[0]} {link_imp/gtx_rx_charisk_r[1]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {link_imp/send_state[0]} {link_imp/send_state[1]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {link_imp/rx_data_r[0]} {link_imp/rx_data_r[1]} {link_imp/rx_data_r[2]} {link_imp/rx_data_r[3]} {link_imp/rx_data_r[4]} {link_imp/rx_data_r[5]} {link_imp/rx_data_r[6]} {link_imp/rx_data_r[7]} {link_imp/rx_data_r[8]} {link_imp/rx_data_r[9]} {link_imp/rx_data_r[10]} {link_imp/rx_data_r[11]} {link_imp/rx_data_r[12]} {link_imp/rx_data_r[13]} {link_imp/rx_data_r[14]} {link_imp/rx_data_r[15]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list link_imp/link_ena]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_GT0_RXUSRCLK2_OUT]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {fmc228_imp/adc_fd_r[0]} {fmc228_imp/adc_fd_r[1]} {fmc228_imp/adc_fd_r[2]} {fmc228_imp/adc_fd_r[3]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
