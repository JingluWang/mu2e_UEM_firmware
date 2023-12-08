// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Mon Nov 13 22:03:23 2023
// Host        : Ryan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/microblaze_mcs_0/microblaze_mcs_0_sim_netlist.v
// Design      : microblaze_mcs_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k420tffg1156-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "microblaze_mcs_0,bd_fc5c,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bd_fc5c,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module microblaze_mcs_0
   (Clk,
    Reset,
    UART_Interrupt,
    FIT1_Toggle,
    INTC_Interrupt,
    INTC_IRQ,
    IO_addr_strobe,
    IO_address,
    IO_byte_enable,
    IO_read_data,
    IO_read_strobe,
    IO_ready,
    IO_write_data,
    IO_write_strobe,
    UART_rxd,
    UART_txd);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.Clk CLK" *) input Clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.Reset RST" *) input Reset;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.UART_Interrupt INTERRUPT" *) output UART_Interrupt;
  output FIT1_Toggle;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.INTC_Interrupt INTERRUPT" *) input [0:0]INTC_Interrupt;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR.INTC_IRQ INTERRUPT" *) output INTC_IRQ;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO ADDR_STROBE" *) output IO_addr_strobe;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO ADDRESS" *) output [31:0]IO_address;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO BYTE_ENABLE" *) output [3:0]IO_byte_enable;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO READ_DATA" *) input [31:0]IO_read_data;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO READ_STROBE" *) output IO_read_strobe;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO READY" *) input IO_ready;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO WRITE_DATA" *) output [31:0]IO_write_data;
  (* x_interface_info = "xilinx.com:interface:mcsio_bus:1.0 IO WRITE_STROBE" *) output IO_write_strobe;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) input UART_rxd;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;

  wire Clk;
  wire FIT1_Toggle;
  wire INTC_IRQ;
  wire [0:0]INTC_Interrupt;
  wire IO_addr_strobe;
  wire [31:0]IO_address;
  wire [3:0]IO_byte_enable;
  wire [31:0]IO_read_data;
  wire IO_read_strobe;
  wire IO_ready;
  wire [31:0]IO_write_data;
  wire IO_write_strobe;
  wire Reset;
  wire UART_Interrupt;
  wire UART_rxd;
  wire UART_txd;

  (* hw_handoff = "microblaze_mcs_0.hwdef" *) 
  microblaze_mcs_0_bd_fc5c U0
       (.Clk(Clk),
        .FIT1_Toggle(FIT1_Toggle),
        .INTC_IRQ(INTC_IRQ),
        .INTC_Interrupt(INTC_Interrupt),
        .IO_addr_strobe(IO_addr_strobe),
        .IO_address(IO_address),
        .IO_byte_enable(IO_byte_enable),
        .IO_read_data(IO_read_data),
        .IO_read_strobe(IO_read_strobe),
        .IO_ready(IO_ready),
        .IO_write_data(IO_write_data),
        .IO_write_strobe(IO_write_strobe),
        .Reset(Reset),
        .UART_Interrupt(UART_Interrupt),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd));
endmodule

(* ORIG_REF_NAME = "bd_fc5c" *) (* hw_handoff = "microblaze_mcs_0.hwdef" *) 
module microblaze_mcs_0_bd_fc5c
   (Clk,
    FIT1_Toggle,
    INTC_IRQ,
    INTC_Interrupt,
    IO_addr_strobe,
    IO_address,
    IO_byte_enable,
    IO_read_data,
    IO_read_strobe,
    IO_ready,
    IO_write_data,
    IO_write_strobe,
    Reset,
    UART_Interrupt,
    UART_rxd,
    UART_txd);
  input Clk;
  output FIT1_Toggle;
  output INTC_IRQ;
  input [0:0]INTC_Interrupt;
  output IO_addr_strobe;
  output [31:0]IO_address;
  output [3:0]IO_byte_enable;
  input [31:0]IO_read_data;
  output IO_read_strobe;
  input IO_ready;
  output [31:0]IO_write_data;
  output IO_write_strobe;
  input Reset;
  output UART_Interrupt;
  input UART_rxd;
  output UART_txd;

  wire Clk;
  wire FIT1_Toggle;
  wire INTC_IRQ;
  wire [0:0]INTC_Interrupt;
  wire IO_Rst;
  wire IO_addr_strobe;
  wire [31:0]IO_address;
  wire [3:0]IO_byte_enable;
  wire [31:0]IO_read_data;
  wire IO_read_strobe;
  wire IO_ready;
  wire [31:0]IO_write_data;
  wire IO_write_strobe;
  wire LMB_Rst;
  wire MB_Reset;
  wire Reset;
  wire UART_Interrupt;
  wire UART_rxd;
  wire UART_txd;
  wire [0:31]dlmb_ABUS;
  wire dlmb_ADDRSTROBE;
  wire [0:3]dlmb_BE;
  wire dlmb_CE;
  wire dlmb_LMB_Rst;
  wire [0:31]dlmb_READDBUS;
  wire dlmb_READSTROBE;
  wire dlmb_READY;
  wire dlmb_UE;
  wire dlmb_WAIT;
  wire [0:31]dlmb_WRITEDBUS;
  wire dlmb_WRITESTROBE;
  wire [0:31]dlmb_port_ADDR;
  wire dlmb_port_CLK;
  wire [0:31]dlmb_port_DIN;
  wire [31:0]dlmb_port_DOUT;
  wire dlmb_port_EN;
  wire dlmb_port_RST;
  wire [0:3]dlmb_port_WE;
  wire [0:31]dlmb_sl_0_ABUS;
  wire dlmb_sl_0_ADDRSTROBE;
  wire [0:3]dlmb_sl_0_BE;
  wire dlmb_sl_0_CE;
  wire [0:31]dlmb_sl_0_READDBUS;
  wire dlmb_sl_0_READSTROBE;
  wire dlmb_sl_0_READY;
  wire dlmb_sl_0_UE;
  wire dlmb_sl_0_WAIT;
  wire [0:31]dlmb_sl_0_WRITEDBUS;
  wire dlmb_sl_0_WRITESTROBE;
  wire dlmb_sl_1_CE;
  wire [0:31]dlmb_sl_1_READDBUS;
  wire dlmb_sl_1_READY;
  wire dlmb_sl_1_UE;
  wire dlmb_sl_1_WAIT;
  wire [0:31]ilmb_ABUS;
  wire ilmb_ADDRSTROBE;
  wire ilmb_CE;
  wire ilmb_LMB_Rst;
  wire [0:31]ilmb_READDBUS;
  wire ilmb_READSTROBE;
  wire ilmb_READY;
  wire ilmb_UE;
  wire ilmb_WAIT;
  wire [0:31]ilmb_port_ADDR;
  wire ilmb_port_CLK;
  wire [0:31]ilmb_port_DIN;
  wire [31:0]ilmb_port_DOUT;
  wire ilmb_port_EN;
  wire ilmb_port_RST;
  wire [0:3]ilmb_port_WE;
  wire [0:31]ilmb_sl_0_ABUS;
  wire ilmb_sl_0_ADDRSTROBE;
  wire [0:3]ilmb_sl_0_BE;
  wire ilmb_sl_0_CE;
  wire [0:31]ilmb_sl_0_READDBUS;
  wire ilmb_sl_0_READSTROBE;
  wire ilmb_sl_0_READY;
  wire ilmb_sl_0_UE;
  wire ilmb_sl_0_WAIT;
  wire [0:31]ilmb_sl_0_WRITEDBUS;
  wire ilmb_sl_0_WRITESTROBE;
  wire [0:1]iomodule_0_INTC_Irq_ACK;
  wire [31:0]iomodule_0_INTC_Irq_ADDRESS;
  wire iomodule_0_INTC_Irq_INTERRUPT;
  wire [0:0]NLW_rst_0_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_0_peripheral_aresetn_UNCONNECTED;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "lmb_v10,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_dlmb_0 dlmb
       (.LMB_ABus(dlmb_sl_0_ABUS),
        .LMB_AddrStrobe(dlmb_sl_0_ADDRSTROBE),
        .LMB_BE(dlmb_sl_0_BE),
        .LMB_CE(dlmb_CE),
        .LMB_Clk(Clk),
        .LMB_ReadDBus(dlmb_READDBUS),
        .LMB_ReadStrobe(dlmb_sl_0_READSTROBE),
        .LMB_Ready(dlmb_READY),
        .LMB_Rst(dlmb_LMB_Rst),
        .LMB_UE(dlmb_UE),
        .LMB_Wait(dlmb_WAIT),
        .LMB_WriteDBus(dlmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_sl_0_WRITESTROBE),
        .M_ABus(dlmb_ABUS),
        .M_AddrStrobe(dlmb_ADDRSTROBE),
        .M_BE(dlmb_BE),
        .M_DBus(dlmb_WRITEDBUS),
        .M_ReadStrobe(dlmb_READSTROBE),
        .M_WriteStrobe(dlmb_WRITESTROBE),
        .SYS_Rst(LMB_Rst),
        .Sl_CE({dlmb_sl_0_CE,dlmb_sl_1_CE}),
        .Sl_DBus({dlmb_sl_0_READDBUS,dlmb_sl_1_READDBUS}),
        .Sl_Ready({dlmb_sl_0_READY,dlmb_sl_1_READY}),
        .Sl_UE({dlmb_sl_0_UE,dlmb_sl_1_UE}),
        .Sl_Wait({dlmb_sl_0_WAIT,dlmb_sl_1_WAIT}));
  (* bmm_info_address_space = "byte  0x00000000 32 > bd_fc5c lmb_bram_I" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "lmb_bram_if_cntlr,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0 dlmb_cntlr
       (.BRAM_Addr_A(dlmb_port_ADDR),
        .BRAM_Clk_A(dlmb_port_CLK),
        .BRAM_Din_A({dlmb_port_DOUT[31],dlmb_port_DOUT[30],dlmb_port_DOUT[29],dlmb_port_DOUT[28],dlmb_port_DOUT[27],dlmb_port_DOUT[26],dlmb_port_DOUT[25],dlmb_port_DOUT[24],dlmb_port_DOUT[23],dlmb_port_DOUT[22],dlmb_port_DOUT[21],dlmb_port_DOUT[20],dlmb_port_DOUT[19],dlmb_port_DOUT[18],dlmb_port_DOUT[17],dlmb_port_DOUT[16],dlmb_port_DOUT[15],dlmb_port_DOUT[14],dlmb_port_DOUT[13],dlmb_port_DOUT[12],dlmb_port_DOUT[11],dlmb_port_DOUT[10],dlmb_port_DOUT[9],dlmb_port_DOUT[8],dlmb_port_DOUT[7],dlmb_port_DOUT[6],dlmb_port_DOUT[5],dlmb_port_DOUT[4],dlmb_port_DOUT[3],dlmb_port_DOUT[2],dlmb_port_DOUT[1],dlmb_port_DOUT[0]}),
        .BRAM_Dout_A(dlmb_port_DIN),
        .BRAM_EN_A(dlmb_port_EN),
        .BRAM_Rst_A(dlmb_port_RST),
        .BRAM_WEN_A(dlmb_port_WE),
        .LMB_ABus(dlmb_sl_0_ABUS),
        .LMB_AddrStrobe(dlmb_sl_0_ADDRSTROBE),
        .LMB_BE(dlmb_sl_0_BE),
        .LMB_Clk(Clk),
        .LMB_ReadStrobe(dlmb_sl_0_READSTROBE),
        .LMB_Rst(dlmb_LMB_Rst),
        .LMB_WriteDBus(dlmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_sl_0_WRITESTROBE),
        .Sl_CE(dlmb_sl_0_CE),
        .Sl_DBus(dlmb_sl_0_READDBUS),
        .Sl_Ready(dlmb_sl_0_READY),
        .Sl_UE(dlmb_sl_0_UE),
        .Sl_Wait(dlmb_sl_0_WAIT));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "lmb_v10,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_ilmb_0 ilmb
       (.LMB_ABus(ilmb_sl_0_ABUS),
        .LMB_AddrStrobe(ilmb_sl_0_ADDRSTROBE),
        .LMB_BE(ilmb_sl_0_BE),
        .LMB_CE(ilmb_CE),
        .LMB_Clk(Clk),
        .LMB_ReadDBus(ilmb_READDBUS),
        .LMB_ReadStrobe(ilmb_sl_0_READSTROBE),
        .LMB_Ready(ilmb_READY),
        .LMB_Rst(ilmb_LMB_Rst),
        .LMB_UE(ilmb_UE),
        .LMB_Wait(ilmb_WAIT),
        .LMB_WriteDBus(ilmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(ilmb_sl_0_WRITESTROBE),
        .M_ABus(ilmb_ABUS),
        .M_AddrStrobe(ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(LMB_Rst),
        .Sl_CE(ilmb_sl_0_CE),
        .Sl_DBus(ilmb_sl_0_READDBUS),
        .Sl_Ready(ilmb_sl_0_READY),
        .Sl_UE(ilmb_sl_0_UE),
        .Sl_Wait(ilmb_sl_0_WAIT));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "lmb_bram_if_cntlr,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0 ilmb_cntlr
       (.BRAM_Addr_A(ilmb_port_ADDR),
        .BRAM_Clk_A(ilmb_port_CLK),
        .BRAM_Din_A({ilmb_port_DOUT[31],ilmb_port_DOUT[30],ilmb_port_DOUT[29],ilmb_port_DOUT[28],ilmb_port_DOUT[27],ilmb_port_DOUT[26],ilmb_port_DOUT[25],ilmb_port_DOUT[24],ilmb_port_DOUT[23],ilmb_port_DOUT[22],ilmb_port_DOUT[21],ilmb_port_DOUT[20],ilmb_port_DOUT[19],ilmb_port_DOUT[18],ilmb_port_DOUT[17],ilmb_port_DOUT[16],ilmb_port_DOUT[15],ilmb_port_DOUT[14],ilmb_port_DOUT[13],ilmb_port_DOUT[12],ilmb_port_DOUT[11],ilmb_port_DOUT[10],ilmb_port_DOUT[9],ilmb_port_DOUT[8],ilmb_port_DOUT[7],ilmb_port_DOUT[6],ilmb_port_DOUT[5],ilmb_port_DOUT[4],ilmb_port_DOUT[3],ilmb_port_DOUT[2],ilmb_port_DOUT[1],ilmb_port_DOUT[0]}),
        .BRAM_Dout_A(ilmb_port_DIN),
        .BRAM_EN_A(ilmb_port_EN),
        .BRAM_Rst_A(ilmb_port_RST),
        .BRAM_WEN_A(ilmb_port_WE),
        .LMB_ABus(ilmb_sl_0_ABUS),
        .LMB_AddrStrobe(ilmb_sl_0_ADDRSTROBE),
        .LMB_BE(ilmb_sl_0_BE),
        .LMB_Clk(Clk),
        .LMB_ReadStrobe(ilmb_sl_0_READSTROBE),
        .LMB_Rst(ilmb_LMB_Rst),
        .LMB_WriteDBus(ilmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(ilmb_sl_0_WRITESTROBE),
        .Sl_CE(ilmb_sl_0_CE),
        .Sl_DBus(ilmb_sl_0_READDBUS),
        .Sl_Ready(ilmb_sl_0_READY),
        .Sl_UE(ilmb_sl_0_UE),
        .Sl_Wait(ilmb_sl_0_WAIT));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "iomodule,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_iomodule_0_0 iomodule_0
       (.Clk(Clk),
        .FIT1_Toggle(FIT1_Toggle),
        .INTC_IRQ(iomodule_0_INTC_Irq_INTERRUPT),
        .INTC_IRQ_OUT(INTC_IRQ),
        .INTC_Interrupt(INTC_Interrupt),
        .INTC_Interrupt_Address(iomodule_0_INTC_Irq_ADDRESS),
        .INTC_Processor_Ack({iomodule_0_INTC_Irq_ACK[0],iomodule_0_INTC_Irq_ACK[1]}),
        .IO_Addr_Strobe(IO_addr_strobe),
        .IO_Address(IO_address),
        .IO_Byte_Enable(IO_byte_enable),
        .IO_Read_Data(IO_read_data),
        .IO_Read_Strobe(IO_read_strobe),
        .IO_Ready(IO_ready),
        .IO_Write_Data(IO_write_data),
        .IO_Write_Strobe(IO_write_strobe),
        .LMB_ABus(dlmb_sl_0_ABUS),
        .LMB_AddrStrobe(dlmb_sl_0_ADDRSTROBE),
        .LMB_BE(dlmb_sl_0_BE),
        .LMB_ReadStrobe(dlmb_sl_0_READSTROBE),
        .LMB_WriteDBus(dlmb_sl_0_WRITEDBUS),
        .LMB_WriteStrobe(dlmb_sl_0_WRITESTROBE),
        .Rst(IO_Rst),
        .Sl_CE(dlmb_sl_1_CE),
        .Sl_DBus(dlmb_sl_1_READDBUS),
        .Sl_Ready(dlmb_sl_1_READY),
        .Sl_UE(dlmb_sl_1_UE),
        .Sl_Wait(dlmb_sl_1_WAIT),
        .UART_Interrupt(UART_Interrupt),
        .UART_Rx(UART_rxd),
        .UART_Tx(UART_txd));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_lmb_bram_I_0 lmb_bram_I
       (.addra({dlmb_port_ADDR[0],dlmb_port_ADDR[1],dlmb_port_ADDR[2],dlmb_port_ADDR[3],dlmb_port_ADDR[4],dlmb_port_ADDR[5],dlmb_port_ADDR[6],dlmb_port_ADDR[7],dlmb_port_ADDR[8],dlmb_port_ADDR[9],dlmb_port_ADDR[10],dlmb_port_ADDR[11],dlmb_port_ADDR[12],dlmb_port_ADDR[13],dlmb_port_ADDR[14],dlmb_port_ADDR[15],dlmb_port_ADDR[16],dlmb_port_ADDR[17],dlmb_port_ADDR[18],dlmb_port_ADDR[19],dlmb_port_ADDR[20],dlmb_port_ADDR[21],dlmb_port_ADDR[22],dlmb_port_ADDR[23],dlmb_port_ADDR[24],dlmb_port_ADDR[25],dlmb_port_ADDR[26],dlmb_port_ADDR[27],dlmb_port_ADDR[28],dlmb_port_ADDR[29],dlmb_port_ADDR[30],dlmb_port_ADDR[31]}),
        .addrb({ilmb_port_ADDR[0],ilmb_port_ADDR[1],ilmb_port_ADDR[2],ilmb_port_ADDR[3],ilmb_port_ADDR[4],ilmb_port_ADDR[5],ilmb_port_ADDR[6],ilmb_port_ADDR[7],ilmb_port_ADDR[8],ilmb_port_ADDR[9],ilmb_port_ADDR[10],ilmb_port_ADDR[11],ilmb_port_ADDR[12],ilmb_port_ADDR[13],ilmb_port_ADDR[14],ilmb_port_ADDR[15],ilmb_port_ADDR[16],ilmb_port_ADDR[17],ilmb_port_ADDR[18],ilmb_port_ADDR[19],ilmb_port_ADDR[20],ilmb_port_ADDR[21],ilmb_port_ADDR[22],ilmb_port_ADDR[23],ilmb_port_ADDR[24],ilmb_port_ADDR[25],ilmb_port_ADDR[26],ilmb_port_ADDR[27],ilmb_port_ADDR[28],ilmb_port_ADDR[29],ilmb_port_ADDR[30],ilmb_port_ADDR[31]}),
        .clka(dlmb_port_CLK),
        .clkb(ilmb_port_CLK),
        .dina({dlmb_port_DIN[0],dlmb_port_DIN[1],dlmb_port_DIN[2],dlmb_port_DIN[3],dlmb_port_DIN[4],dlmb_port_DIN[5],dlmb_port_DIN[6],dlmb_port_DIN[7],dlmb_port_DIN[8],dlmb_port_DIN[9],dlmb_port_DIN[10],dlmb_port_DIN[11],dlmb_port_DIN[12],dlmb_port_DIN[13],dlmb_port_DIN[14],dlmb_port_DIN[15],dlmb_port_DIN[16],dlmb_port_DIN[17],dlmb_port_DIN[18],dlmb_port_DIN[19],dlmb_port_DIN[20],dlmb_port_DIN[21],dlmb_port_DIN[22],dlmb_port_DIN[23],dlmb_port_DIN[24],dlmb_port_DIN[25],dlmb_port_DIN[26],dlmb_port_DIN[27],dlmb_port_DIN[28],dlmb_port_DIN[29],dlmb_port_DIN[30],dlmb_port_DIN[31]}),
        .dinb({ilmb_port_DIN[0],ilmb_port_DIN[1],ilmb_port_DIN[2],ilmb_port_DIN[3],ilmb_port_DIN[4],ilmb_port_DIN[5],ilmb_port_DIN[6],ilmb_port_DIN[7],ilmb_port_DIN[8],ilmb_port_DIN[9],ilmb_port_DIN[10],ilmb_port_DIN[11],ilmb_port_DIN[12],ilmb_port_DIN[13],ilmb_port_DIN[14],ilmb_port_DIN[15],ilmb_port_DIN[16],ilmb_port_DIN[17],ilmb_port_DIN[18],ilmb_port_DIN[19],ilmb_port_DIN[20],ilmb_port_DIN[21],ilmb_port_DIN[22],ilmb_port_DIN[23],ilmb_port_DIN[24],ilmb_port_DIN[25],ilmb_port_DIN[26],ilmb_port_DIN[27],ilmb_port_DIN[28],ilmb_port_DIN[29],ilmb_port_DIN[30],ilmb_port_DIN[31]}),
        .douta(dlmb_port_DOUT),
        .doutb(ilmb_port_DOUT),
        .ena(dlmb_port_EN),
        .enb(ilmb_port_EN),
        .rsta(dlmb_port_RST),
        .rstb(ilmb_port_RST),
        .wea({dlmb_port_WE[0],dlmb_port_WE[1],dlmb_port_WE[2],dlmb_port_WE[3]}),
        .web({ilmb_port_WE[0],ilmb_port_WE[1],ilmb_port_WE[2],ilmb_port_WE[3]}));
  (* bmm_info_processor = "microblaze-le > bd_fc5c dlmb_cntlr" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "MicroBlaze,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_microblaze_I_0 microblaze_I
       (.Byte_Enable(dlmb_BE),
        .Clk(Clk),
        .DCE(dlmb_CE),
        .DReady(dlmb_READY),
        .DUE(dlmb_UE),
        .DWait(dlmb_WAIT),
        .D_AS(dlmb_ADDRSTROBE),
        .Data_Addr(dlmb_ABUS),
        .Data_Read(dlmb_READDBUS),
        .Data_Write(dlmb_WRITEDBUS),
        .ICE(ilmb_CE),
        .IFetch(ilmb_READSTROBE),
        .IReady(ilmb_READY),
        .IUE(ilmb_UE),
        .IWAIT(ilmb_WAIT),
        .I_AS(ilmb_ADDRSTROBE),
        .Instr(ilmb_READDBUS),
        .Instr_Addr(ilmb_ABUS),
        .Interrupt(iomodule_0_INTC_Irq_INTERRUPT),
        .Interrupt_Ack(iomodule_0_INTC_Irq_ACK),
        .Interrupt_Address({iomodule_0_INTC_Irq_ADDRESS[31],iomodule_0_INTC_Irq_ADDRESS[30],iomodule_0_INTC_Irq_ADDRESS[29],iomodule_0_INTC_Irq_ADDRESS[28],iomodule_0_INTC_Irq_ADDRESS[27],iomodule_0_INTC_Irq_ADDRESS[26],iomodule_0_INTC_Irq_ADDRESS[25],iomodule_0_INTC_Irq_ADDRESS[24],iomodule_0_INTC_Irq_ADDRESS[23],iomodule_0_INTC_Irq_ADDRESS[22],iomodule_0_INTC_Irq_ADDRESS[21],iomodule_0_INTC_Irq_ADDRESS[20],iomodule_0_INTC_Irq_ADDRESS[19],iomodule_0_INTC_Irq_ADDRESS[18],iomodule_0_INTC_Irq_ADDRESS[17],iomodule_0_INTC_Irq_ADDRESS[16],iomodule_0_INTC_Irq_ADDRESS[15],iomodule_0_INTC_Irq_ADDRESS[14],iomodule_0_INTC_Irq_ADDRESS[13],iomodule_0_INTC_Irq_ADDRESS[12],iomodule_0_INTC_Irq_ADDRESS[11],iomodule_0_INTC_Irq_ADDRESS[10],iomodule_0_INTC_Irq_ADDRESS[9],iomodule_0_INTC_Irq_ADDRESS[8],iomodule_0_INTC_Irq_ADDRESS[7],iomodule_0_INTC_Irq_ADDRESS[6],iomodule_0_INTC_Irq_ADDRESS[5],iomodule_0_INTC_Irq_ADDRESS[4],iomodule_0_INTC_Irq_ADDRESS[3],iomodule_0_INTC_Irq_ADDRESS[2],iomodule_0_INTC_Irq_ADDRESS[1],iomodule_0_INTC_Irq_ADDRESS[0]}),
        .Read_Strobe(dlmb_READSTROBE),
        .Reset(MB_Reset),
        .Write_Strobe(dlmb_WRITESTROBE));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "proc_sys_reset,Vivado 2016.2" *) 
  microblaze_mcs_0_bd_fc5c_rst_0_0 rst_0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(LMB_Rst),
        .dcm_locked(1'b1),
        .ext_reset_in(Reset),
        .interconnect_aresetn(NLW_rst_0_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(MB_Reset),
        .peripheral_aresetn(NLW_rst_0_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(IO_Rst),
        .slowest_sync_clk(Clk));
endmodule

(* ORIG_REF_NAME = "bd_fc5c_dlmb_0" *) 
module microblaze_mcs_0_bd_fc5c_dlmb_0
   (LMB_Clk,
    SYS_Rst,
    LMB_Rst,
    M_ABus,
    M_ReadStrobe,
    M_WriteStrobe,
    M_AddrStrobe,
    M_DBus,
    M_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB_ABus,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_AddrStrobe,
    LMB_ReadDBus,
    LMB_WriteDBus,
    LMB_Ready,
    LMB_Wait,
    LMB_UE,
    LMB_CE,
    LMB_BE);
  input LMB_Clk;
  input SYS_Rst;
  output LMB_Rst;
  input [0:31]M_ABus;
  input M_ReadStrobe;
  input M_WriteStrobe;
  input M_AddrStrobe;
  input [0:31]M_DBus;
  input [0:3]M_BE;
  input [0:63]Sl_DBus;
  input [0:1]Sl_Ready;
  input [0:1]Sl_Wait;
  input [0:1]Sl_UE;
  input [0:1]Sl_CE;
  output [0:31]LMB_ABus;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output LMB_AddrStrobe;
  output [0:31]LMB_ReadDBus;
  output [0:31]LMB_WriteDBus;
  output LMB_Ready;
  output LMB_Wait;
  output LMB_UE;
  output LMB_CE;
  output [0:3]LMB_BE;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_dlmb_cntlr_0" *) 
module microblaze_mcs_0_bd_fc5c_dlmb_cntlr_0
   (LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_Addr_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Dout_A,
    BRAM_Din_A);
  input LMB_Clk;
  input LMB_Rst;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output [0:31]BRAM_Addr_A;
  output BRAM_EN_A;
  output [0:3]BRAM_WEN_A;
  output [0:31]BRAM_Dout_A;
  input [0:31]BRAM_Din_A;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_ilmb_0" *) 
module microblaze_mcs_0_bd_fc5c_ilmb_0
   (LMB_Clk,
    SYS_Rst,
    LMB_Rst,
    M_ABus,
    M_ReadStrobe,
    M_WriteStrobe,
    M_AddrStrobe,
    M_DBus,
    M_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    LMB_ABus,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_AddrStrobe,
    LMB_ReadDBus,
    LMB_WriteDBus,
    LMB_Ready,
    LMB_Wait,
    LMB_UE,
    LMB_CE,
    LMB_BE);
  input LMB_Clk;
  input SYS_Rst;
  output LMB_Rst;
  input [0:31]M_ABus;
  input M_ReadStrobe;
  input M_WriteStrobe;
  input M_AddrStrobe;
  input [0:31]M_DBus;
  input [0:3]M_BE;
  input [0:31]Sl_DBus;
  input [0:0]Sl_Ready;
  input [0:0]Sl_Wait;
  input [0:0]Sl_UE;
  input [0:0]Sl_CE;
  output [0:31]LMB_ABus;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output LMB_AddrStrobe;
  output [0:31]LMB_ReadDBus;
  output [0:31]LMB_WriteDBus;
  output LMB_Ready;
  output LMB_Wait;
  output LMB_UE;
  output LMB_CE;
  output [0:3]LMB_BE;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_ilmb_cntlr_0" *) 
module microblaze_mcs_0_bd_fc5c_ilmb_cntlr_0
   (LMB_Clk,
    LMB_Rst,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_Addr_A,
    BRAM_EN_A,
    BRAM_WEN_A,
    BRAM_Dout_A,
    BRAM_Din_A);
  input LMB_Clk;
  input LMB_Rst;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output [0:31]BRAM_Addr_A;
  output BRAM_EN_A;
  output [0:3]BRAM_WEN_A;
  output [0:31]BRAM_Dout_A;
  input [0:31]BRAM_Din_A;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_iomodule_0_0" *) 
module microblaze_mcs_0_bd_fc5c_iomodule_0_0
   (Clk,
    Rst,
    IO_Addr_Strobe,
    IO_Read_Strobe,
    IO_Write_Strobe,
    IO_Address,
    IO_Byte_Enable,
    IO_Write_Data,
    IO_Read_Data,
    IO_Ready,
    UART_Rx,
    UART_Tx,
    UART_Interrupt,
    FIT1_Toggle,
    INTC_Interrupt,
    INTC_IRQ,
    INTC_Processor_Ack,
    INTC_Interrupt_Address,
    INTC_IRQ_OUT,
    LMB_ABus,
    LMB_WriteDBus,
    LMB_AddrStrobe,
    LMB_ReadStrobe,
    LMB_WriteStrobe,
    LMB_BE,
    Sl_DBus,
    Sl_Ready,
    Sl_Wait,
    Sl_UE,
    Sl_CE);
  input Clk;
  input Rst;
  output IO_Addr_Strobe;
  output IO_Read_Strobe;
  output IO_Write_Strobe;
  output [31:0]IO_Address;
  output [3:0]IO_Byte_Enable;
  output [31:0]IO_Write_Data;
  input [31:0]IO_Read_Data;
  input IO_Ready;
  input UART_Rx;
  output UART_Tx;
  output UART_Interrupt;
  output FIT1_Toggle;
  input [0:0]INTC_Interrupt;
  output INTC_IRQ;
  input [1:0]INTC_Processor_Ack;
  output [31:0]INTC_Interrupt_Address;
  output INTC_IRQ_OUT;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_lmb_bram_I_0" *) 
module microblaze_mcs_0_bd_fc5c_lmb_bram_I_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  input clka;
  input rsta;
  input ena;
  input [3:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input [3:0]web;
  input [31:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_microblaze_I_0" *) 
module microblaze_mcs_0_bd_fc5c_microblaze_I_0
   (Clk,
    Reset,
    Interrupt,
    Interrupt_Address,
    Interrupt_Ack,
    Instr_Addr,
    Instr,
    IFetch,
    I_AS,
    IReady,
    IWAIT,
    ICE,
    IUE,
    Data_Addr,
    Data_Read,
    Data_Write,
    D_AS,
    Read_Strobe,
    Write_Strobe,
    DReady,
    DWait,
    DCE,
    DUE,
    Byte_Enable);
  input Clk;
  input Reset;
  input Interrupt;
  input [0:31]Interrupt_Address;
  output [0:1]Interrupt_Ack;
  output [0:31]Instr_Addr;
  input [0:31]Instr;
  output IFetch;
  output I_AS;
  input IReady;
  input IWAIT;
  input ICE;
  input IUE;
  output [0:31]Data_Addr;
  input [0:31]Data_Read;
  output [0:31]Data_Write;
  output D_AS;
  output Read_Strobe;
  output Write_Strobe;
  input DReady;
  input DWait;
  input DCE;
  input DUE;
  output [0:3]Byte_Enable;


endmodule

(* ORIG_REF_NAME = "bd_fc5c_rst_0_0" *) 
module microblaze_mcs_0_bd_fc5c_rst_0_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
