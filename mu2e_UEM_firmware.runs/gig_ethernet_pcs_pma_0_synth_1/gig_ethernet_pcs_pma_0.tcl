# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {2}  -id {[BD 41-1271]}  -suppress 
create_project -in_memory -part xc7k420tffg1156-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.cache/wt [current_project]
set_property parent.project_path C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_ip -quiet C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci
set_property is_locked true [get_files C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top gig_ethernet_pcs_pma_0 -part xc7k420tffg1156-2 -mode out_of_context

rename_ref -prefix_all gig_ethernet_pcs_pma_0_

write_checkpoint -force -noxdef gig_ethernet_pcs_pma_0.dcp

catch { report_utilization -file gig_ethernet_pcs_pma_0_utilization_synth.rpt -pb gig_ethernet_pcs_pma_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.runs/gig_ethernet_pcs_pma_0_synth_1/gig_ethernet_pcs_pma_0.dcp C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/Users/home/tmnguyen/mu2e_1/mu2e_1.ip_user_files/ip/gig_ethernet_pcs_pma_0]} {
  catch { 
    file copy -force C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.v C:/Users/home/tmnguyen/mu2e_1/mu2e_1.ip_user_files/ip/gig_ethernet_pcs_pma_0
  }
}

if {[file isdir C:/Users/home/tmnguyen/mu2e_1/mu2e_1.ip_user_files/ip/gig_ethernet_pcs_pma_0]} {
  catch { 
    file copy -force C:/Users/ericp/Xilinx/mu2e_monitor_firmware_original/mu2e_monitor_firmware_original/firmware_New_v2/mu2e_1.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.vhdl C:/Users/home/tmnguyen/mu2e_1/mu2e_1.ip_user_files/ip/gig_ethernet_pcs_pma_0
  }
}
