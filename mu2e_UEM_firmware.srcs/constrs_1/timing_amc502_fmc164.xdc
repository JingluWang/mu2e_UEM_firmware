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
# create_clock -period 12.500 -name amc502_fpclkf_p -waveform {0.000 6.250} [get_ports amc502_fpclkf_p]

create_clock -period 4.000 -name amc502_fpclkg_p -waveform {0.000 2.000} [get_ports amc502_fpclkg_p]
create_clock -period 4.000 -name cha_clk_p -waveform {0.000 2.000} [get_ports cha_clk_p]
create_clock -period 4.000 -name che_clk_p -waveform {0.000 2.000} [get_ports che_clk_p]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cha_clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets che_clk]

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
set_input_delay -clock slave_sysclk -max 3.000 [get_ports amc502_fpclkf_p]
set_input_delay -clock slave_sysclk -min -1.000 [get_ports amc502_fpclkf_p]
set_input_delay -clock slave_sysclk -clock_fall -max -add_delay 3.000 [get_ports amc502_fpclkf_p]
set_input_delay -clock slave_sysclk -clock_fall -min -add_delay -1.000 [get_ports amc502_fpclkf_p]

# set_input_delay -clock amc502_fpclkg_p -max 1.250 [get_ports {cha_data_p cha_data_n che_data_p che_data_n}]
# set_input_delay -clock amc502_fpclkg_p -min 0.750 [get_ports {cha_data_p cha_data_n che_data_p che_data_n}]
# set_input_delay -clock amc502_fpclkg_p -clock_fall -max -add_delay 1.250 [get_ports {cha_data_p cha_data_n che_data_p che_data_n}]
# set_input_delay -clock amc502_fpclkg_p -clock_fall -min -add_delay 0.750 [get_ports {cha_data_p cha_data_n che_data_p che_data_n}]
# set_input_delay -clock cha_clk_p -max 1.250 [get_ports {cha_data_p cha_data_n chc_data_p chc_data_n}]
# set_input_delay -clock cha_clk_p -min 0.750 [get_ports {cha_data_p cha_data_n chc_data_p chc_data_n}]
# set_input_delay -clock cha_clk_p -clock_fall -max -add_delay 1.250 [get_ports {cha_data_p cha_data_n chc_data_p chc_data_n}]
# set_input_delay -clock cha_clk_p -clock_fall -min -add_delay 0.750 [get_ports {cha_data_p cha_data_n chc_data_p chc_data_n}]

set input_clock         cha_clk_p;
set input_clock_period  4.000;
set dv_bre              0.620;             # Data valid before the rising clock edge
set dv_are              0.540;             # Data valid after the rising clock edge
set dv_bfe              0.620;             # Data valid before the falling clock edge
set dv_afe              0.540;             # Data valid after the falling clock edge
set input_ports         {cha_data_p cha_data_n chc_data_p chc_data_n};     # List of input ports
set_input_delay -clock $input_clock -max [expr $input_clock_period/2 - $dv_bfe] [get_ports $input_ports];
set_input_delay -clock $input_clock -min $dv_are [get_ports $input_ports];
set_input_delay -clock $input_clock -max [expr $input_clock_period/2 - $dv_bre] [get_ports $input_ports] -clock_fall -add_delay;
set_input_delay -clock $input_clock -min $dv_afe [get_ports $input_ports] -clock_fall -add_delay;

#
#  Multicycle path constraints
#
set_multicycle_path -setup -end -from [get_clocks slave_bcoclk] -to [get_clocks slave_sysclk] 1
set_multicycle_path -hold -end -from [get_clocks slave_bcoclk] -to [get_clocks slave_sysclk] 0
set_multicycle_path -setup -end -from [get_clocks master_bcoclk] -to [get_clocks master_sysclk] 1
set_multicycle_path -hold -end -from [get_clocks master_bcoclk] -to [get_clocks master_sysclk] 0

#
#  False paths
#
set_false_path -from [get_cells -hier -filter { NAME =~ amc502_imp/i2c_wbuf_reg* }] -to [get_cells -hier -filter { NAME =~ amc502_imp/i2c_din_reg* }]
set_false_path -from [get_cells -hier -filter { NAME =~ amc502_imp/i2c_len_reg* }] -to [get_cells -hier -filter { NAME =~ amc502_imp/i2c_l1_imp/ulen_reg* }]


#
#  Unrelated clocks
#
set_clock_groups -asynchronous -group [get_clocks clk125mhz2_p] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks amc502_fpclka_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkb_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkc_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkd_p] -group [get_clocks clk100mhz1_p]
# set_clock_groups -asynchronous -group [get_clocks amc502_fpclkf_p] -group [get_clocks clk100mhz1_p]

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
# set_clock_groups -asynchronous -group [get_clocks amc502_fpclkf_p] -group [get_clocks slave_sysclk]

set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks master_bcoclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks slave_bcoclk]
set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks slave_sysclk]
set_clock_groups -asynchronous -group [get_clocks master_bcoclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks master_sysclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks slave_bcoclk] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks slave_sysclk] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks cha_clk_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks che_clk_p] -group [get_clocks clk100mhz1_p]

set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]]
set_clock_groups -asynchronous -group [get_clocks amc502_fpclkg_p] -group [get_clocks clk100mhz1_p]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]] -group [get_clocks clk100mhz1_p]

# set_clock_groups -asynchronous -group [get_clocks clk100mhz1_p] -group [get_clocks mmcm_imp_n_4]]



set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]] -group [get_clocks cha_clk_p]
set_clock_groups -asynchronous -group [get_clocks cha_clk_p] -group [get_clocks -of_objects [get_pins pcs_pma/U0/core_clocking_i/mmcm_adv_inst/CLKOUT0]]
set_clock_groups -asynchronous -group [get_clocks cha_clk_p] -group [get_clocks che_clk_p]
set_clock_groups -asynchronous -group [get_clocks che_clk_p] -group [get_clocks cha_clk_p]

