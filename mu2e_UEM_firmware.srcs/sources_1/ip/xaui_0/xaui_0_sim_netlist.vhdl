-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Nov 13 22:00:47 2023
-- Host        : Ryan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/ryry0/Downloads/mu2e_UEM_firmware/mu2e_UEM_firmware.srcs/sources_1/ip/xaui_0/xaui_0_sim_netlist.vhdl
-- Design      : xaui_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k420tffg1156-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_cl_clocking is
  port (
    CLK : out STD_LOGIC;
    gt0_txoutclk_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_cl_clocking : entity is "xaui_0_cl_clocking";
end xaui_0_xaui_0_cl_clocking;

architecture STRUCTURE of xaui_0_xaui_0_cl_clocking is
  attribute box_type : string;
  attribute box_type of clk156_bufg_i : label is "PRIMITIVE";
begin
clk156_bufg_i: unisim.vcomponents.BUFG
     port map (
      I => gt0_txoutclk_out,
      O => CLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_cl_resets is
  port (
    \out\ : out STD_LOGIC;
    uclk_mgt_rx_reset5 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_cl_resets : entity is "xaui_0_cl_resets";
end xaui_0_xaui_0_cl_resets;

architecture STRUCTURE of xaui_0_xaui_0_cl_resets is
  signal reset156_r1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of reset156_r1 : signal is "true";
  signal reset156_r2 : STD_LOGIC;
  attribute async_reg of reset156_r2 : signal is "true";
  signal reset156_r3 : STD_LOGIC;
  attribute async_reg of reset156_r3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of reset156_r1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reset156_r1_reg : label is "yes";
  attribute ASYNC_REG_boolean of reset156_r2_reg : label is std.standard.true;
  attribute KEEP of reset156_r2_reg : label is "yes";
  attribute ASYNC_REG_boolean of reset156_r3_reg : label is std.standard.true;
  attribute KEEP of reset156_r3_reg : label is "yes";
begin
  \out\ <= reset156_r3;
reset156_r1_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => uclk_mgt_rx_reset5,
      PRE => reset,
      Q => reset156_r1
    );
reset156_r2_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => reset156_r1,
      PRE => reset,
      Q => reset156_r2
    );
reset156_r3_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => reset156_r2,
      PRE => reset,
      Q => reset156_r3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    uclk_mgt_rx_reset5 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    gt_qplllock_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
reset156_r1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync1_r(2),
      O => uclk_mgt_rx_reset5
    );
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt_qplllock_out,
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_0 is
  port (
    uclk_mgt_rx_reset0 : out STD_LOGIC;
    uclk_mgt_tx_reset0 : out STD_LOGIC;
    uclk_txsync_start_phase_align_reg : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    uclk_loopback_reset : in STD_LOGIC;
    uclk_cbm_rx_reset : in STD_LOGIC;
    uclk_mgt_powerdown_falling : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset156_r3_reg : in STD_LOGIC;
    uclk_txsync_start_phase_align_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \count_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_0 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_0;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_0 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  signal \^uclk_mgt_tx_reset0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  uclk_mgt_tx_reset0 <= \^uclk_mgt_tx_reset0\;
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count_reg[7]\(0),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
uclk_mgt_rx_reset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => \^uclk_mgt_tx_reset0\,
      I1 => p_0_in,
      I2 => uclk_loopback_reset,
      I3 => uclk_cbm_rx_reset,
      I4 => sync1_r(2),
      O => uclk_mgt_rx_reset0
    );
uclk_mgt_tx_reset_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => sync1_r(2),
      I1 => uclk_mgt_powerdown_falling,
      I2 => \out\(0),
      I3 => reset156_r3_reg,
      O => \^uclk_mgt_tx_reset0\
    );
uclk_txsync_start_phase_align_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000AAAA0000AAAA"
    )
        port map (
      I0 => uclk_txsync_start_phase_align_reg_0,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => sync1_r(2),
      I5 => Q(0),
      O => uclk_txsync_start_phase_align_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_1 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_1;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_1 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => reset,
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_2 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_2 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_2;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_2 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => gt0_rxpmareset_in,
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_3 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_3 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_3;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_3 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => gt1_rxpmareset_in,
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_4 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_4;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_4 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => gt2_rxpmareset_in,
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_5 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_5 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_5;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_5 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => gt3_rxpmareset_in,
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_6 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_6 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_6;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_6 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => signal_detect(0),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_7 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_7 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_7;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_7 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => signal_detect(0),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_8 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_8 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_8;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_8 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => signal_detect(0),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_ff_synchronizer_9 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_ff_synchronizer_9 : entity is "xaui_0_ff_synchronizer";
end xaui_0_xaui_0_ff_synchronizer_9;

architecture STRUCTURE of xaui_0_xaui_0_ff_synchronizer_9 is
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
begin
  \out\(0) <= sync1_r(2);
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => signal_detect(0),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(0),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_GT is
  port (
    gt0_drprdy : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l0_n : out STD_LOGIC;
    xaui_tx_l0_p : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txdlysresetdone_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txphaligndone_out : out STD_LOGIC;
    gt0_txphinitdone_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \uclk_mgt_rxbufstatus_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \mgt_rxdata_reg_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_codecomma_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxcharisk_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxdisperr_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxnotintable_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \core_mgt_rx_reset_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt0_drpen : in STD_LOGIC;
    gt0_drpwe : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    uclk_mgt_tx_reset : in STD_LOGIC;
    xaui_rx_l0_n : in STD_LOGIC;
    xaui_rx_l0_p : in STD_LOGIC;
    gt0_qpllclk_i : in STD_LOGIC;
    gt0_qpllrefclk_i : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt3_rxchbonden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    mgt_enable_align : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    gt0_txdlyen_in : in STD_LOGIC;
    gt0_txdlysreset_in : in STD_LOGIC;
    gt3_txelecidle_in : in STD_LOGIC;
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txphalign_in : in STD_LOGIC;
    gt0_txphinit_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHBONDO : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mgt_txdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mgt_txcharisk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    uclk_loopback_int : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_GT : entity is "xaui_0_gt_wrapper_GT";
end xaui_0_xaui_0_gt_wrapper_GT;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_GT is
  signal gt0_loopback_in3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^gt0_rxresetdone_out\ : STD_LOGIC;
  signal gtxe2_i_n_10 : STD_LOGIC;
  signal gtxe2_i_n_12 : STD_LOGIC;
  signal gtxe2_i_n_13 : STD_LOGIC;
  signal gtxe2_i_n_14 : STD_LOGIC;
  signal gtxe2_i_n_23 : STD_LOGIC;
  signal gtxe2_i_n_30 : STD_LOGIC;
  signal gtxe2_i_n_38 : STD_LOGIC;
  signal gtxe2_i_n_39 : STD_LOGIC;
  signal gtxe2_i_n_78 : STD_LOGIC;
  signal gtxe2_i_n_79 : STD_LOGIC;
  signal gtxe2_i_n_9 : STD_LOGIC;
  signal gtxe2_i_n_91 : STD_LOGIC;
  signal gtxe2_i_n_92 : STD_LOGIC;
  signal gtxe2_i_n_93 : STD_LOGIC;
  signal gtxe2_i_n_94 : STD_LOGIC;
  signal gtxe2_i_n_95 : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
  gt0_rxresetdone_out <= \^gt0_rxresetdone_out\;
\core_mgt_rx_reset[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gt0_rxresetdone_out\,
      O => \core_mgt_rx_reset_reg[0]\(0)
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0100000000",
      CHAN_BOND_SEQ_2_2 => B"0100000000",
      CHAN_BOND_SEQ_2_3 => B"0100000000",
      CHAN_BOND_SEQ_2_4 => B"0100000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 19,
      CLK_COR_MIN_LAT => 17,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100011100",
      CLK_COR_SEQ_1_2 => B"0100000000",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "TRUE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000002",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF10200020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 2,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 7,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0904",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "FALSE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 2,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 7,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXUSR",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED,
      CPLLLOCK => NLW_gtxe2_i_CPLLLOCK_UNCONNECTED,
      CPLLLOCKDETCLK => '0',
      CPLLLOCKEN => '1',
      CPLLPD => '1',
      CPLLREFCLKLOST => NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => '0',
      DMONITOROUT(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt0_drpaddr(8 downto 0),
      DRPCLK => dclk,
      DRPDI(15 downto 0) => gt0_drpdi(15 downto 0),
      DRPDO(15 downto 0) => gt0_drpdo(15 downto 0),
      DRPEN => gt0_drpen,
      DRPRDY => gt0_drprdy,
      DRPWE => gt0_drpwe,
      EYESCANDATAERROR => gt0_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt0_eyescanreset_in,
      EYESCANTRIGGER => gt0_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => '0',
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gt3_gtrxreset_in,
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => uclk_mgt_tx_reset,
      GTXRXN => xaui_rx_l0_n,
      GTXRXP => xaui_rx_l0_p,
      GTXTXN => xaui_tx_l0_n,
      GTXTXP => xaui_tx_l0_p,
      LOOPBACK(2) => gt0_loopback_in(2),
      LOOPBACK(1) => gt0_loopback_in3_out(1),
      LOOPBACK(0) => gt0_loopback_in(0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => gt0_qpllclk_i,
      QPLLREFCLK => gt0_qpllrefclk_i,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt1_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[2]\(2 downto 0),
      RXBYTEISALIGNED => gtxe2_i_n_9,
      RXBYTEREALIGN => gtxe2_i_n_10,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt0_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => gtxe2_i_n_12,
      RXCHANISALIGNED => gtxe2_i_n_13,
      RXCHANREALIGN => gtxe2_i_n_14,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => \mgt_codecomma_reg_reg[1]\(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => \mgt_rxcharisk_reg_reg[1]\(1 downto 0),
      RXCHBONDEN => gt3_rxchbonden_in,
      RXCHBONDI(4 downto 0) => RXCHBONDO(4 downto 0),
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4) => gtxe2_i_n_91,
      RXCHBONDO(3) => gtxe2_i_n_92,
      RXCHBONDO(2) => gtxe2_i_n_93,
      RXCHBONDO(1) => gtxe2_i_n_94,
      RXCHBONDO(0) => gtxe2_i_n_95,
      RXCHBONDSLAVE => '1',
      RXCLKCORCNT(1) => gtxe2_i_n_78,
      RXCLKCORCNT(0) => gtxe2_i_n_79,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt0_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => \mgt_rxdata_reg_reg[15]\(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt0_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => \mgt_rxdisperr_reg_reg[1]\(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt0_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => mgt_enable_align(0),
      RXMONITOROUT(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => \mgt_rxnotintable_reg_reg[1]\(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtxe2_i_n_23,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => mgt_enable_align(0),
      RXPCSRESET => gt0_rxpcsreset_in,
      RXPD(1) => gt3_txelecidle_in,
      RXPD(0) => gt3_txelecidle_in,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt0_rxpmareset_in,
      RXPOLARITY => gt0_rxpolarity_in,
      RXPRBSCNTRESET => gt0_rxprbscntreset_in,
      RXPRBSERR => gt0_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => gt0_rxrate_in(2 downto 0),
      RXRATEDONE => gtxe2_i_n_30,
      RXRESETDONE => \^gt0_rxresetdone_out\,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => B"11",
      RXUSERRDY => gt3_txuserrdy_in,
      RXUSRCLK => CLK,
      RXUSRCLK2 => CLK,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 2) => B"000000",
      TXCHARISK(1 downto 0) => mgt_txcharisk(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 16) => B"000000000000000000000000000000000000000000000000",
      TXDATA(15 downto 0) => mgt_txdata(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '0',
      TXDLYEN => gt0_txdlyen_in,
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => gt0_txdlysreset_in,
      TXDLYSRESETDONE => gt0_txdlysresetdone_out,
      TXDLYUPDOWN => '0',
      TXELECIDLE => gt3_txelecidle_in,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt0_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gt0_txoutclk_out,
      TXOUTCLKFABRIC => gtxe2_i_n_38,
      TXOUTCLKPCS => gtxe2_i_n_39,
      TXOUTCLKSEL(2 downto 0) => B"011",
      TXPCSRESET => gt0_txpcsreset_in,
      TXPD(1) => gt3_txelecidle_in,
      TXPD(0) => gt3_txelecidle_in,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => gt0_txphalign_in,
      TXPHALIGNDONE => gt0_txphaligndone_out,
      TXPHALIGNEN => '1',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => gt0_txphinit_in,
      TXPHINITDONE => gt0_txphinitdone_out,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt0_txpmareset_in,
      TXPOLARITY => gt0_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt0_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => D(0),
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => B"11",
      TXUSERRDY => gt3_txuserrdy_in,
      TXUSRCLK => CLK,
      TXUSRCLK2 => CLK
    );
gtxe2_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => uclk_loopback_int(0),
      I1 => gt0_loopback_in(1),
      O => gt0_loopback_in3_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_GT_20 is
  port (
    gt1_drprdy : out STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l1_n : out STD_LOGIC;
    xaui_tx_l1_p : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txdlysresetdone_out : out STD_LOGIC;
    gt1_txphaligndone_out : out STD_LOGIC;
    gt1_txphinitdone_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt1_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \uclk_mgt_rxbufstatus_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RXCHBONDO : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \mgt_rxdata_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_codecomma_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxcharisk_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxdisperr_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxnotintable_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \core_mgt_rx_reset_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt1_drpen : in STD_LOGIC;
    gt1_drpwe : in STD_LOGIC;
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    uclk_mgt_tx_reset : in STD_LOGIC;
    xaui_rx_l1_n : in STD_LOGIC;
    xaui_rx_l1_p : in STD_LOGIC;
    gt0_qpllclk_i : in STD_LOGIC;
    gt0_qpllrefclk_i : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt3_rxchbonden_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    mgt_enable_align : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    gt1_txdlysreset_in : in STD_LOGIC;
    gt3_txelecidle_in : in STD_LOGIC;
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txphalign_in : in STD_LOGIC;
    gt1_txphinit_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    uclk_mgt_rx_reset_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mgt_txdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mgt_txcharisk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    uclk_loopback_int : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_GT_20 : entity is "xaui_0_gt_wrapper_GT";
end xaui_0_xaui_0_gt_wrapper_GT_20;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_GT_20 is
  signal gt1_loopback_in2_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^gt1_rxresetdone_out\ : STD_LOGIC;
  signal gtxe2_i_n_10 : STD_LOGIC;
  signal gtxe2_i_n_12 : STD_LOGIC;
  signal gtxe2_i_n_13 : STD_LOGIC;
  signal gtxe2_i_n_14 : STD_LOGIC;
  signal gtxe2_i_n_23 : STD_LOGIC;
  signal gtxe2_i_n_30 : STD_LOGIC;
  signal gtxe2_i_n_37 : STD_LOGIC;
  signal gtxe2_i_n_38 : STD_LOGIC;
  signal gtxe2_i_n_39 : STD_LOGIC;
  signal gtxe2_i_n_78 : STD_LOGIC;
  signal gtxe2_i_n_79 : STD_LOGIC;
  signal gtxe2_i_n_9 : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
  gt1_rxresetdone_out <= \^gt1_rxresetdone_out\;
\core_mgt_rx_reset[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gt1_rxresetdone_out\,
      O => \core_mgt_rx_reset_reg[1]\(0)
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0100000000",
      CHAN_BOND_SEQ_2_2 => B"0100000000",
      CHAN_BOND_SEQ_2_3 => B"0100000000",
      CHAN_BOND_SEQ_2_4 => B"0100000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 19,
      CLK_COR_MIN_LAT => 17,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100011100",
      CLK_COR_SEQ_1_2 => B"0100000000",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "TRUE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000002",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF10200020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 2,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 7,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0904",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "FALSE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 2,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 7,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXUSR",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED,
      CPLLLOCK => NLW_gtxe2_i_CPLLLOCK_UNCONNECTED,
      CPLLLOCKDETCLK => '0',
      CPLLLOCKEN => '1',
      CPLLPD => '1',
      CPLLREFCLKLOST => NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => '0',
      DMONITOROUT(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt1_drpaddr(8 downto 0),
      DRPCLK => dclk,
      DRPDI(15 downto 0) => gt1_drpdi(15 downto 0),
      DRPDO(15 downto 0) => gt1_drpdo(15 downto 0),
      DRPEN => gt1_drpen,
      DRPRDY => gt1_drprdy,
      DRPWE => gt1_drpwe,
      EYESCANDATAERROR => gt1_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt1_eyescanreset_in,
      EYESCANTRIGGER => gt1_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => '0',
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gt3_gtrxreset_in,
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => uclk_mgt_tx_reset,
      GTXRXN => xaui_rx_l1_n,
      GTXRXP => xaui_rx_l1_p,
      GTXTXN => xaui_tx_l1_n,
      GTXTXP => xaui_tx_l1_p,
      LOOPBACK(2) => gt1_loopback_in(2),
      LOOPBACK(1) => gt1_loopback_in2_out(1),
      LOOPBACK(0) => gt1_loopback_in(0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => gt0_qpllclk_i,
      QPLLREFCLK => gt0_qpllrefclk_i,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt1_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[5]\(2 downto 0),
      RXBYTEISALIGNED => gtxe2_i_n_9,
      RXBYTEREALIGN => gtxe2_i_n_10,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt1_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => gtxe2_i_n_12,
      RXCHANISALIGNED => gtxe2_i_n_13,
      RXCHANREALIGN => gtxe2_i_n_14,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => \mgt_codecomma_reg_reg[3]\(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => \mgt_rxcharisk_reg_reg[3]\(1 downto 0),
      RXCHBONDEN => gt3_rxchbonden_in,
      RXCHBONDI(4 downto 0) => uclk_mgt_rx_reset_reg(4 downto 0),
      RXCHBONDLEVEL(2 downto 0) => B"001",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => RXCHBONDO(4 downto 0),
      RXCHBONDSLAVE => '1',
      RXCLKCORCNT(1) => gtxe2_i_n_78,
      RXCLKCORCNT(0) => gtxe2_i_n_79,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt1_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => \mgt_rxdata_reg_reg[31]\(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt1_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => \mgt_rxdisperr_reg_reg[3]\(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt1_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => mgt_enable_align(0),
      RXMONITOROUT(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => \mgt_rxnotintable_reg_reg[3]\(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtxe2_i_n_23,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => mgt_enable_align(0),
      RXPCSRESET => gt1_rxpcsreset_in,
      RXPD(1) => gt3_txelecidle_in,
      RXPD(0) => gt3_txelecidle_in,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt1_rxpmareset_in,
      RXPOLARITY => gt1_rxpolarity_in,
      RXPRBSCNTRESET => gt1_rxprbscntreset_in,
      RXPRBSERR => gt1_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => gt1_rxrate_in(2 downto 0),
      RXRATEDONE => gtxe2_i_n_30,
      RXRESETDONE => \^gt1_rxresetdone_out\,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => B"11",
      RXUSERRDY => gt3_txuserrdy_in,
      RXUSRCLK => CLK,
      RXUSRCLK2 => CLK,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 2) => B"000000",
      TXCHARISK(1 downto 0) => mgt_txcharisk(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 16) => B"000000000000000000000000000000000000000000000000",
      TXDATA(15 downto 0) => mgt_txdata(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '0',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => gt1_txdlysreset_in,
      TXDLYSRESETDONE => gt1_txdlysresetdone_out,
      TXDLYUPDOWN => '0',
      TXELECIDLE => gt3_txelecidle_in,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt1_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gtxe2_i_n_37,
      TXOUTCLKFABRIC => gtxe2_i_n_38,
      TXOUTCLKPCS => gtxe2_i_n_39,
      TXOUTCLKSEL(2 downto 0) => B"011",
      TXPCSRESET => gt1_txpcsreset_in,
      TXPD(1) => gt3_txelecidle_in,
      TXPD(0) => gt3_txelecidle_in,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => gt1_txphalign_in,
      TXPHALIGNDONE => gt1_txphaligndone_out,
      TXPHALIGNEN => '1',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => gt1_txphinit_in,
      TXPHINITDONE => gt1_txphinitdone_out,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt1_txpmareset_in,
      TXPOLARITY => gt1_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt1_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => D(0),
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => B"11",
      TXUSERRDY => gt3_txuserrdy_in,
      TXUSRCLK => CLK,
      TXUSRCLK2 => CLK
    );
\gtxe2_i_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => uclk_loopback_int(0),
      I1 => gt1_loopback_in(1),
      O => gt1_loopback_in2_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_GT_21 is
  port (
    gt2_drprdy : out STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l2_n : out STD_LOGIC;
    xaui_tx_l2_p : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txdlysresetdone_out : out STD_LOGIC;
    gt2_txphaligndone_out : out STD_LOGIC;
    gt2_txphinitdone_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt2_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \uclk_mgt_rxbufstatus_reg_reg[8]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_sync_reg1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \mgt_rxdata_reg_reg[47]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_codecomma_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxcharisk_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxdisperr_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxnotintable_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \core_mgt_rx_reset_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt2_drpen : in STD_LOGIC;
    gt2_drpwe : in STD_LOGIC;
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    uclk_mgt_tx_reset : in STD_LOGIC;
    xaui_rx_l2_n : in STD_LOGIC;
    xaui_rx_l2_p : in STD_LOGIC;
    gt0_qpllclk_i : in STD_LOGIC;
    gt0_qpllrefclk_i : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt3_rxchbonden_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    mgt_enable_align : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    gt2_txdlysreset_in : in STD_LOGIC;
    gt3_txelecidle_in : in STD_LOGIC;
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txphalign_in : in STD_LOGIC;
    gt2_txphinit_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mgt_txdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mgt_txcharisk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    uclk_loopback_int : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_GT_21 : entity is "xaui_0_gt_wrapper_GT";
end xaui_0_xaui_0_gt_wrapper_GT_21;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_GT_21 is
  signal gt2_loopback_in1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^gt2_rxresetdone_out\ : STD_LOGIC;
  signal gtxe2_i_n_10 : STD_LOGIC;
  signal gtxe2_i_n_12 : STD_LOGIC;
  signal gtxe2_i_n_13 : STD_LOGIC;
  signal gtxe2_i_n_14 : STD_LOGIC;
  signal gtxe2_i_n_23 : STD_LOGIC;
  signal gtxe2_i_n_30 : STD_LOGIC;
  signal gtxe2_i_n_37 : STD_LOGIC;
  signal gtxe2_i_n_38 : STD_LOGIC;
  signal gtxe2_i_n_39 : STD_LOGIC;
  signal gtxe2_i_n_78 : STD_LOGIC;
  signal gtxe2_i_n_79 : STD_LOGIC;
  signal gtxe2_i_n_9 : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
  gt2_rxresetdone_out <= \^gt2_rxresetdone_out\;
\core_mgt_rx_reset[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gt2_rxresetdone_out\,
      O => \core_mgt_rx_reset_reg[2]\(0)
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0100000000",
      CHAN_BOND_SEQ_2_2 => B"0100000000",
      CHAN_BOND_SEQ_2_3 => B"0100000000",
      CHAN_BOND_SEQ_2_4 => B"0100000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 19,
      CLK_COR_MIN_LAT => 17,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100011100",
      CLK_COR_SEQ_1_2 => B"0100000000",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "TRUE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000002",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF10200020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 2,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 7,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0904",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "FALSE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 2,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 7,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXUSR",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED,
      CPLLLOCK => NLW_gtxe2_i_CPLLLOCK_UNCONNECTED,
      CPLLLOCKDETCLK => '0',
      CPLLLOCKEN => '1',
      CPLLPD => '1',
      CPLLREFCLKLOST => NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => '0',
      DMONITOROUT(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt2_drpaddr(8 downto 0),
      DRPCLK => dclk,
      DRPDI(15 downto 0) => gt2_drpdi(15 downto 0),
      DRPDO(15 downto 0) => gt2_drpdo(15 downto 0),
      DRPEN => gt2_drpen,
      DRPRDY => gt2_drprdy,
      DRPWE => gt2_drpwe,
      EYESCANDATAERROR => gt2_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt2_eyescanreset_in,
      EYESCANTRIGGER => gt2_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => '0',
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gt3_gtrxreset_in,
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => uclk_mgt_tx_reset,
      GTXRXN => xaui_rx_l2_n,
      GTXRXP => xaui_rx_l2_p,
      GTXTXN => xaui_tx_l2_n,
      GTXTXP => xaui_tx_l2_p,
      LOOPBACK(2) => gt2_loopback_in(2),
      LOOPBACK(1) => gt2_loopback_in1_out(1),
      LOOPBACK(0) => gt2_loopback_in(0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => gt0_qpllclk_i,
      QPLLREFCLK => gt0_qpllrefclk_i,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt1_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[8]\(2 downto 0),
      RXBYTEISALIGNED => gtxe2_i_n_9,
      RXBYTEREALIGN => gtxe2_i_n_10,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt2_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => gtxe2_i_n_12,
      RXCHANISALIGNED => gtxe2_i_n_13,
      RXCHANREALIGN => gtxe2_i_n_14,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => \mgt_codecomma_reg_reg[5]\(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => \mgt_rxcharisk_reg_reg[5]\(1 downto 0),
      RXCHBONDEN => gt3_rxchbonden_in,
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"010",
      RXCHBONDMASTER => '1',
      RXCHBONDO(4 downto 0) => data_sync_reg1(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1) => gtxe2_i_n_78,
      RXCLKCORCNT(0) => gtxe2_i_n_79,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt2_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => \mgt_rxdata_reg_reg[47]\(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt2_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => \mgt_rxdisperr_reg_reg[5]\(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt2_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => mgt_enable_align(0),
      RXMONITOROUT(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => \mgt_rxnotintable_reg_reg[5]\(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtxe2_i_n_23,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => mgt_enable_align(0),
      RXPCSRESET => gt2_rxpcsreset_in,
      RXPD(1) => gt3_txelecidle_in,
      RXPD(0) => gt3_txelecidle_in,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt2_rxpmareset_in,
      RXPOLARITY => gt2_rxpolarity_in,
      RXPRBSCNTRESET => gt2_rxprbscntreset_in,
      RXPRBSERR => gt2_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => gt2_rxrate_in(2 downto 0),
      RXRATEDONE => gtxe2_i_n_30,
      RXRESETDONE => \^gt2_rxresetdone_out\,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => B"11",
      RXUSERRDY => gt3_txuserrdy_in,
      RXUSRCLK => CLK,
      RXUSRCLK2 => CLK,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 2) => B"000000",
      TXCHARISK(1 downto 0) => mgt_txcharisk(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 16) => B"000000000000000000000000000000000000000000000000",
      TXDATA(15 downto 0) => mgt_txdata(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '0',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => gt2_txdlysreset_in,
      TXDLYSRESETDONE => gt2_txdlysresetdone_out,
      TXDLYUPDOWN => '0',
      TXELECIDLE => gt3_txelecidle_in,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt2_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gtxe2_i_n_37,
      TXOUTCLKFABRIC => gtxe2_i_n_38,
      TXOUTCLKPCS => gtxe2_i_n_39,
      TXOUTCLKSEL(2 downto 0) => B"011",
      TXPCSRESET => gt2_txpcsreset_in,
      TXPD(1) => gt3_txelecidle_in,
      TXPD(0) => gt3_txelecidle_in,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => gt2_txphalign_in,
      TXPHALIGNDONE => gt2_txphaligndone_out,
      TXPHALIGNEN => '1',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => gt2_txphinit_in,
      TXPHINITDONE => gt2_txphinitdone_out,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt2_txpmareset_in,
      TXPOLARITY => gt2_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt2_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => D(0),
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => B"11",
      TXUSERRDY => gt3_txuserrdy_in,
      TXUSRCLK => CLK,
      TXUSRCLK2 => CLK
    );
\gtxe2_i_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => uclk_loopback_int(0),
      I1 => gt2_loopback_in(1),
      O => gt2_loopback_in1_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_GT_22 is
  port (
    gt3_drprdy : out STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l3_n : out STD_LOGIC;
    xaui_tx_l3_p : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txdlysresetdone_out : out STD_LOGIC;
    gt3_txphaligndone_out : out STD_LOGIC;
    gt3_txphinitdone_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt3_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \uclk_mgt_rxbufstatus_reg_reg[11]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \mgt_rxdata_reg_reg[63]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_codecomma_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxcharisk_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxdisperr_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mgt_rxnotintable_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \core_mgt_rx_reset_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    dclk : in STD_LOGIC;
    gt3_drpen : in STD_LOGIC;
    gt3_drpwe : in STD_LOGIC;
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    uclk_mgt_tx_reset : in STD_LOGIC;
    xaui_rx_l3_n : in STD_LOGIC;
    xaui_rx_l3_p : in STD_LOGIC;
    gt0_qpllclk_i : in STD_LOGIC;
    gt0_qpllrefclk_i : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxchbonden_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    mgt_enable_align : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    gt3_txdlysreset_in : in STD_LOGIC;
    gt3_txelecidle_in : in STD_LOGIC;
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txphalign_in : in STD_LOGIC;
    gt3_txphinit_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    uclk_mgt_rx_reset_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mgt_txdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mgt_txcharisk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    uclk_loopback_int : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_GT_22 : entity is "xaui_0_gt_wrapper_GT";
end xaui_0_xaui_0_gt_wrapper_GT_22;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_GT_22 is
  signal gt3_loopback_in0_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^gt3_rxresetdone_out\ : STD_LOGIC;
  signal gtxe2_i_n_10 : STD_LOGIC;
  signal gtxe2_i_n_12 : STD_LOGIC;
  signal gtxe2_i_n_13 : STD_LOGIC;
  signal gtxe2_i_n_14 : STD_LOGIC;
  signal gtxe2_i_n_23 : STD_LOGIC;
  signal gtxe2_i_n_30 : STD_LOGIC;
  signal gtxe2_i_n_37 : STD_LOGIC;
  signal gtxe2_i_n_38 : STD_LOGIC;
  signal gtxe2_i_n_39 : STD_LOGIC;
  signal gtxe2_i_n_78 : STD_LOGIC;
  signal gtxe2_i_n_79 : STD_LOGIC;
  signal gtxe2_i_n_9 : STD_LOGIC;
  signal gtxe2_i_n_91 : STD_LOGIC;
  signal gtxe2_i_n_92 : STD_LOGIC;
  signal gtxe2_i_n_93 : STD_LOGIC;
  signal gtxe2_i_n_94 : STD_LOGIC;
  signal gtxe2_i_n_95 : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
  gt3_rxresetdone_out <= \^gt3_rxresetdone_out\;
\core_mgt_rx_reset[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gt3_rxresetdone_out\,
      O => \core_mgt_rx_reset_reg[3]\(0)
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0100000000",
      CHAN_BOND_SEQ_2_2 => B"0100000000",
      CHAN_BOND_SEQ_2_3 => B"0100000000",
      CHAN_BOND_SEQ_2_4 => B"0100000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 19,
      CLK_COR_MIN_LAT => 17,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0100011100",
      CLK_COR_SEQ_1_2 => B"0100000000",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "TRUE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000002",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF10200020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 2,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 7,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0904",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "FALSE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 2,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 7,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXUSR",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED,
      CPLLLOCK => NLW_gtxe2_i_CPLLLOCK_UNCONNECTED,
      CPLLLOCKDETCLK => '0',
      CPLLLOCKEN => '1',
      CPLLPD => '1',
      CPLLREFCLKLOST => NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => '0',
      DMONITOROUT(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt3_drpaddr(8 downto 0),
      DRPCLK => dclk,
      DRPDI(15 downto 0) => gt3_drpdi(15 downto 0),
      DRPDO(15 downto 0) => gt3_drpdo(15 downto 0),
      DRPEN => gt3_drpen,
      DRPRDY => gt3_drprdy,
      DRPWE => gt3_drpwe,
      EYESCANDATAERROR => gt3_eyescandataerror_out,
      EYESCANMODE => '0',
      EYESCANRESET => gt3_eyescanreset_in,
      EYESCANTRIGGER => gt3_eyescantrigger_in,
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => '0',
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gt3_gtrxreset_in,
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => uclk_mgt_tx_reset,
      GTXRXN => xaui_rx_l3_n,
      GTXRXP => xaui_rx_l3_p,
      GTXTXN => xaui_tx_l3_n,
      GTXTXP => xaui_tx_l3_p,
      LOOPBACK(2) => gt3_loopback_in(2),
      LOOPBACK(1) => gt3_loopback_in0_out(1),
      LOOPBACK(0) => gt3_loopback_in(0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => gt0_qpllclk_i,
      QPLLREFCLK => gt0_qpllrefclk_i,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => gt1_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[11]\(2 downto 0),
      RXBYTEISALIGNED => gtxe2_i_n_9,
      RXBYTEREALIGN => gtxe2_i_n_10,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => gt3_rxcdrhold_in,
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => gtxe2_i_n_12,
      RXCHANISALIGNED => gtxe2_i_n_13,
      RXCHANREALIGN => gtxe2_i_n_14,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => \mgt_codecomma_reg_reg[7]\(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => \mgt_rxcharisk_reg_reg[7]\(1 downto 0),
      RXCHBONDEN => gt3_rxchbonden_in,
      RXCHBONDI(4 downto 0) => uclk_mgt_rx_reset_reg(4 downto 0),
      RXCHBONDLEVEL(2 downto 0) => B"001",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4) => gtxe2_i_n_91,
      RXCHBONDO(3) => gtxe2_i_n_92,
      RXCHBONDO(2) => gtxe2_i_n_93,
      RXCHBONDO(1) => gtxe2_i_n_94,
      RXCHBONDO(0) => gtxe2_i_n_95,
      RXCHBONDSLAVE => '1',
      RXCLKCORCNT(1) => gtxe2_i_n_78,
      RXCLKCORCNT(0) => gtxe2_i_n_79,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt3_rxcommadet_out,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => \mgt_rxdata_reg_reg[63]\(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => gt3_rxdfelpmreset_in,
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => \mgt_rxdisperr_reg_reg[7]\(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => gt3_rxlpmen_in,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => mgt_enable_align(0),
      RXMONITOROUT(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => \mgt_rxnotintable_reg_reg[7]\(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtxe2_i_n_23,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => mgt_enable_align(0),
      RXPCSRESET => gt3_rxpcsreset_in,
      RXPD(1) => gt3_txelecidle_in,
      RXPD(0) => gt3_txelecidle_in,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt3_rxpmareset_in,
      RXPOLARITY => gt3_rxpolarity_in,
      RXPRBSCNTRESET => gt3_rxprbscntreset_in,
      RXPRBSERR => gt3_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => gt3_rxrate_in(2 downto 0),
      RXRATEDONE => gtxe2_i_n_30,
      RXRESETDONE => \^gt3_rxresetdone_out\,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => B"11",
      RXUSERRDY => gt3_txuserrdy_in,
      RXUSRCLK => CLK,
      RXUSRCLK2 => CLK,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1 downto 0) => NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED(1 downto 0),
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 2) => B"000000",
      TXCHARISK(1 downto 0) => mgt_txcharisk(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 16) => B"000000000000000000000000000000000000000000000000",
      TXDATA(15 downto 0) => mgt_txdata(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      TXDIFFPD => '0',
      TXDLYBYPASS => '0',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => gt3_txdlysreset_in,
      TXDLYSRESETDONE => gt3_txdlysresetdone_out,
      TXDLYUPDOWN => '0',
      TXELECIDLE => gt3_txelecidle_in,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => gt3_txinhibit_in,
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => gtxe2_i_n_37,
      TXOUTCLKFABRIC => gtxe2_i_n_38,
      TXOUTCLKPCS => gtxe2_i_n_39,
      TXOUTCLKSEL(2 downto 0) => B"011",
      TXPCSRESET => gt3_txpcsreset_in,
      TXPD(1) => gt3_txelecidle_in,
      TXPD(0) => gt3_txelecidle_in,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => gt3_txphalign_in,
      TXPHALIGNDONE => gt3_txphaligndone_out,
      TXPHALIGNEN => '1',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => gt3_txphinit_in,
      TXPHINITDONE => gt3_txphinitdone_out,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => gt3_txpmareset_in,
      TXPOLARITY => gt3_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => gt3_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => D(0),
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => B"11",
      TXUSERRDY => gt3_txuserrdy_in,
      TXUSRCLK => CLK,
      TXUSRCLK2 => CLK
    );
\gtxe2_i_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => uclk_loopback_int(0),
      I1 => gt3_loopback_in(1),
      O => gt3_loopback_in0_out(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block is
  port (
    data_out : out STD_LOGIC;
    gt0_txdlysresetdone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt0_txdlysresetdone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_10 is
  port (
    \TXDLYEN_reg[0]\ : out STD_LOGIC;
    data_out : out STD_LOGIC;
    \FSM_onehot_tx_phalign_manual_state_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdlyen_in : in STD_LOGIC;
    gt0_txphaligndone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_10 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_10;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_10 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
\FSM_onehot_tx_phalign_manual_state[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_out\,
      I1 => Q(0),
      O => \FSM_onehot_tx_phalign_manual_state_reg[0]\
    );
\TXDLYEN[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFBF0"
    )
        port map (
      I0 => Q(0),
      I1 => \^data_out\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => gt0_txdlyen_in,
      O => \TXDLYEN_reg[0]\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt0_txphaligndone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_11 is
  port (
    data_out : out STD_LOGIC;
    gt1_txdlysresetdone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_11 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_11;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt1_txdlysresetdone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_12 is
  port (
    data_out : out STD_LOGIC;
    gt1_txphaligndone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_12 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_12;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_12 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt1_txphaligndone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_14 is
  port (
    data_out : out STD_LOGIC;
    gt2_txdlysresetdone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_14 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_14;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_14 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt2_txdlysresetdone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_15 is
  port (
    data_out : out STD_LOGIC;
    gt2_txphaligndone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_15 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_15;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_15 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt2_txphaligndone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_17 is
  port (
    data_out : out STD_LOGIC;
    gt3_txdlysresetdone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_17 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_17;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_17 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt3_txdlysresetdone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_18 is
  port (
    data_out : out STD_LOGIC;
    gt3_txphaligndone_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_18 : entity is "xaui_0_gt_wrapper_tx_sync_manual_block";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_18;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_18 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt3_txphaligndone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse is
  port (
    txphinitdone_sync_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \txphaligndone_store_reg[3]\ : in STD_LOGIC;
    data_sync_reg6 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    uclk_txsync_start_phase_align_reg : in STD_LOGIC;
    \FSM_onehot_tx_phalign_manual_state_reg[1]\ : in STD_LOGIC;
    gt0_txphinitdone_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse : entity is "xaui_0_gt_wrapper_tx_sync_manual_sync_pulse";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse is
  signal \FSM_onehot_tx_phalign_manual_state[8]_i_2_n_0\ : STD_LOGIC;
  signal USER_DONE_i_1_n_0 : STD_LOGIC;
  signal stretch_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \stretch_r[2]_i_1_n_0\ : STD_LOGIC;
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  signal sync2_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sync2_r : signal is "true";
  attribute shreg_extract of sync2_r : signal is "no";
  signal \^txphinitdone_sync_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[2]\ : label is "no";
begin
  txphinitdone_sync_0 <= \^txphinitdone_sync_0\;
\FSM_onehot_tx_phalign_manual_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFAFAFAFA"
    )
        port map (
      I0 => \FSM_onehot_tx_phalign_manual_state[8]_i_2_n_0\,
      I1 => D(3),
      I2 => \txphaligndone_store_reg[3]\,
      I3 => D(2),
      I4 => D(4),
      I5 => data_sync_reg6,
      O => E(0)
    );
\FSM_onehot_tx_phalign_manual_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF202020"
    )
        port map (
      I0 => \^txphinitdone_sync_0\,
      I1 => Q(0),
      I2 => D(1),
      I3 => D(0),
      I4 => uclk_txsync_start_phase_align_reg,
      I5 => \FSM_onehot_tx_phalign_manual_state_reg[1]\,
      O => \FSM_onehot_tx_phalign_manual_state[8]_i_2_n_0\
    );
USER_DONE_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sync1_r(0),
      I1 => sync2_r(0),
      O => USER_DONE_i_1_n_0
    );
USER_DONE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => USER_DONE_i_1_n_0,
      Q => \^txphinitdone_sync_0\,
      R => '0'
    );
\stretch_r[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gt0_txphinitdone_out,
      O => \stretch_r[2]_i_1_n_0\
    );
\stretch_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => stretch_r(1),
      Q => stretch_r(0)
    );
\stretch_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => stretch_r(2),
      Q => stretch_r(1)
    );
\stretch_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => '1',
      Q => stretch_r(2)
    );
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(2),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => stretch_r(0),
      Q => sync1_r(2),
      R => '0'
    );
\sync2_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(1),
      Q => sync2_r(0),
      R => '0'
    );
\sync2_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(2),
      Q => sync2_r(1),
      R => '0'
    );
\sync2_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt0_txphinitdone_out,
      Q => sync2_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_13 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    gt1_txphinitdone_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_13 : entity is "xaui_0_gt_wrapper_tx_sync_manual_sync_pulse";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_13;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_13 is
  signal \USER_DONE_i_1__0_n_0\ : STD_LOGIC;
  signal \stretch_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[2]\ : STD_LOGIC;
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  signal sync2_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sync2_r : signal is "true";
  attribute shreg_extract of sync2_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[2]\ : label is "no";
begin
\USER_DONE_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sync1_r(0),
      I1 => sync2_r(0),
      O => \USER_DONE_i_1__0_n_0\
    );
USER_DONE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \USER_DONE_i_1__0_n_0\,
      Q => D(0),
      R => '0'
    );
\stretch_r[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gt1_txphinitdone_out,
      O => \stretch_r[2]_i_1_n_0\
    );
\stretch_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => \stretch_r_reg_n_0_[1]\,
      Q => \stretch_r_reg_n_0_[0]\
    );
\stretch_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => \stretch_r_reg_n_0_[2]\,
      Q => \stretch_r_reg_n_0_[1]\
    );
\stretch_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => '1',
      Q => \stretch_r_reg_n_0_[2]\
    );
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(2),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \stretch_r_reg_n_0_[0]\,
      Q => sync1_r(2),
      R => '0'
    );
\sync2_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(1),
      Q => sync2_r(0),
      R => '0'
    );
\sync2_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(2),
      Q => sync2_r(1),
      R => '0'
    );
\sync2_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt1_txphinitdone_out,
      Q => sync2_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_16 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    gt2_txphinitdone_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_16 : entity is "xaui_0_gt_wrapper_tx_sync_manual_sync_pulse";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_16;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_16 is
  signal \USER_DONE_i_1__1_n_0\ : STD_LOGIC;
  signal \stretch_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[2]\ : STD_LOGIC;
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  signal sync2_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sync2_r : signal is "true";
  attribute shreg_extract of sync2_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[2]\ : label is "no";
begin
\USER_DONE_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sync1_r(0),
      I1 => sync2_r(0),
      O => \USER_DONE_i_1__1_n_0\
    );
USER_DONE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \USER_DONE_i_1__1_n_0\,
      Q => D(0),
      R => '0'
    );
\stretch_r[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gt2_txphinitdone_out,
      O => \stretch_r[2]_i_1_n_0\
    );
\stretch_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => \stretch_r_reg_n_0_[1]\,
      Q => \stretch_r_reg_n_0_[0]\
    );
\stretch_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => \stretch_r_reg_n_0_[2]\,
      Q => \stretch_r_reg_n_0_[1]\
    );
\stretch_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => '1',
      Q => \stretch_r_reg_n_0_[2]\
    );
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(2),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \stretch_r_reg_n_0_[0]\,
      Q => sync1_r(2),
      R => '0'
    );
\sync2_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(1),
      Q => sync2_r(0),
      R => '0'
    );
\sync2_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(2),
      Q => sync2_r(1),
      R => '0'
    );
\sync2_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt2_txphinitdone_out,
      Q => sync2_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_19 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    gt3_txphinitdone_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_19 : entity is "xaui_0_gt_wrapper_tx_sync_manual_sync_pulse";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_19;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_19 is
  signal \USER_DONE_i_1__2_n_0\ : STD_LOGIC;
  signal \stretch_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \stretch_r_reg_n_0_[2]\ : STD_LOGIC;
  signal sync1_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync1_r : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of sync1_r : signal is "no";
  signal sync2_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg of sync2_r : signal is "true";
  attribute shreg_extract of sync2_r : signal is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync1_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync1_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync1_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync1_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync1_r_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \sync2_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync2_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \sync2_r_reg[2]\ : label is "no";
begin
\USER_DONE_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sync1_r(0),
      I1 => sync2_r(0),
      O => \USER_DONE_i_1__2_n_0\
    );
USER_DONE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \USER_DONE_i_1__2_n_0\,
      Q => D(0),
      R => '0'
    );
\stretch_r[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gt3_txphinitdone_out,
      O => \stretch_r[2]_i_1_n_0\
    );
\stretch_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => \stretch_r_reg_n_0_[1]\,
      Q => \stretch_r_reg_n_0_[0]\
    );
\stretch_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => \stretch_r_reg_n_0_[2]\,
      Q => \stretch_r_reg_n_0_[1]\
    );
\stretch_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \stretch_r[2]_i_1_n_0\,
      D => '1',
      Q => \stretch_r_reg_n_0_[2]\
    );
\sync1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(1),
      Q => sync1_r(0),
      R => '0'
    );
\sync1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync1_r(2),
      Q => sync1_r(1),
      R => '0'
    );
\sync1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \stretch_r_reg_n_0_[0]\,
      Q => sync1_r(2),
      R => '0'
    );
\sync2_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(1),
      Q => sync2_r(0),
      R => '0'
    );
\sync2_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sync2_r(2),
      Q => sync2_r(1),
      R => '0'
    );
\sync2_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gt3_txphinitdone_out,
      Q => sync2_r(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_reset_counter is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_qpllreset_in : out STD_LOGIC;
    dclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_reset_counter : entity is "xaui_0_reset_counter";
end xaui_0_xaui_0_reset_counter;

architecture STRUCTURE of xaui_0_xaui_0_reset_counter is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal count_d1 : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal initial_reset : STD_LOGIC;
  signal initial_reset_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \count[7]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of gtxe2_common_0_i_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of initial_reset_i_1 : label is "soft_lutpair91";
begin
  D(0) <= \^d\(0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[2]\,
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      O => plusOp(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      O => plusOp(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => plusOp(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => \count_reg_n_0_[6]\,
      O => plusOp(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d\(0),
      O => sel
    );
\count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \^d\(0),
      O => plusOp(7)
    );
\count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_reg_n_0_[5]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      I4 => \count_reg_n_0_[2]\,
      I5 => \count_reg_n_0_[4]\,
      O => \count[7]_i_3_n_0\
    );
count_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => '1',
      D => \^d\(0),
      Q => count_d1,
      R => '0'
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(0),
      Q => \count_reg_n_0_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(1),
      Q => \count_reg_n_0_[1]\,
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(2),
      Q => \count_reg_n_0_[2]\,
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(3),
      Q => \count_reg_n_0_[3]\,
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(4),
      Q => \count_reg_n_0_[4]\,
      R => '0'
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(5),
      Q => \count_reg_n_0_[5]\,
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(6),
      Q => \count_reg_n_0_[6]\,
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk,
      CE => sel,
      D => plusOp(7),
      Q => \^d\(0),
      R => '0'
    );
gtxe2_common_0_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => initial_reset,
      I1 => \^d\(0),
      I2 => \out\(0),
      O => gt0_qpllreset_in
    );
initial_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^d\(0),
      I1 => count_d1,
      O => initial_reset_i_1_n_0
    );
initial_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => dclk,
      CE => '1',
      D => initial_reset_i_1_n_0,
      Q => initial_reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_align_counter is
  port (
    extra_a : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[1][1]\ : out STD_LOGIC;
    \state_reg[0][0]\ : out STD_LOGIC;
    \state_reg[1][1]_0\ : out STD_LOGIC;
    extra_a_reg_0 : in STD_LOGIC;
    usrclk : in STD_LOGIC;
    \state_reg[0][0]_0\ : in STD_LOGIC;
    q_det : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_align_counter : entity is "align_counter";
end xaui_0_align_counter;

architecture STRUCTURE of xaui_0_align_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \^count_reg[4]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^extra_a\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \prbs_reg_n_0_[5]\ : STD_LOGIC;
  signal \prbs_reg_n_0_[6]\ : STD_LOGIC;
  signal \prbs_reg_n_0_[7]\ : STD_LOGIC;
  signal \state[1][0]_i_7_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_6_n_0\ : STD_LOGIC;
  signal \^state_reg[0][0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \state[1][0]_i_7\ : label is "soft_lutpair58";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_reg[4]_0\(1 downto 0) <= \^count_reg[4]_0\(1 downto 0);
  extra_a <= \^extra_a\;
  \state_reg[0][0]\ <= \^state_reg[0][0]\;
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => p_1_in(2),
      I1 => \state_reg[0][0]_0\,
      I2 => \^count_reg[4]_0\(1),
      I3 => count(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state_reg[0][0]_0\,
      I1 => \^count_reg[4]_0\(1),
      I2 => count(2),
      I3 => count(4),
      I4 => count(3),
      O => \count[3]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \state_reg[0][0]_0\,
      I2 => count(3),
      I3 => count(2),
      I4 => \^count_reg[4]_0\(1),
      O => \count[3]_i_2_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCCC8"
    )
        port map (
      I0 => count(3),
      I1 => count(4),
      I2 => count(2),
      I3 => \^count_reg[4]_0\(1),
      I4 => \state_reg[0][0]_0\,
      O => \count[4]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \count[3]_i_1_n_0\,
      D => D(0),
      Q => \^count_reg[4]_0\(0),
      R => usrclk_reset
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \count[3]_i_1_n_0\,
      D => D(1),
      Q => \^count_reg[4]_0\(1),
      R => usrclk_reset
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \count[3]_i_1_n_0\,
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => usrclk_reset
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \count[3]_i_1_n_0\,
      D => \count[3]_i_2_n_0\,
      Q => count(3),
      R => usrclk_reset
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \count[4]_i_1_n_0\,
      Q => count(4),
      R => usrclk_reset
    );
extra_a_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => extra_a_reg_0,
      Q => \^extra_a\,
      R => '0'
    );
\prbs[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prbs_reg_n_0_[6]\,
      I1 => \prbs_reg_n_0_[7]\,
      O => p_0_out(0)
    );
\prbs_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => p_0_out(0),
      Q => \^q\(0),
      S => usrclk_reset
    );
\prbs_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => \^q\(0),
      Q => \^q\(1),
      S => usrclk_reset
    );
\prbs_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => \^q\(1),
      Q => p_1_in(2),
      S => usrclk_reset
    );
\prbs_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => p_1_in(2),
      Q => p_1_in(3),
      S => usrclk_reset
    );
\prbs_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => p_1_in(3),
      Q => \prbs_reg_n_0_[5]\,
      S => usrclk_reset
    );
\prbs_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => \prbs_reg_n_0_[5]\,
      Q => \prbs_reg_n_0_[6]\,
      S => usrclk_reset
    );
\prbs_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => \state_reg[0][0]_0\,
      D => \prbs_reg_n_0_[6]\,
      Q => \prbs_reg_n_0_[7]\,
      S => usrclk_reset
    );
\state[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005575"
    )
        port map (
      I0 => count(2),
      I1 => \^count_reg[4]_0\(1),
      I2 => \^extra_a\,
      I3 => \^count_reg[4]_0\(0),
      I4 => \state[1][0]_i_7_n_0\,
      I5 => \state_reg[0][0]_0\,
      O => \state_reg[1][1]_0\
    );
\state[1][0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(4),
      I1 => count(3),
      O => \state[1][0]_i_7_n_0\
    );
\state[1][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202023202"
    )
        port map (
      I0 => q_det,
      I1 => \state_reg[0][0]_0\,
      I2 => \^state_reg[0][0]\,
      I3 => \state[1][1]_i_6_n_0\,
      I4 => count(4),
      I5 => count(3),
      O => \state_reg[1][1]\
    );
\state[1][1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \^count_reg[4]_0\(0),
      I1 => \^extra_a\,
      I2 => \^count_reg[4]_0\(1),
      I3 => count(2),
      O => \state[1][1]_i_6_n_0\
    );
\state[1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFEFEFEFEFE"
    )
        port map (
      I0 => count(4),
      I1 => count(3),
      I2 => count(2),
      I3 => \^extra_a\,
      I4 => \^count_reg[4]_0\(1),
      I5 => \^count_reg[4]_0\(0),
      O => \^state_reg[0][0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_deskew_state_machine is
  port (
    mgt_enchansync : out STD_LOGIC;
    \status_vector[6]\ : out STD_LOGIC;
    \got_align_reg[0]_0\ : out STD_LOGIC;
    local_fault : out STD_LOGIC;
    usrclk : in STD_LOGIC;
    sync_status : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    mgt_rxdata : in STD_LOGIC_VECTOR ( 48 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_rxcharisk : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \mgt_rxdata_reg_reg[4]\ : in STD_LOGIC;
    \mgt_rxdata_reg_reg[16]\ : in STD_LOGIC;
    \mgt_rxdata_reg_reg[49]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_deskew_state_machine : entity is "deskew_state_machine";
end xaui_0_deskew_state_machine;

architecture STRUCTURE of xaui_0_deskew_state_machine is
  signal deskew_error : STD_LOGIC;
  signal \deskew_error[0]_i_2_n_0\ : STD_LOGIC;
  signal \deskew_error[0]_i_3_n_0\ : STD_LOGIC;
  signal \deskew_error[0]_i_4_n_0\ : STD_LOGIC;
  signal \deskew_error[0]_i_5_n_0\ : STD_LOGIC;
  signal \deskew_error_reg_n_0_[0]\ : STD_LOGIC;
  signal enchansync_i : STD_LOGIC;
  signal got_align : STD_LOGIC;
  signal \got_align[0]_i_3_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_10_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_2_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_3_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_4_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_5_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_6_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_7_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_8_n_0\ : STD_LOGIC;
  signal \got_align[1]_i_9_n_0\ : STD_LOGIC;
  signal \^got_align_reg[0]_0\ : STD_LOGIC;
  signal \got_align_reg_n_0_[0]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_7_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_4__0_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_5__0_n_0\ : STD_LOGIC;
  signal \state[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \state[1][2]_i_3__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \state_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \^status_vector[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \deskew_error[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \deskew_error[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of enchansync_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \got_align[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \got_align[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[1][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[1][1]_i_5__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[1][2]_i_1\ : label is "soft_lutpair7";
begin
  \got_align_reg[0]_0\ <= \^got_align_reg[0]_0\;
  \status_vector[6]\ <= \^status_vector[6]\;
align_status_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg_n_0_[1][2]\,
      Q => \^status_vector[6]\,
      R => '0'
    );
\deskew_error[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7EF"
    )
        port map (
      I0 => \deskew_error[0]_i_2_n_0\,
      I1 => \deskew_error[0]_i_3_n_0\,
      I2 => \deskew_error[0]_i_4_n_0\,
      I3 => \deskew_error[0]_i_5_n_0\,
      O => p_1_out(0)
    );
\deskew_error[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => mgt_rxdata(29),
      I1 => mgt_codevalid(4),
      I2 => mgt_rxdata(27),
      I3 => mgt_rxdata(28),
      I4 => \^got_align_reg[0]_0\,
      O => \deskew_error[0]_i_2_n_0\
    );
\deskew_error[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \mgt_rxdata_reg_reg[4]\,
      I1 => mgt_codevalid(0),
      I2 => mgt_rxdata(1),
      I3 => mgt_rxdata(2),
      I4 => mgt_rxdata(0),
      O => \deskew_error[0]_i_3_n_0\
    );
\deskew_error[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \mgt_rxdata_reg_reg[49]\,
      I1 => mgt_rxdata(40),
      I2 => mgt_codevalid(6),
      I3 => mgt_rxdata(38),
      I4 => mgt_rxdata(39),
      O => \deskew_error[0]_i_4_n_0\
    );
\deskew_error[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \mgt_rxdata_reg_reg[16]\,
      I1 => mgt_rxdata(13),
      I2 => mgt_codevalid(2),
      I3 => mgt_rxdata(11),
      I4 => mgt_rxdata(12),
      O => \deskew_error[0]_i_5_n_0\
    );
\deskew_error[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE7F"
    )
        port map (
      I0 => \got_align[1]_i_5_n_0\,
      I1 => \got_align[1]_i_4_n_0\,
      I2 => \got_align[1]_i_3_n_0\,
      I3 => \got_align[1]_i_2_n_0\,
      O => p_1_out(1)
    );
\deskew_error_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_1_out(0),
      Q => \deskew_error_reg_n_0_[0]\,
      R => '0'
    );
\deskew_error_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_1_out(1),
      Q => deskew_error,
      R => '0'
    );
enchansync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \state_reg_n_0_[1][0]\,
      I1 => \state_reg_n_0_[1][1]\,
      I2 => sync_status,
      I3 => \state_reg_n_0_[1][2]\,
      O => enchansync_i
    );
enchansync_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => enchansync_i,
      Q => mgt_enchansync,
      R => '0'
    );
\got_align[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^got_align_reg[0]_0\,
      I1 => mgt_rxdata(28),
      I2 => mgt_rxdata(27),
      I3 => mgt_codevalid(4),
      I4 => mgt_rxdata(29),
      I5 => \got_align[0]_i_3_n_0\,
      O => p_7_out(0)
    );
\got_align[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(22),
      I1 => mgt_rxcharisk(2),
      I2 => mgt_rxdata(23),
      I3 => mgt_rxdata(26),
      I4 => mgt_rxdata(24),
      I5 => mgt_rxdata(25),
      O => \^got_align_reg[0]_0\
    );
\got_align[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \deskew_error[0]_i_4_n_0\,
      I1 => \deskew_error[0]_i_3_n_0\,
      I2 => \deskew_error[0]_i_5_n_0\,
      O => \got_align[0]_i_3_n_0\
    );
\got_align[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \got_align[1]_i_2_n_0\,
      I1 => \got_align[1]_i_3_n_0\,
      I2 => \got_align[1]_i_4_n_0\,
      I3 => \got_align[1]_i_5_n_0\,
      O => p_7_out(1)
    );
\got_align[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => mgt_rxdata(20),
      I1 => mgt_rxdata(18),
      I2 => mgt_rxdata(14),
      I3 => mgt_rxdata(15),
      O => \got_align[1]_i_10_n_0\
    );
\got_align[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => mgt_rxcharisk(4),
      I1 => mgt_rxdata(45),
      I2 => mgt_rxdata(44),
      I3 => mgt_rxdata(43),
      I4 => \got_align[1]_i_6_n_0\,
      O => \got_align[1]_i_2_n_0\
    );
\got_align[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \got_align[1]_i_7_n_0\,
      I1 => mgt_rxcharisk(0),
      I2 => mgt_rxdata(7),
      I3 => mgt_rxdata(5),
      I4 => mgt_rxdata(6),
      O => \got_align[1]_i_3_n_0\
    );
\got_align[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => mgt_rxdata(37),
      I1 => mgt_codevalid(5),
      I2 => mgt_rxdata(35),
      I3 => mgt_rxdata(36),
      I4 => \got_align[1]_i_8_n_0\,
      O => \got_align[1]_i_4_n_0\
    );
\got_align[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \got_align[1]_i_9_n_0\,
      I1 => mgt_rxcharisk(1),
      I2 => \got_align[1]_i_10_n_0\,
      I3 => mgt_rxdata(21),
      I4 => mgt_rxdata(19),
      I5 => mgt_codevalid(3),
      O => \got_align[1]_i_5_n_0\
    );
\got_align[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => mgt_rxdata(47),
      I1 => mgt_rxdata(42),
      I2 => mgt_codevalid(7),
      I3 => mgt_rxdata(46),
      I4 => mgt_rxdata(48),
      I5 => mgt_rxdata(41),
      O => \got_align[1]_i_6_n_0\
    );
\got_align[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => mgt_rxdata(9),
      I1 => mgt_rxdata(4),
      I2 => mgt_codevalid(1),
      I3 => mgt_rxdata(8),
      I4 => mgt_rxdata(10),
      I5 => mgt_rxdata(3),
      O => \got_align[1]_i_7_n_0\
    );
\got_align[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(33),
      I1 => mgt_rxdata(32),
      I2 => mgt_rxdata(31),
      I3 => mgt_rxdata(30),
      I4 => mgt_rxcharisk(3),
      I5 => mgt_rxdata(34),
      O => \got_align[1]_i_8_n_0\
    );
\got_align[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mgt_rxdata(16),
      I1 => mgt_rxdata(17),
      O => \got_align[1]_i_9_n_0\
    );
\got_align_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_7_out(0),
      Q => \got_align_reg_n_0_[0]\,
      R => '0'
    );
\got_align_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_7_out(1),
      Q => got_align,
      R => '0'
    );
\rxd_out[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status_vector[6]\,
      O => local_fault
    );
\state[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => next_state(0),
      I1 => sync_status,
      I2 => usrclk_reset,
      O => \state[1][0]_i_1_n_0\
    );
\state[1][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5256525646064646"
    )
        port map (
      I0 => \state[1][1]_i_2__0_n_0\,
      I1 => got_align,
      I2 => deskew_error,
      I3 => \state[1][2]_i_3__0_n_0\,
      I4 => sync_status,
      I5 => \state[1][1]_i_4__0_n_0\,
      O => next_state(0)
    );
\state[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C03D2013"
    )
        port map (
      I0 => got_align,
      I1 => deskew_error,
      I2 => \state[1][1]_i_2__0_n_0\,
      I3 => \state[1][1]_i_3__0_n_0\,
      I4 => \state[1][1]_i_4__0_n_0\,
      I5 => \state[1][1]_i_5__0_n_0\,
      O => \state[1][1]_i_1_n_0\
    );
\state[1][1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0AA82AA000"
    )
        port map (
      I0 => sync_status,
      I1 => \state_reg_n_0_[1][1]\,
      I2 => \deskew_error_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1][2]\,
      I4 => \got_align_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1][0]\,
      O => \state[1][1]_i_2__0_n_0\
    );
\state[1][1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9793EBBBFFFFFFFF"
    )
        port map (
      I0 => \deskew_error_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1][1]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \got_align_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1][2]\,
      I5 => sync_status,
      O => \state[1][1]_i_3__0_n_0\
    );
\state[1][1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00888888A8888888"
    )
        port map (
      I0 => sync_status,
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \got_align_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \deskew_error_reg_n_0_[0]\,
      O => \state[1][1]_i_4__0_n_0\
    );
\state[1][1]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => usrclk_reset,
      I1 => sync_status,
      O => \state[1][1]_i_5__0_n_0\
    );
\state[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => next_state(2),
      I1 => sync_status,
      I2 => usrclk_reset,
      O => \state[1][2]_i_1_n_0\
    );
\state[1][2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0EAA0AAA"
    )
        port map (
      I0 => \state[1][1]_i_4__0_n_0\,
      I1 => got_align,
      I2 => deskew_error,
      I3 => \state[1][1]_i_2__0_n_0\,
      I4 => sync_status,
      I5 => \state[1][2]_i_3__0_n_0\,
      O => next_state(2)
    );
\state[1][2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F55F48BF"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \got_align_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \deskew_error_reg_n_0_[0]\,
      O => \state[1][2]_i_3__0_n_0\
    );
\state_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[1][0]_i_1_n_0\,
      Q => \state_reg_n_0_[1][0]\,
      R => '0'
    );
\state_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[1][1]_i_1_n_0\,
      Q => \state_reg_n_0_[1][1]\,
      R => '0'
    );
\state_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[1][2]_i_1_n_0\,
      Q => \state_reg_n_0_[1][2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_k_r_prbs is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    usrclk_reset : in STD_LOGIC;
    usrclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_k_r_prbs : entity is "k_r_prbs";
end xaui_0_k_r_prbs;

architecture STRUCTURE of xaui_0_k_r_prbs is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \prbs_reg_n_0_[1]\ : STD_LOGIC;
  signal \prbs_reg_n_0_[2]\ : STD_LOGIC;
  signal \prbs_reg_n_0_[3]\ : STD_LOGIC;
  signal \prbs_reg_n_0_[4]\ : STD_LOGIC;
  signal \prbs_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prbs[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \prbs[2]_i_1\ : label is "soft_lutpair59";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\prbs[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => \prbs_reg_n_0_[5]\,
      O => p_2_out(0)
    );
\prbs[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_0_in,
      O => p_2_out(1)
    );
\prbs_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => p_2_out(0),
      Q => \prbs_reg_n_0_[1]\,
      S => usrclk_reset
    );
\prbs_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => p_2_out(1),
      Q => \prbs_reg_n_0_[2]\,
      S => usrclk_reset
    );
\prbs_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \prbs_reg_n_0_[1]\,
      Q => \prbs_reg_n_0_[3]\,
      S => usrclk_reset
    );
\prbs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \prbs_reg_n_0_[2]\,
      Q => \prbs_reg_n_0_[4]\,
      S => usrclk_reset
    );
\prbs_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \prbs_reg_n_0_[3]\,
      Q => \prbs_reg_n_0_[5]\,
      S => usrclk_reset
    );
\prbs_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \prbs_reg_n_0_[4]\,
      Q => p_0_in,
      S => usrclk_reset
    );
\prbs_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \prbs_reg_n_0_[5]\,
      Q => \^q\(0),
      S => usrclk_reset
    );
\prbs_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => p_0_in,
      Q => \^q\(1),
      S => usrclk_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_rx_recoder is
  port (
    \tx_is_idle_pipe_reg[0]_0\ : out STD_LOGIC;
    \tx_is_idle_pipe_reg[1]_0\ : out STD_LOGIC;
    \tx_is_idle_pipe_reg[3]_0\ : out STD_LOGIC;
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_rxdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    align_status_reg : in STD_LOGIC;
    mgt_rxcharisk : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_rxdata_reg_reg[32]\ : in STD_LOGIC;
    usrclk : in STD_LOGIC;
    local_fault : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_rx_recoder : entity is "rx_recoder";
end xaui_0_rx_recoder;

architecture STRUCTURE of xaui_0_rx_recoder is
  signal c11_in : STD_LOGIC;
  signal c153_in : STD_LOGIC;
  signal c3_in : STD_LOGIC;
  signal c72_in : STD_LOGIC;
  signal c75_in : STD_LOGIC;
  signal c78_in : STD_LOGIC;
  signal c7_in : STD_LOGIC;
  signal code_error : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal code_error_delay : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \code_error_pipe[0]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[0]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[1]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[1]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[2]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[2]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[3]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[3]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[4]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[4]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[5]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[5]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[6]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[6]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe[7]_i_2_n_0\ : STD_LOGIC;
  signal \code_error_pipe[7]_i_3_n_0\ : STD_LOGIC;
  signal \code_error_pipe_reg_n_0_[4]\ : STD_LOGIC;
  signal \code_error_pipe_reg_n_0_[5]\ : STD_LOGIC;
  signal \code_error_pipe_reg_n_0_[6]\ : STD_LOGIC;
  signal \code_error_pipe_reg_n_0_[7]\ : STD_LOGIC;
  signal d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lane_term_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \lane_terminate_temp[0]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[1]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[2]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[3]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[4]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[5]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[6]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp[7]_i_2_n_0\ : STD_LOGIC;
  signal \lane_terminate_temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \lane_terminate_temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \lane_terminate_temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \lane_terminate_temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \lane_terminate_temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \lane_terminate_temp_reg_n_0_[7]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_15_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_21_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal p_2_in_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxc_half_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rxc_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \rxc_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal rxd_half_pipe : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rxd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \rxd_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \rxd_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[23]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[23]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[23]_i_5_n_0\ : STD_LOGIC;
  signal \rxd_out[23]_i_6_n_0\ : STD_LOGIC;
  signal \rxd_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[25]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[32]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[33]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[34]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[35]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[36]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[37]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[38]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[38]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[39]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[39]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[39]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[39]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[40]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[41]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[42]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[43]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[44]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[45]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[46]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[47]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[47]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[47]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[47]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[47]_i_5_n_0\ : STD_LOGIC;
  signal \rxd_out[48]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[48]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[48]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[49]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[50]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[51]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[52]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[53]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[54]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[55]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[55]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[55]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[55]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[55]_i_5_n_0\ : STD_LOGIC;
  signal \rxd_out[56]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[57]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[58]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[59]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[60]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[61]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[62]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[63]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[63]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[63]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \rxd_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \rxd_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \rxd_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[24]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[25]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[26]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[27]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[28]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[29]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[2]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[30]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[31]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[3]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[40]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[41]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[42]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[43]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[44]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[45]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[46]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[47]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[48]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[49]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[4]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[50]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[51]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[52]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[53]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[54]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[55]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[56]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[57]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[58]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[59]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[5]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[60]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[61]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[62]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[63]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[6]\ : STD_LOGIC;
  signal \rxd_pipe_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_is_idle_half_pipe_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_is_idle_pipe[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_idle_pipe[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_idle_pipe[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_idle_pipe[3]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_is_idle_pipe_reg[0]_0\ : STD_LOGIC;
  signal \^tx_is_idle_pipe_reg[1]_0\ : STD_LOGIC;
  signal \^tx_is_idle_pipe_reg[3]_0\ : STD_LOGIC;
  signal \tx_is_idle_pipe_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \code_error_pipe[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \code_error_pipe[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \code_error_pipe[2]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \code_error_pipe[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \code_error_pipe[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \code_error_pipe[6]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \code_error_pipe[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lane_terminate_temp[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lane_terminate_temp[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lane_terminate_temp[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lane_terminate_temp[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lane_terminate_temp[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rxc_out[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rxc_out[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rxc_out[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rxc_out[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rxc_out[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rxc_out[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rxc_out[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rxd_out[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rxd_out[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rxd_out[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rxd_out[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rxd_out[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rxd_out[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rxd_out[15]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rxd_out[17]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rxd_out[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rxd_out[19]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rxd_out[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rxd_out[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rxd_out[21]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rxd_out[22]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rxd_out[23]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rxd_out[25]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rxd_out[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rxd_out[27]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rxd_out[28]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rxd_out[29]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rxd_out[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rxd_out[30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rxd_out[31]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rxd_out[32]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rxd_out[33]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rxd_out[34]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rxd_out[35]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rxd_out[36]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rxd_out[38]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rxd_out[39]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rxd_out[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rxd_out[41]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rxd_out[42]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rxd_out[43]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rxd_out[44]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rxd_out[45]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rxd_out[46]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rxd_out[47]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rxd_out[47]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rxd_out[48]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rxd_out[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rxd_out[55]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rxd_out[55]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rxd_out[57]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rxd_out[58]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rxd_out[59]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rxd_out[60]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rxd_out[61]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rxd_out[62]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rxd_out[63]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rxd_out[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rxd_out[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rxd_out[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \tx_is_idle_half_pipe[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tx_is_idle_half_pipe[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_is_idle_pipe[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_is_idle_pipe[2]_i_1\ : label is "soft_lutpair16";
begin
  \tx_is_idle_pipe_reg[0]_0\ <= \^tx_is_idle_pipe_reg[0]_0\;
  \tx_is_idle_pipe_reg[1]_0\ <= \^tx_is_idle_pipe_reg[1]_0\;
  \tx_is_idle_pipe_reg[3]_0\ <= \^tx_is_idle_pipe_reg[3]_0\;
\code_error_delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \code_error_pipe_reg_n_0_[4]\,
      Q => code_error_delay(0),
      R => '0'
    );
\code_error_delay_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \code_error_pipe_reg_n_0_[5]\,
      Q => code_error_delay(1),
      R => '0'
    );
\code_error_delay_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \code_error_pipe_reg_n_0_[6]\,
      Q => code_error_delay(2),
      R => '0'
    );
\code_error_delay_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \code_error_pipe_reg_n_0_[7]\,
      Q => code_error_delay(3),
      R => '0'
    );
\code_error_pipe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA80000FFFFFFFF"
    )
        port map (
      I0 => \code_error_pipe[0]_i_2_n_0\,
      I1 => mgt_rxdata(1),
      I2 => mgt_rxdata(0),
      I3 => \code_error_pipe[0]_i_3_n_0\,
      I4 => mgt_rxcharisk(0),
      I5 => mgt_codevalid(0),
      O => code_error(0)
    );
\code_error_pipe[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mgt_rxdata(7),
      I1 => mgt_rxdata(5),
      I2 => mgt_rxdata(6),
      O => \code_error_pipe[0]_i_2_n_0\
    );
\code_error_pipe[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D57F7FFF"
    )
        port map (
      I0 => mgt_rxdata(4),
      I1 => mgt_rxdata(1),
      I2 => mgt_rxdata(0),
      I3 => mgt_rxdata(2),
      I4 => mgt_rxdata(3),
      O => \code_error_pipe[0]_i_3_n_0\
    );
\code_error_pipe[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF540000FFFFFFFF"
    )
        port map (
      I0 => \code_error_pipe[1]_i_2_n_0\,
      I1 => mgt_rxdata(17),
      I2 => mgt_rxdata(16),
      I3 => \code_error_pipe[1]_i_3_n_0\,
      I4 => mgt_rxcharisk(2),
      I5 => mgt_codevalid(2),
      O => code_error(1)
    );
\code_error_pipe[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mgt_rxdata(23),
      I1 => mgt_rxdata(22),
      I2 => mgt_rxdata(21),
      O => \code_error_pipe[1]_i_2_n_0\
    );
\code_error_pipe[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D57F7FFF"
    )
        port map (
      I0 => mgt_rxdata(20),
      I1 => mgt_rxdata(17),
      I2 => mgt_rxdata(16),
      I3 => mgt_rxdata(18),
      I4 => mgt_rxdata(19),
      O => \code_error_pipe[1]_i_3_n_0\
    );
\code_error_pipe[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA80000FFFFFFFF"
    )
        port map (
      I0 => \code_error_pipe[2]_i_2_n_0\,
      I1 => mgt_rxdata(32),
      I2 => mgt_rxdata(33),
      I3 => \code_error_pipe[2]_i_3_n_0\,
      I4 => mgt_rxcharisk(4),
      I5 => mgt_codevalid(4),
      O => code_error(2)
    );
\code_error_pipe[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mgt_rxdata(38),
      I1 => mgt_rxdata(37),
      I2 => mgt_rxdata(39),
      O => \code_error_pipe[2]_i_2_n_0\
    );
\code_error_pipe[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D57F7FFF"
    )
        port map (
      I0 => mgt_rxdata(36),
      I1 => mgt_rxdata(32),
      I2 => mgt_rxdata(33),
      I3 => mgt_rxdata(34),
      I4 => mgt_rxdata(35),
      O => \code_error_pipe[2]_i_3_n_0\
    );
\code_error_pipe[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA80000FFFFFFFF"
    )
        port map (
      I0 => \code_error_pipe[3]_i_2_n_0\,
      I1 => mgt_rxdata(48),
      I2 => mgt_rxdata(49),
      I3 => \code_error_pipe[3]_i_3_n_0\,
      I4 => mgt_rxcharisk(6),
      I5 => mgt_codevalid(6),
      O => code_error(3)
    );
\code_error_pipe[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mgt_rxdata(54),
      I1 => mgt_rxdata(53),
      I2 => mgt_rxdata(55),
      O => \code_error_pipe[3]_i_2_n_0\
    );
\code_error_pipe[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => mgt_rxdata(52),
      I1 => mgt_rxdata(51),
      I2 => mgt_rxdata(50),
      I3 => mgt_rxdata(49),
      I4 => mgt_rxdata(48),
      O => \code_error_pipe[3]_i_3_n_0\
    );
\code_error_pipe[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \code_error_pipe[4]_i_2_n_0\,
      I1 => \code_error_pipe[4]_i_3_n_0\,
      I2 => mgt_rxcharisk(1),
      I3 => mgt_codevalid(1),
      O => code_error(4)
    );
\code_error_pipe[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1111111"
    )
        port map (
      I0 => mgt_rxdata(8),
      I1 => mgt_rxdata(9),
      I2 => mgt_rxdata(13),
      I3 => mgt_rxdata(15),
      I4 => mgt_rxdata(14),
      O => \code_error_pipe[4]_i_2_n_0\
    );
\code_error_pipe[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => mgt_rxdata(12),
      I1 => mgt_rxdata(11),
      I2 => mgt_rxdata(10),
      I3 => mgt_rxdata(8),
      I4 => mgt_rxdata(9),
      O => \code_error_pipe[4]_i_3_n_0\
    );
\code_error_pipe[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \code_error_pipe[5]_i_2_n_0\,
      I1 => \code_error_pipe[5]_i_3_n_0\,
      I2 => mgt_rxcharisk(3),
      I3 => mgt_codevalid(3),
      O => code_error(5)
    );
\code_error_pipe[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1111111"
    )
        port map (
      I0 => mgt_rxdata(24),
      I1 => mgt_rxdata(25),
      I2 => mgt_rxdata(29),
      I3 => mgt_rxdata(31),
      I4 => mgt_rxdata(30),
      O => \code_error_pipe[5]_i_2_n_0\
    );
\code_error_pipe[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => mgt_rxdata(28),
      I1 => mgt_rxdata(27),
      I2 => mgt_rxdata(26),
      I3 => mgt_rxdata(24),
      I4 => mgt_rxdata(25),
      O => \code_error_pipe[5]_i_3_n_0\
    );
\code_error_pipe[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA80000FFFFFFFF"
    )
        port map (
      I0 => \code_error_pipe[6]_i_2_n_0\,
      I1 => mgt_rxdata(41),
      I2 => mgt_rxdata(40),
      I3 => \code_error_pipe[6]_i_3_n_0\,
      I4 => mgt_rxcharisk(5),
      I5 => mgt_codevalid(5),
      O => code_error(6)
    );
\code_error_pipe[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mgt_rxdata(46),
      I1 => mgt_rxdata(45),
      I2 => mgt_rxdata(47),
      O => \code_error_pipe[6]_i_2_n_0\
    );
\code_error_pipe[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D57F7FFF"
    )
        port map (
      I0 => mgt_rxdata(44),
      I1 => mgt_rxdata(41),
      I2 => mgt_rxdata(40),
      I3 => mgt_rxdata(42),
      I4 => mgt_rxdata(43),
      O => \code_error_pipe[6]_i_3_n_0\
    );
\code_error_pipe[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \code_error_pipe[7]_i_2_n_0\,
      I1 => \code_error_pipe[7]_i_3_n_0\,
      I2 => mgt_rxcharisk(7),
      I3 => mgt_codevalid(7),
      O => code_error(7)
    );
\code_error_pipe[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1111111"
    )
        port map (
      I0 => mgt_rxdata(56),
      I1 => mgt_rxdata(57),
      I2 => mgt_rxdata(61),
      I3 => mgt_rxdata(63),
      I4 => mgt_rxdata(62),
      O => \code_error_pipe[7]_i_2_n_0\
    );
\code_error_pipe[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9777FFFF"
    )
        port map (
      I0 => mgt_rxdata(58),
      I1 => mgt_rxdata(59),
      I2 => mgt_rxdata(56),
      I3 => mgt_rxdata(57),
      I4 => mgt_rxdata(60),
      O => \code_error_pipe[7]_i_3_n_0\
    );
\code_error_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(0),
      Q => code_error_delay(4),
      R => '0'
    );
\code_error_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(1),
      Q => code_error_delay(5),
      R => '0'
    );
\code_error_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(2),
      Q => code_error_delay(6),
      R => '0'
    );
\code_error_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(3),
      Q => code_error_delay(7),
      R => '0'
    );
\code_error_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(4),
      Q => \code_error_pipe_reg_n_0_[4]\,
      R => '0'
    );
\code_error_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(5),
      Q => \code_error_pipe_reg_n_0_[5]\,
      R => '0'
    );
\code_error_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(6),
      Q => \code_error_pipe_reg_n_0_[6]\,
      R => '0'
    );
\code_error_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => code_error(7),
      Q => \code_error_pipe_reg_n_0_[7]\,
      R => '0'
    );
\lane_term_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \lane_terminate_temp_reg_n_0_[4]\,
      Q => lane_term_pipe(0),
      R => '0'
    );
\lane_term_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \lane_terminate_temp_reg_n_0_[5]\,
      Q => lane_term_pipe(1),
      R => '0'
    );
\lane_term_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \lane_terminate_temp_reg_n_0_[6]\,
      Q => lane_term_pipe(2),
      R => '0'
    );
\lane_term_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \lane_terminate_temp_reg_n_0_[7]\,
      Q => lane_term_pipe(3),
      R => '0'
    );
\lane_terminate_temp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \lane_terminate_temp[0]_i_2_n_0\,
      I1 => mgt_rxdata(7),
      I2 => mgt_rxdata(5),
      I3 => mgt_rxdata(6),
      I4 => code_error(0),
      O => p_21_out(0)
    );
\lane_terminate_temp[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(4),
      I1 => mgt_rxcharisk(0),
      I2 => mgt_rxdata(1),
      I3 => mgt_rxdata(0),
      I4 => mgt_rxdata(2),
      I5 => mgt_rxdata(3),
      O => \lane_terminate_temp[0]_i_2_n_0\
    );
\lane_terminate_temp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \lane_terminate_temp[1]_i_2_n_0\,
      I1 => mgt_rxdata(16),
      I2 => mgt_rxdata(17),
      I3 => \code_error_pipe[1]_i_2_n_0\,
      I4 => code_error(1),
      O => p_21_out(1)
    );
\lane_terminate_temp[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => mgt_rxdata(20),
      I1 => mgt_rxcharisk(2),
      I2 => mgt_rxdata(19),
      I3 => mgt_rxdata(18),
      O => \lane_terminate_temp[1]_i_2_n_0\
    );
\lane_terminate_temp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => mgt_rxdata(39),
      I1 => mgt_rxdata(37),
      I2 => mgt_rxdata(38),
      I3 => mgt_rxdata(32),
      I4 => \lane_terminate_temp[2]_i_2_n_0\,
      I5 => code_error(2),
      O => p_21_out(2)
    );
\lane_terminate_temp[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => mgt_rxdata(35),
      I1 => mgt_rxdata(34),
      I2 => mgt_rxdata(36),
      I3 => mgt_rxdata(33),
      I4 => mgt_rxcharisk(4),
      O => \lane_terminate_temp[2]_i_2_n_0\
    );
\lane_terminate_temp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \lane_terminate_temp[3]_i_2_n_0\,
      I1 => mgt_rxdata(54),
      I2 => mgt_rxdata(53),
      I3 => mgt_rxdata(55),
      I4 => code_error(3),
      O => p_21_out(3)
    );
\lane_terminate_temp[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => mgt_rxcharisk(6),
      I1 => mgt_rxdata(52),
      I2 => mgt_rxdata(50),
      I3 => mgt_rxdata(51),
      I4 => mgt_rxdata(48),
      I5 => mgt_rxdata(49),
      O => \lane_terminate_temp[3]_i_2_n_0\
    );
\lane_terminate_temp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \lane_terminate_temp[4]_i_2_n_0\,
      I1 => mgt_rxdata(11),
      I2 => mgt_rxdata(10),
      I3 => mgt_rxdata(12),
      I4 => mgt_rxcharisk(1),
      I5 => code_error(4),
      O => p_21_out(4)
    );
\lane_terminate_temp[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(14),
      I1 => mgt_rxdata(9),
      I2 => mgt_rxdata(8),
      I3 => mgt_rxdata(13),
      I4 => mgt_rxdata(15),
      O => \lane_terminate_temp[4]_i_2_n_0\
    );
\lane_terminate_temp[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \lane_terminate_temp[5]_i_2_n_0\,
      I1 => mgt_rxcharisk(3),
      I2 => mgt_rxdata(27),
      I3 => mgt_rxdata(26),
      I4 => code_error(5),
      O => p_21_out(5)
    );
\lane_terminate_temp[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(30),
      I1 => mgt_rxdata(28),
      I2 => mgt_rxdata(25),
      I3 => mgt_rxdata(24),
      I4 => mgt_rxdata(29),
      I5 => mgt_rxdata(31),
      O => \lane_terminate_temp[5]_i_2_n_0\
    );
\lane_terminate_temp[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \lane_terminate_temp[6]_i_2_n_0\,
      I1 => mgt_rxdata(46),
      I2 => mgt_rxdata(45),
      I3 => mgt_rxdata(47),
      I4 => code_error(6),
      O => p_21_out(6)
    );
\lane_terminate_temp[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(43),
      I1 => mgt_rxdata(42),
      I2 => mgt_rxdata(41),
      I3 => mgt_rxdata(40),
      I4 => mgt_rxcharisk(5),
      I5 => mgt_rxdata(44),
      O => \lane_terminate_temp[6]_i_2_n_0\
    );
\lane_terminate_temp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \lane_terminate_temp[7]_i_2_n_0\,
      I1 => mgt_rxdata(58),
      I2 => mgt_rxdata(59),
      I3 => mgt_rxdata(60),
      I4 => mgt_rxcharisk(7),
      I5 => code_error(7),
      O => p_21_out(7)
    );
\lane_terminate_temp[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(62),
      I1 => mgt_rxdata(57),
      I2 => mgt_rxdata(56),
      I3 => mgt_rxdata(61),
      I4 => mgt_rxdata(63),
      O => \lane_terminate_temp[7]_i_2_n_0\
    );
\lane_terminate_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(0),
      Q => \lane_terminate_temp_reg_n_0_[0]\,
      R => '0'
    );
\lane_terminate_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(1),
      Q => p_2_in_0,
      R => '0'
    );
\lane_terminate_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(2),
      Q => p_0_in,
      R => '0'
    );
\lane_terminate_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(3),
      Q => \lane_terminate_temp_reg_n_0_[3]\,
      R => '0'
    );
\lane_terminate_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(4),
      Q => \lane_terminate_temp_reg_n_0_[4]\,
      R => '0'
    );
\lane_terminate_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(5),
      Q => \lane_terminate_temp_reg_n_0_[5]\,
      R => '0'
    );
\lane_terminate_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(6),
      Q => \lane_terminate_temp_reg_n_0_[6]\,
      R => '0'
    );
\lane_terminate_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => p_21_out(7),
      Q => \lane_terminate_temp_reg_n_0_[7]\,
      R => '0'
    );
\rxc_half_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c153_in,
      Q => rxc_half_pipe(0),
      R => '0'
    );
\rxc_half_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c3_in,
      Q => rxc_half_pipe(1),
      R => '0'
    );
\rxc_half_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c7_in,
      Q => rxc_half_pipe(2),
      R => '0'
    );
\rxc_half_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c11_in,
      Q => rxc_half_pipe(3),
      R => '0'
    );
\rxc_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rxc_half_pipe(0),
      I1 => \rxd_out[7]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      O => \rxc_out[0]_i_1_n_0\
    );
\rxc_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxc_half_pipe(1),
      I1 => \rxd_out[15]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      O => \rxc_out[1]_i_1_n_0\
    );
\rxc_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxc_half_pipe(2),
      I1 => \rxd_out[23]_i_2_n_0\,
      I2 => p_0_in0_in,
      O => \rxc_out[2]_i_1_n_0\
    );
\rxc_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxc_half_pipe(3),
      I1 => \rxd_out[31]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      O => \rxc_out[3]_i_1_n_0\
    );
\rxc_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rxc_pipe_reg_n_0_[0]\,
      I1 => \rxd_out[39]_i_2_n_0\,
      I2 => \tx_is_idle_pipe_reg_n_0_[0]\,
      O => \rxc_out[4]_i_1_n_0\
    );
\rxc_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => c78_in,
      I1 => \rxd_out[47]_i_2_n_0\,
      I2 => p_2_in,
      O => \rxc_out[5]_i_1_n_0\
    );
\rxc_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBFB"
    )
        port map (
      I0 => c75_in,
      I1 => \rxd_out[55]_i_4_n_0\,
      I2 => \rxd_out[55]_i_3_n_0\,
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => code_error_delay(6),
      I5 => p_4_in,
      O => \rxc_out[6]_i_1_n_0\
    );
\rxc_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => c72_in,
      I1 => \rxd_out[63]_i_3_n_0\,
      I2 => p_11_in,
      O => \rxc_out[7]_i_1_n_0\
    );
\rxc_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[0]_i_1_n_0\,
      Q => xgmii_rxc(0),
      R => '0'
    );
\rxc_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[1]_i_1_n_0\,
      Q => xgmii_rxc(1),
      R => local_fault
    );
\rxc_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[2]_i_1_n_0\,
      Q => xgmii_rxc(2),
      R => local_fault
    );
\rxc_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[3]_i_1_n_0\,
      Q => xgmii_rxc(3),
      R => local_fault
    );
\rxc_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[4]_i_1_n_0\,
      Q => xgmii_rxc(4),
      R => '0'
    );
\rxc_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[5]_i_1_n_0\,
      Q => xgmii_rxc(5),
      R => local_fault
    );
\rxc_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[6]_i_1_n_0\,
      Q => xgmii_rxc(6),
      R => local_fault
    );
\rxc_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxc_out[7]_i_1_n_0\,
      Q => xgmii_rxc(7),
      R => local_fault
    );
\rxc_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(0),
      Q => \rxc_pipe_reg_n_0_[0]\,
      R => '0'
    );
\rxc_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(2),
      Q => c78_in,
      R => '0'
    );
\rxc_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(4),
      Q => c75_in,
      R => '0'
    );
\rxc_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(6),
      Q => c72_in,
      R => '0'
    );
\rxc_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(1),
      Q => c153_in,
      R => '0'
    );
\rxc_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(3),
      Q => c3_in,
      R => '0'
    );
\rxc_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(5),
      Q => c7_in,
      R => '0'
    );
\rxc_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxcharisk(7),
      Q => c11_in,
      R => '0'
    );
\rxd_half_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(0),
      Q => rxd_half_pipe(0),
      R => '0'
    );
\rxd_half_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[42]\,
      Q => rxd_half_pipe(10),
      R => '0'
    );
\rxd_half_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[43]\,
      Q => rxd_half_pipe(11),
      R => '0'
    );
\rxd_half_pipe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[44]\,
      Q => rxd_half_pipe(12),
      R => '0'
    );
\rxd_half_pipe_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[45]\,
      Q => rxd_half_pipe(13),
      R => '0'
    );
\rxd_half_pipe_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[46]\,
      Q => rxd_half_pipe(14),
      R => '0'
    );
\rxd_half_pipe_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[47]\,
      Q => rxd_half_pipe(15),
      R => '0'
    );
\rxd_half_pipe_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[48]\,
      Q => rxd_half_pipe(16),
      R => '0'
    );
\rxd_half_pipe_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[49]\,
      Q => rxd_half_pipe(17),
      R => '0'
    );
\rxd_half_pipe_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[50]\,
      Q => rxd_half_pipe(18),
      R => '0'
    );
\rxd_half_pipe_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[51]\,
      Q => rxd_half_pipe(19),
      R => '0'
    );
\rxd_half_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(1),
      Q => rxd_half_pipe(1),
      R => '0'
    );
\rxd_half_pipe_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[52]\,
      Q => rxd_half_pipe(20),
      R => '0'
    );
\rxd_half_pipe_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[53]\,
      Q => rxd_half_pipe(21),
      R => '0'
    );
\rxd_half_pipe_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[54]\,
      Q => rxd_half_pipe(22),
      R => '0'
    );
\rxd_half_pipe_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[55]\,
      Q => rxd_half_pipe(23),
      R => '0'
    );
\rxd_half_pipe_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[56]\,
      Q => rxd_half_pipe(24),
      R => '0'
    );
\rxd_half_pipe_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[57]\,
      Q => rxd_half_pipe(25),
      R => '0'
    );
\rxd_half_pipe_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[58]\,
      Q => rxd_half_pipe(26),
      R => '0'
    );
\rxd_half_pipe_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[59]\,
      Q => rxd_half_pipe(27),
      R => '0'
    );
\rxd_half_pipe_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[60]\,
      Q => rxd_half_pipe(28),
      R => '0'
    );
\rxd_half_pipe_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[61]\,
      Q => rxd_half_pipe(29),
      R => '0'
    );
\rxd_half_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(2),
      Q => rxd_half_pipe(2),
      R => '0'
    );
\rxd_half_pipe_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[62]\,
      Q => rxd_half_pipe(30),
      R => '0'
    );
\rxd_half_pipe_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[63]\,
      Q => rxd_half_pipe(31),
      R => '0'
    );
\rxd_half_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(3),
      Q => rxd_half_pipe(3),
      R => '0'
    );
\rxd_half_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(4),
      Q => rxd_half_pipe(4),
      R => '0'
    );
\rxd_half_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(5),
      Q => rxd_half_pipe(5),
      R => '0'
    );
\rxd_half_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(6),
      Q => rxd_half_pipe(6),
      R => '0'
    );
\rxd_half_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(7),
      Q => rxd_half_pipe(7),
      R => '0'
    );
\rxd_half_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[40]\,
      Q => rxd_half_pipe(8),
      R => '0'
    );
\rxd_half_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_pipe_reg_n_0_[41]\,
      Q => rxd_half_pipe(9),
      R => '0'
    );
\rxd_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rxd_half_pipe(0),
      I1 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      I2 => \rxd_out[7]_i_2_n_0\,
      O => \rxd_out[0]_i_1_n_0\
    );
\rxd_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxd_half_pipe(10),
      I1 => \rxd_out[15]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      O => \rxd_out[10]_i_1_n_0\
    );
\rxd_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      I1 => rxd_half_pipe(11),
      I2 => \rxd_out[15]_i_2_n_0\,
      O => \rxd_out[11]_i_1_n_0\
    );
\rxd_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      I1 => rxd_half_pipe(12),
      I2 => \rxd_out[15]_i_2_n_0\,
      O => \rxd_out[12]_i_1_n_0\
    );
\rxd_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      I1 => rxd_half_pipe(13),
      I2 => \rxd_out[15]_i_2_n_0\,
      O => \rxd_out[13]_i_1_n_0\
    );
\rxd_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      I1 => rxd_half_pipe(14),
      I2 => \rxd_out[15]_i_2_n_0\,
      O => \rxd_out[14]_i_1_n_0\
    );
\rxd_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      I1 => rxd_half_pipe(15),
      I2 => \rxd_out[15]_i_2_n_0\,
      O => \rxd_out[15]_i_1_n_0\
    );
\rxd_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF5551"
    )
        port map (
      I0 => \lane_terminate_temp_reg_n_0_[0]\,
      I1 => \rxd_out[15]_i_3_n_0\,
      I2 => lane_term_pipe(1),
      I3 => lane_term_pipe(0),
      I4 => \rxd_out[15]_i_4_n_0\,
      I5 => code_error_delay(1),
      O => \rxd_out[15]_i_2_n_0\
    );
\rxd_out[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => lane_term_pipe(3),
      I1 => lane_term_pipe(2),
      O => \rxd_out[15]_i_3_n_0\
    );
\rxd_out[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22220020"
    )
        port map (
      I0 => \rxd_out[15]_i_5_n_0\,
      I1 => \rxd_out[15]_i_6_n_0\,
      I2 => p_3_in(6),
      I3 => \lane_terminate_temp_reg_n_0_[0]\,
      I4 => p_3_in(7),
      O => \rxd_out[15]_i_4_n_0\
    );
\rxd_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => p_3_in(6),
      I1 => p_3_in(7),
      I2 => p_3_in(1),
      I3 => p_3_in(2),
      I4 => p_3_in(3),
      I5 => c78_in,
      O => \rxd_out[15]_i_5_n_0\
    );
\rxd_out[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => p_3_in(4),
      I1 => p_3_in(5),
      I2 => p_3_in(0),
      I3 => code_error_delay(5),
      O => \rxd_out[15]_i_6_n_0\
    );
\rxd_out[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \rxd_out[23]_i_2_n_0\,
      I1 => align_status_reg,
      I2 => p_0_in0_in,
      I3 => rxd_half_pipe(16),
      O => \rxd_out[16]_i_1_n_0\
    );
\rxd_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxd_half_pipe(17),
      I1 => \rxd_out[23]_i_2_n_0\,
      I2 => p_0_in0_in,
      O => \rxd_out[17]_i_1_n_0\
    );
\rxd_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxd_half_pipe(18),
      I1 => \rxd_out[23]_i_2_n_0\,
      I2 => p_0_in0_in,
      O => \rxd_out[18]_i_1_n_0\
    );
\rxd_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rxd_half_pipe(19),
      I2 => \rxd_out[23]_i_2_n_0\,
      O => \rxd_out[19]_i_1_n_0\
    );
\rxd_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rxd_out[6]_i_2_n_0\,
      I1 => rxd_half_pipe(1),
      I2 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      O => \rxd_out[1]_i_1_n_0\
    );
\rxd_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rxd_half_pipe(20),
      I2 => \rxd_out[23]_i_2_n_0\,
      O => \rxd_out[20]_i_1_n_0\
    );
\rxd_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rxd_half_pipe(21),
      I2 => \rxd_out[23]_i_2_n_0\,
      O => \rxd_out[21]_i_1_n_0\
    );
\rxd_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rxd_half_pipe(22),
      I2 => \rxd_out[23]_i_2_n_0\,
      O => \rxd_out[22]_i_1_n_0\
    );
\rxd_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => rxd_half_pipe(23),
      I2 => \rxd_out[23]_i_2_n_0\,
      O => \rxd_out[23]_i_1_n_0\
    );
\rxd_out[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555557FF"
    )
        port map (
      I0 => \rxd_out[23]_i_3_n_0\,
      I1 => p_5_in(7),
      I2 => \rxd_out[23]_i_4_n_0\,
      I3 => p_5_in(6),
      I4 => \rxd_out[23]_i_5_n_0\,
      I5 => code_error_delay(2),
      O => \rxd_out[23]_i_2_n_0\
    );
\rxd_out[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEFEE"
    )
        port map (
      I0 => p_2_in_0,
      I1 => \lane_terminate_temp_reg_n_0_[0]\,
      I2 => lane_term_pipe(2),
      I3 => lane_term_pipe(3),
      I4 => lane_term_pipe(1),
      I5 => lane_term_pipe(0),
      O => \rxd_out[23]_i_3_n_0\
    );
\rxd_out[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lane_terminate_temp_reg_n_0_[0]\,
      I1 => p_2_in_0,
      O => \rxd_out[23]_i_4_n_0\
    );
\rxd_out[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => code_error_delay(6),
      I1 => p_5_in(5),
      I2 => p_5_in(0),
      I3 => p_5_in(4),
      I4 => \rxd_out[23]_i_6_n_0\,
      O => \rxd_out[23]_i_5_n_0\
    );
\rxd_out[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_5_in(6),
      I1 => p_5_in(7),
      I2 => p_5_in(1),
      I3 => p_5_in(3),
      I4 => p_5_in(2),
      I5 => c75_in,
      O => \rxd_out[23]_i_6_n_0\
    );
\rxd_out[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FF"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      I1 => rxd_half_pipe(24),
      I2 => \rxd_out[31]_i_2_n_0\,
      I3 => align_status_reg,
      O => \rxd_out[24]_i_1_n_0\
    );
\rxd_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxd_half_pipe(25),
      I1 => \rxd_out[31]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      O => \rxd_out[25]_i_1_n_0\
    );
\rxd_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxd_half_pipe(26),
      I1 => \rxd_out[31]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      O => \rxd_out[26]_i_1_n_0\
    );
\rxd_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      I1 => rxd_half_pipe(27),
      I2 => \rxd_out[31]_i_2_n_0\,
      O => \rxd_out[27]_i_1_n_0\
    );
\rxd_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      I1 => rxd_half_pipe(28),
      I2 => \rxd_out[31]_i_2_n_0\,
      O => \rxd_out[28]_i_1_n_0\
    );
\rxd_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      I1 => rxd_half_pipe(29),
      I2 => \rxd_out[31]_i_2_n_0\,
      O => \rxd_out[29]_i_1_n_0\
    );
\rxd_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rxd_half_pipe(2),
      I1 => \rxd_out[7]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      O => \rxd_out[2]_i_1_n_0\
    );
\rxd_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      I1 => rxd_half_pipe(30),
      I2 => \rxd_out[31]_i_2_n_0\,
      O => \rxd_out[30]_i_1_n_0\
    );
\rxd_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      I1 => rxd_half_pipe(31),
      I2 => \rxd_out[31]_i_2_n_0\,
      O => \rxd_out[31]_i_1_n_0\
    );
\rxd_out[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000101FF01"
    )
        port map (
      I0 => p_0_in,
      I1 => p_2_in_0,
      I2 => \lane_terminate_temp_reg_n_0_[0]\,
      I3 => \rxd_out[31]_i_3_n_0\,
      I4 => \rxd_out[31]_i_4_n_0\,
      I5 => code_error_delay(3),
      O => \rxd_out[31]_i_2_n_0\
    );
\rxd_out[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[30]\,
      I1 => code_error_delay(7),
      I2 => \rxd_pipe_reg_n_0_[31]\,
      I3 => \rxd_pipe_reg_n_0_[24]\,
      O => \rxd_out[31]_i_3_n_0\
    );
\rxd_out[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[26]\,
      I1 => \rxd_pipe_reg_n_0_[25]\,
      I2 => c72_in,
      I3 => \rxd_pipe_reg_n_0_[29]\,
      I4 => \rxd_pipe_reg_n_0_[27]\,
      I5 => \rxd_pipe_reg_n_0_[28]\,
      O => \rxd_out[31]_i_4_n_0\
    );
\rxd_out[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I1 => \rxd_pipe_reg_n_0_[0]\,
      I2 => \rxd_out[39]_i_2_n_0\,
      O => \rxd_out[32]_i_1_n_0\
    );
\rxd_out[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rxd_out[38]_i_2_n_0\,
      I1 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I2 => \rxd_pipe_reg_n_0_[1]\,
      O => \rxd_out[33]_i_1_n_0\
    );
\rxd_out[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[2]\,
      I1 => \rxd_out[39]_i_2_n_0\,
      I2 => \tx_is_idle_pipe_reg_n_0_[0]\,
      O => \rxd_out[34]_i_1_n_0\
    );
\rxd_out[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[39]_i_2_n_0\,
      I1 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I2 => \rxd_pipe_reg_n_0_[3]\,
      O => \rxd_out[35]_i_1_n_0\
    );
\rxd_out[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[39]_i_2_n_0\,
      I1 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I2 => \rxd_pipe_reg_n_0_[4]\,
      O => \rxd_out[36]_i_1_n_0\
    );
\rxd_out[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[38]_i_2_n_0\,
      I1 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I2 => \rxd_pipe_reg_n_0_[5]\,
      O => \rxd_out[37]_i_1_n_0\
    );
\rxd_out[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[38]_i_2_n_0\,
      I1 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I2 => \rxd_pipe_reg_n_0_[6]\,
      O => \rxd_out[38]_i_1_n_0\
    );
\rxd_out[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABBBBBBBA"
    )
        port map (
      I0 => code_error_delay(4),
      I1 => \rxd_out[39]_i_4_n_0\,
      I2 => p_0_in,
      I3 => \lane_terminate_temp_reg_n_0_[3]\,
      I4 => p_2_in_0,
      I5 => \lane_terminate_temp_reg_n_0_[0]\,
      O => \rxd_out[38]_i_2_n_0\
    );
\rxd_out[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \tx_is_idle_pipe_reg_n_0_[0]\,
      I1 => \rxd_pipe_reg_n_0_[7]\,
      I2 => \rxd_out[39]_i_2_n_0\,
      O => \rxd_out[39]_i_1_n_0\
    );
\rxd_out[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0054FFFFFFFF"
    )
        port map (
      I0 => \lane_terminate_temp_reg_n_0_[0]\,
      I1 => p_2_in_0,
      I2 => \rxd_out[39]_i_3_n_0\,
      I3 => \rxd_out[39]_i_4_n_0\,
      I4 => code_error_delay(4),
      I5 => align_status_reg,
      O => \rxd_out[39]_i_2_n_0\
    );
\rxd_out[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => \lane_terminate_temp_reg_n_0_[3]\,
      O => \rxd_out[39]_i_3_n_0\
    );
\rxd_out[39]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002800"
    )
        port map (
      I0 => c153_in,
      I1 => d(7),
      I2 => d(6),
      I3 => d(5),
      I4 => \tx_is_idle_half_pipe[0]_i_2_n_0\,
      I5 => \code_error_pipe_reg_n_0_[4]\,
      O => \rxd_out[39]_i_4_n_0\
    );
\rxd_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[7]_i_2_n_0\,
      I1 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      I2 => rxd_half_pipe(3),
      O => \rxd_out[3]_i_1_n_0\
    );
\rxd_out[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \rxd_out[47]_i_2_n_0\,
      I1 => align_status_reg,
      I2 => p_2_in,
      I3 => p_3_in(0),
      O => \rxd_out[40]_i_1_n_0\
    );
\rxd_out[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => p_3_in(1),
      I1 => \rxd_out[47]_i_2_n_0\,
      I2 => p_2_in,
      O => \rxd_out[41]_i_1_n_0\
    );
\rxd_out[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => p_3_in(2),
      I1 => \rxd_out[47]_i_2_n_0\,
      I2 => p_2_in,
      O => \rxd_out[42]_i_1_n_0\
    );
\rxd_out[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in(3),
      I2 => \rxd_out[47]_i_2_n_0\,
      O => \rxd_out[43]_i_1_n_0\
    );
\rxd_out[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in(4),
      I2 => \rxd_out[47]_i_2_n_0\,
      O => \rxd_out[44]_i_1_n_0\
    );
\rxd_out[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in(5),
      I2 => \rxd_out[47]_i_2_n_0\,
      O => \rxd_out[45]_i_1_n_0\
    );
\rxd_out[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in(6),
      I2 => \rxd_out[47]_i_2_n_0\,
      O => \rxd_out[46]_i_1_n_0\
    );
\rxd_out[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in(7),
      I2 => \rxd_out[47]_i_2_n_0\,
      O => \rxd_out[47]_i_1_n_0\
    );
\rxd_out[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => \rxd_out[47]_i_3_n_0\,
      I1 => \lane_terminate_temp_reg_n_0_[4]\,
      I2 => \rxd_out[47]_i_4_n_0\,
      I3 => code_error_delay(5),
      O => \rxd_out[47]_i_2_n_0\
    );
\rxd_out[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1F1F1F1FFF1F1"
    )
        port map (
      I0 => p_0_in,
      I1 => \lane_terminate_temp_reg_n_0_[3]\,
      I2 => \rxd_out[23]_i_4_n_0\,
      I3 => \rxd_out[47]_i_5_n_0\,
      I4 => \tx_is_idle_half_pipe[1]_i_2_n_0\,
      I5 => \code_error_pipe_reg_n_0_[5]\,
      O => \rxd_out[47]_i_3_n_0\
    );
\rxd_out[47]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \tx_is_idle_half_pipe[1]_i_2_n_0\,
      I1 => \code_error_pipe_reg_n_0_[5]\,
      I2 => \rxd_pipe_reg_n_0_[47]\,
      I3 => \rxd_pipe_reg_n_0_[46]\,
      I4 => c3_in,
      I5 => \rxd_pipe_reg_n_0_[45]\,
      O => \rxd_out[47]_i_4_n_0\
    );
\rxd_out[47]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F77F"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[45]\,
      I1 => c3_in,
      I2 => \rxd_pipe_reg_n_0_[47]\,
      I3 => \rxd_pipe_reg_n_0_[46]\,
      O => \rxd_out[47]_i_5_n_0\
    );
\rxd_out[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \rxd_out[48]_i_2_n_0\,
      I1 => \rxd_out[55]_i_4_n_0\,
      I2 => align_status_reg,
      I3 => p_4_in,
      I4 => p_5_in(0),
      O => \rxd_out[48]_i_1_n_0\
    );
\rxd_out[48]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFBAA"
    )
        port map (
      I0 => code_error_delay(6),
      I1 => \tx_is_idle_half_pipe[2]_i_2_n_0\,
      I2 => \rxd_out[48]_i_3_n_0\,
      I3 => \lane_terminate_temp_reg_n_0_[4]\,
      I4 => \lane_terminate_temp_reg_n_0_[5]\,
      O => \rxd_out[48]_i_2_n_0\
    );
\rxd_out[48]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[53]\,
      I1 => c7_in,
      I2 => \rxd_pipe_reg_n_0_[54]\,
      I3 => \rxd_pipe_reg_n_0_[55]\,
      I4 => \code_error_pipe_reg_n_0_[6]\,
      O => \rxd_out[48]_i_3_n_0\
    );
\rxd_out[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBFB"
    )
        port map (
      I0 => p_5_in(1),
      I1 => \rxd_out[55]_i_4_n_0\,
      I2 => \rxd_out[55]_i_3_n_0\,
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => code_error_delay(6),
      I5 => p_4_in,
      O => \rxd_out[49]_i_1_n_0\
    );
\rxd_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[7]_i_2_n_0\,
      I1 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      I2 => rxd_half_pipe(4),
      O => \rxd_out[4]_i_1_n_0\
    );
\rxd_out[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBFB"
    )
        port map (
      I0 => p_5_in(2),
      I1 => \rxd_out[55]_i_4_n_0\,
      I2 => \rxd_out[55]_i_3_n_0\,
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => code_error_delay(6),
      I5 => p_4_in,
      O => \rxd_out[50]_i_1_n_0\
    );
\rxd_out[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in(3),
      I2 => code_error_delay(6),
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => \rxd_out[55]_i_3_n_0\,
      I5 => \rxd_out[55]_i_4_n_0\,
      O => \rxd_out[51]_i_1_n_0\
    );
\rxd_out[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in(4),
      I2 => code_error_delay(6),
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => \rxd_out[55]_i_3_n_0\,
      I5 => \rxd_out[55]_i_4_n_0\,
      O => \rxd_out[52]_i_1_n_0\
    );
\rxd_out[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in(5),
      I2 => code_error_delay(6),
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => \rxd_out[55]_i_3_n_0\,
      I5 => \rxd_out[55]_i_4_n_0\,
      O => \rxd_out[53]_i_1_n_0\
    );
\rxd_out[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in(6),
      I2 => code_error_delay(6),
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => \rxd_out[55]_i_3_n_0\,
      I5 => \rxd_out[55]_i_4_n_0\,
      O => \rxd_out[54]_i_1_n_0\
    );
\rxd_out[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
        port map (
      I0 => p_4_in,
      I1 => p_5_in(7),
      I2 => code_error_delay(6),
      I3 => \rxd_out[55]_i_2_n_0\,
      I4 => \rxd_out[55]_i_3_n_0\,
      I5 => \rxd_out[55]_i_4_n_0\,
      O => \rxd_out[55]_i_1_n_0\
    );
\rxd_out[55]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \tx_is_idle_half_pipe[2]_i_2_n_0\,
      I1 => \code_error_pipe_reg_n_0_[6]\,
      I2 => \rxd_pipe_reg_n_0_[55]\,
      I3 => \rxd_pipe_reg_n_0_[54]\,
      I4 => c7_in,
      I5 => \rxd_pipe_reg_n_0_[53]\,
      O => \rxd_out[55]_i_2_n_0\
    );
\rxd_out[55]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lane_terminate_temp_reg_n_0_[4]\,
      I1 => \lane_terminate_temp_reg_n_0_[5]\,
      O => \rxd_out[55]_i_3_n_0\
    );
\rxd_out[55]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFDFFFF"
    )
        port map (
      I0 => \lane_terminate_temp_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => p_2_in_0,
      I3 => \lane_terminate_temp_reg_n_0_[0]\,
      I4 => \rxd_out[55]_i_5_n_0\,
      I5 => \code_error_pipe_reg_n_0_[6]\,
      O => \rxd_out[55]_i_4_n_0\
    );
\rxd_out[55]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFFFFFF"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[54]\,
      I1 => \rxd_pipe_reg_n_0_[55]\,
      I2 => c7_in,
      I3 => \rxd_pipe_reg_n_0_[53]\,
      I4 => \tx_is_idle_half_pipe[2]_i_2_n_0\,
      O => \rxd_out[55]_i_5_n_0\
    );
\rxd_out[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FF"
    )
        port map (
      I0 => p_11_in,
      I1 => \rxd_pipe_reg_n_0_[24]\,
      I2 => \rxd_out[63]_i_3_n_0\,
      I3 => align_status_reg,
      O => \rxd_out[56]_i_1_n_0\
    );
\rxd_out[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[25]\,
      I1 => \rxd_out[63]_i_3_n_0\,
      I2 => p_11_in,
      O => \rxd_out[57]_i_1_n_0\
    );
\rxd_out[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[26]\,
      I1 => \rxd_out[63]_i_3_n_0\,
      I2 => p_11_in,
      O => \rxd_out[58]_i_1_n_0\
    );
\rxd_out[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_11_in,
      I1 => \rxd_pipe_reg_n_0_[27]\,
      I2 => \rxd_out[63]_i_3_n_0\,
      O => \rxd_out[59]_i_1_n_0\
    );
\rxd_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[6]_i_2_n_0\,
      I1 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      I2 => rxd_half_pipe(5),
      O => \rxd_out[5]_i_1_n_0\
    );
\rxd_out[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_11_in,
      I1 => \rxd_pipe_reg_n_0_[28]\,
      I2 => \rxd_out[63]_i_3_n_0\,
      O => \rxd_out[60]_i_1_n_0\
    );
\rxd_out[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_11_in,
      I1 => \rxd_pipe_reg_n_0_[29]\,
      I2 => \rxd_out[63]_i_3_n_0\,
      O => \rxd_out[61]_i_1_n_0\
    );
\rxd_out[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_11_in,
      I1 => \rxd_pipe_reg_n_0_[30]\,
      I2 => \rxd_out[63]_i_3_n_0\,
      O => \rxd_out[62]_i_1_n_0\
    );
\rxd_out[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => p_11_in,
      I1 => \rxd_pipe_reg_n_0_[31]\,
      I2 => \rxd_out[63]_i_3_n_0\,
      O => \rxd_out[63]_i_2_n_0\
    );
\rxd_out[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000101FF01"
    )
        port map (
      I0 => \lane_terminate_temp_reg_n_0_[6]\,
      I1 => \lane_terminate_temp_reg_n_0_[5]\,
      I2 => \lane_terminate_temp_reg_n_0_[4]\,
      I3 => \tx_is_idle_half_pipe[3]_i_2_n_0\,
      I4 => \rxd_out[63]_i_4_n_0\,
      I5 => code_error_delay(7),
      O => \rxd_out[63]_i_3_n_0\
    );
\rxd_out[63]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \code_error_pipe_reg_n_0_[7]\,
      I1 => \rxd_pipe_reg_n_0_[63]\,
      I2 => c11_in,
      I3 => \rxd_pipe_reg_n_0_[62]\,
      I4 => \rxd_pipe_reg_n_0_[61]\,
      O => \rxd_out[63]_i_4_n_0\
    );
\rxd_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \rxd_out[6]_i_2_n_0\,
      I1 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      I2 => rxd_half_pipe(6),
      O => \rxd_out[6]_i_1_n_0\
    );
\rxd_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBAAAAAAAAA"
    )
        port map (
      I0 => code_error_delay(0),
      I1 => lane_term_pipe(0),
      I2 => lane_term_pipe(3),
      I3 => lane_term_pipe(2),
      I4 => lane_term_pipe(1),
      I5 => \rxd_out[7]_i_3_n_0\,
      O => \rxd_out[6]_i_2_n_0\
    );
\rxd_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      I1 => rxd_half_pipe(7),
      I2 => \rxd_out[7]_i_2_n_0\,
      O => \rxd_out[7]_i_1_n_0\
    );
\rxd_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A8FFFFFFFF"
    )
        port map (
      I0 => \rxd_out[7]_i_3_n_0\,
      I1 => lane_term_pipe(1),
      I2 => \rxd_out[15]_i_3_n_0\,
      I3 => lane_term_pipe(0),
      I4 => code_error_delay(0),
      I5 => align_status_reg,
      O => \rxd_out[7]_i_2_n_0\
    );
\rxd_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => code_error_delay(4),
      I1 => \rxc_pipe_reg_n_0_[0]\,
      I2 => \rxd_pipe_reg_n_0_[5]\,
      I3 => \rxd_pipe_reg_n_0_[4]\,
      I4 => \rxd_out[7]_i_4_n_0\,
      O => \rxd_out[7]_i_3_n_0\
    );
\rxd_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF9FFFFFFFFFF"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[6]\,
      I1 => \rxd_pipe_reg_n_0_[7]\,
      I2 => \rxd_pipe_reg_n_0_[1]\,
      I3 => \rxd_pipe_reg_n_0_[2]\,
      I4 => \rxd_pipe_reg_n_0_[0]\,
      I5 => \rxd_pipe_reg_n_0_[3]\,
      O => \rxd_out[7]_i_4_n_0\
    );
\rxd_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \rxd_out[15]_i_2_n_0\,
      I1 => align_status_reg,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      I3 => rxd_half_pipe(8),
      O => \rxd_out[8]_i_1_n_0\
    );
\rxd_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxd_half_pipe(9),
      I1 => \rxd_out[15]_i_2_n_0\,
      I2 => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      O => \rxd_out[9]_i_1_n_0\
    );
\rxd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[0]_i_1_n_0\,
      Q => xgmii_rxd(0),
      R => '0'
    );
\rxd_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[10]_i_1_n_0\,
      Q => xgmii_rxd(10),
      R => local_fault
    );
\rxd_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[11]_i_1_n_0\,
      Q => xgmii_rxd(11),
      R => local_fault
    );
\rxd_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[12]_i_1_n_0\,
      Q => xgmii_rxd(12),
      R => local_fault
    );
\rxd_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[13]_i_1_n_0\,
      Q => xgmii_rxd(13),
      R => local_fault
    );
\rxd_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[14]_i_1_n_0\,
      Q => xgmii_rxd(14),
      R => local_fault
    );
\rxd_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[15]_i_1_n_0\,
      Q => xgmii_rxd(15),
      R => local_fault
    );
\rxd_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[16]_i_1_n_0\,
      Q => xgmii_rxd(16),
      R => '0'
    );
\rxd_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[17]_i_1_n_0\,
      Q => xgmii_rxd(17),
      R => local_fault
    );
\rxd_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[18]_i_1_n_0\,
      Q => xgmii_rxd(18),
      R => local_fault
    );
\rxd_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[19]_i_1_n_0\,
      Q => xgmii_rxd(19),
      R => local_fault
    );
\rxd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[1]_i_1_n_0\,
      Q => xgmii_rxd(1),
      R => local_fault
    );
\rxd_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[20]_i_1_n_0\,
      Q => xgmii_rxd(20),
      R => local_fault
    );
\rxd_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[21]_i_1_n_0\,
      Q => xgmii_rxd(21),
      R => local_fault
    );
\rxd_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[22]_i_1_n_0\,
      Q => xgmii_rxd(22),
      R => local_fault
    );
\rxd_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[23]_i_1_n_0\,
      Q => xgmii_rxd(23),
      R => local_fault
    );
\rxd_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[24]_i_1_n_0\,
      Q => xgmii_rxd(24),
      R => '0'
    );
\rxd_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[25]_i_1_n_0\,
      Q => xgmii_rxd(25),
      R => local_fault
    );
\rxd_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[26]_i_1_n_0\,
      Q => xgmii_rxd(26),
      R => local_fault
    );
\rxd_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[27]_i_1_n_0\,
      Q => xgmii_rxd(27),
      R => local_fault
    );
\rxd_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[28]_i_1_n_0\,
      Q => xgmii_rxd(28),
      R => local_fault
    );
\rxd_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[29]_i_1_n_0\,
      Q => xgmii_rxd(29),
      R => local_fault
    );
\rxd_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[2]_i_1_n_0\,
      Q => xgmii_rxd(2),
      R => '0'
    );
\rxd_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[30]_i_1_n_0\,
      Q => xgmii_rxd(30),
      R => local_fault
    );
\rxd_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[31]_i_1_n_0\,
      Q => xgmii_rxd(31),
      R => local_fault
    );
\rxd_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[32]_i_1_n_0\,
      Q => xgmii_rxd(32),
      R => '0'
    );
\rxd_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[33]_i_1_n_0\,
      Q => xgmii_rxd(33),
      R => local_fault
    );
\rxd_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[34]_i_1_n_0\,
      Q => xgmii_rxd(34),
      R => '0'
    );
\rxd_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[35]_i_1_n_0\,
      Q => xgmii_rxd(35),
      R => '0'
    );
\rxd_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[36]_i_1_n_0\,
      Q => xgmii_rxd(36),
      R => '0'
    );
\rxd_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[37]_i_1_n_0\,
      Q => xgmii_rxd(37),
      R => local_fault
    );
\rxd_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[38]_i_1_n_0\,
      Q => xgmii_rxd(38),
      R => local_fault
    );
\rxd_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[39]_i_1_n_0\,
      Q => xgmii_rxd(39),
      R => '0'
    );
\rxd_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[3]_i_1_n_0\,
      Q => xgmii_rxd(3),
      R => '0'
    );
\rxd_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[40]_i_1_n_0\,
      Q => xgmii_rxd(40),
      R => '0'
    );
\rxd_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[41]_i_1_n_0\,
      Q => xgmii_rxd(41),
      R => local_fault
    );
\rxd_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[42]_i_1_n_0\,
      Q => xgmii_rxd(42),
      R => local_fault
    );
\rxd_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[43]_i_1_n_0\,
      Q => xgmii_rxd(43),
      R => local_fault
    );
\rxd_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[44]_i_1_n_0\,
      Q => xgmii_rxd(44),
      R => local_fault
    );
\rxd_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[45]_i_1_n_0\,
      Q => xgmii_rxd(45),
      R => local_fault
    );
\rxd_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[46]_i_1_n_0\,
      Q => xgmii_rxd(46),
      R => local_fault
    );
\rxd_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[47]_i_1_n_0\,
      Q => xgmii_rxd(47),
      R => local_fault
    );
\rxd_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[48]_i_1_n_0\,
      Q => xgmii_rxd(48),
      R => '0'
    );
\rxd_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[49]_i_1_n_0\,
      Q => xgmii_rxd(49),
      R => local_fault
    );
\rxd_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[4]_i_1_n_0\,
      Q => xgmii_rxd(4),
      R => '0'
    );
\rxd_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[50]_i_1_n_0\,
      Q => xgmii_rxd(50),
      R => local_fault
    );
\rxd_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[51]_i_1_n_0\,
      Q => xgmii_rxd(51),
      R => local_fault
    );
\rxd_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[52]_i_1_n_0\,
      Q => xgmii_rxd(52),
      R => local_fault
    );
\rxd_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[53]_i_1_n_0\,
      Q => xgmii_rxd(53),
      R => local_fault
    );
\rxd_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[54]_i_1_n_0\,
      Q => xgmii_rxd(54),
      R => local_fault
    );
\rxd_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[55]_i_1_n_0\,
      Q => xgmii_rxd(55),
      R => local_fault
    );
\rxd_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[56]_i_1_n_0\,
      Q => xgmii_rxd(56),
      R => '0'
    );
\rxd_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[57]_i_1_n_0\,
      Q => xgmii_rxd(57),
      R => local_fault
    );
\rxd_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[58]_i_1_n_0\,
      Q => xgmii_rxd(58),
      R => local_fault
    );
\rxd_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[59]_i_1_n_0\,
      Q => xgmii_rxd(59),
      R => local_fault
    );
\rxd_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[5]_i_1_n_0\,
      Q => xgmii_rxd(5),
      R => local_fault
    );
\rxd_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[60]_i_1_n_0\,
      Q => xgmii_rxd(60),
      R => local_fault
    );
\rxd_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[61]_i_1_n_0\,
      Q => xgmii_rxd(61),
      R => local_fault
    );
\rxd_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[62]_i_1_n_0\,
      Q => xgmii_rxd(62),
      R => local_fault
    );
\rxd_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[63]_i_2_n_0\,
      Q => xgmii_rxd(63),
      R => local_fault
    );
\rxd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[6]_i_1_n_0\,
      Q => xgmii_rxd(6),
      R => local_fault
    );
\rxd_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[7]_i_1_n_0\,
      Q => xgmii_rxd(7),
      R => '0'
    );
\rxd_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[8]_i_1_n_0\,
      Q => xgmii_rxd(8),
      R => '0'
    );
\rxd_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \rxd_out[9]_i_1_n_0\,
      Q => xgmii_rxd(9),
      R => local_fault
    );
\rxd_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(0),
      Q => \rxd_pipe_reg_n_0_[0]\,
      R => '0'
    );
\rxd_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(18),
      Q => p_3_in(2),
      R => '0'
    );
\rxd_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(19),
      Q => p_3_in(3),
      R => '0'
    );
\rxd_pipe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(20),
      Q => p_3_in(4),
      R => '0'
    );
\rxd_pipe_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(21),
      Q => p_3_in(5),
      R => '0'
    );
\rxd_pipe_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(22),
      Q => p_3_in(6),
      R => '0'
    );
\rxd_pipe_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(23),
      Q => p_3_in(7),
      R => '0'
    );
\rxd_pipe_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(32),
      Q => p_5_in(0),
      R => '0'
    );
\rxd_pipe_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(33),
      Q => p_5_in(1),
      R => '0'
    );
\rxd_pipe_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(34),
      Q => p_5_in(2),
      R => '0'
    );
\rxd_pipe_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(35),
      Q => p_5_in(3),
      R => '0'
    );
\rxd_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(1),
      Q => \rxd_pipe_reg_n_0_[1]\,
      R => '0'
    );
\rxd_pipe_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(36),
      Q => p_5_in(4),
      R => '0'
    );
\rxd_pipe_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(37),
      Q => p_5_in(5),
      R => '0'
    );
\rxd_pipe_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(38),
      Q => p_5_in(6),
      R => '0'
    );
\rxd_pipe_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(39),
      Q => p_5_in(7),
      R => '0'
    );
\rxd_pipe_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(48),
      Q => \rxd_pipe_reg_n_0_[24]\,
      R => '0'
    );
\rxd_pipe_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(49),
      Q => \rxd_pipe_reg_n_0_[25]\,
      R => '0'
    );
\rxd_pipe_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(50),
      Q => \rxd_pipe_reg_n_0_[26]\,
      R => '0'
    );
\rxd_pipe_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(51),
      Q => \rxd_pipe_reg_n_0_[27]\,
      R => '0'
    );
\rxd_pipe_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(52),
      Q => \rxd_pipe_reg_n_0_[28]\,
      R => '0'
    );
\rxd_pipe_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(53),
      Q => \rxd_pipe_reg_n_0_[29]\,
      R => '0'
    );
\rxd_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(2),
      Q => \rxd_pipe_reg_n_0_[2]\,
      R => '0'
    );
\rxd_pipe_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(54),
      Q => \rxd_pipe_reg_n_0_[30]\,
      R => '0'
    );
\rxd_pipe_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(55),
      Q => \rxd_pipe_reg_n_0_[31]\,
      R => '0'
    );
\rxd_pipe_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(8),
      Q => d(0),
      R => '0'
    );
\rxd_pipe_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(9),
      Q => d(1),
      R => '0'
    );
\rxd_pipe_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(10),
      Q => d(2),
      R => '0'
    );
\rxd_pipe_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(11),
      Q => d(3),
      R => '0'
    );
\rxd_pipe_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(12),
      Q => d(4),
      R => '0'
    );
\rxd_pipe_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(13),
      Q => d(5),
      R => '0'
    );
\rxd_pipe_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(14),
      Q => d(6),
      R => '0'
    );
\rxd_pipe_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(15),
      Q => d(7),
      R => '0'
    );
\rxd_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(3),
      Q => \rxd_pipe_reg_n_0_[3]\,
      R => '0'
    );
\rxd_pipe_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(24),
      Q => \rxd_pipe_reg_n_0_[40]\,
      R => '0'
    );
\rxd_pipe_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(25),
      Q => \rxd_pipe_reg_n_0_[41]\,
      R => '0'
    );
\rxd_pipe_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(26),
      Q => \rxd_pipe_reg_n_0_[42]\,
      R => '0'
    );
\rxd_pipe_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(27),
      Q => \rxd_pipe_reg_n_0_[43]\,
      R => '0'
    );
\rxd_pipe_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(28),
      Q => \rxd_pipe_reg_n_0_[44]\,
      R => '0'
    );
\rxd_pipe_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(29),
      Q => \rxd_pipe_reg_n_0_[45]\,
      R => '0'
    );
\rxd_pipe_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(30),
      Q => \rxd_pipe_reg_n_0_[46]\,
      R => '0'
    );
\rxd_pipe_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(31),
      Q => \rxd_pipe_reg_n_0_[47]\,
      R => '0'
    );
\rxd_pipe_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(40),
      Q => \rxd_pipe_reg_n_0_[48]\,
      R => '0'
    );
\rxd_pipe_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(41),
      Q => \rxd_pipe_reg_n_0_[49]\,
      R => '0'
    );
\rxd_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(4),
      Q => \rxd_pipe_reg_n_0_[4]\,
      R => '0'
    );
\rxd_pipe_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(42),
      Q => \rxd_pipe_reg_n_0_[50]\,
      R => '0'
    );
\rxd_pipe_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(43),
      Q => \rxd_pipe_reg_n_0_[51]\,
      R => '0'
    );
\rxd_pipe_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(44),
      Q => \rxd_pipe_reg_n_0_[52]\,
      R => '0'
    );
\rxd_pipe_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(45),
      Q => \rxd_pipe_reg_n_0_[53]\,
      R => '0'
    );
\rxd_pipe_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(46),
      Q => \rxd_pipe_reg_n_0_[54]\,
      R => '0'
    );
\rxd_pipe_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(47),
      Q => \rxd_pipe_reg_n_0_[55]\,
      R => '0'
    );
\rxd_pipe_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(56),
      Q => \rxd_pipe_reg_n_0_[56]\,
      R => '0'
    );
\rxd_pipe_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(57),
      Q => \rxd_pipe_reg_n_0_[57]\,
      R => '0'
    );
\rxd_pipe_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(58),
      Q => \rxd_pipe_reg_n_0_[58]\,
      R => '0'
    );
\rxd_pipe_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(59),
      Q => \rxd_pipe_reg_n_0_[59]\,
      R => '0'
    );
\rxd_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(5),
      Q => \rxd_pipe_reg_n_0_[5]\,
      R => '0'
    );
\rxd_pipe_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(60),
      Q => \rxd_pipe_reg_n_0_[60]\,
      R => '0'
    );
\rxd_pipe_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(61),
      Q => \rxd_pipe_reg_n_0_[61]\,
      R => '0'
    );
\rxd_pipe_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(62),
      Q => \rxd_pipe_reg_n_0_[62]\,
      R => '0'
    );
\rxd_pipe_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(63),
      Q => \rxd_pipe_reg_n_0_[63]\,
      R => '0'
    );
\rxd_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(6),
      Q => \rxd_pipe_reg_n_0_[6]\,
      R => '0'
    );
\rxd_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(7),
      Q => \rxd_pipe_reg_n_0_[7]\,
      R => '0'
    );
\rxd_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(16),
      Q => p_3_in(0),
      R => '0'
    );
\rxd_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_rxdata(17),
      Q => p_3_in(1),
      R => '0'
    );
\tx_is_idle_half_pipe[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14000100"
    )
        port map (
      I0 => \tx_is_idle_half_pipe[0]_i_2_n_0\,
      I1 => d(6),
      I2 => d(7),
      I3 => c153_in,
      I4 => d(5),
      O => p_15_out(0)
    );
\tx_is_idle_half_pipe[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => d(1),
      I1 => d(2),
      I2 => d(3),
      I3 => d(0),
      I4 => d(4),
      O => \tx_is_idle_half_pipe[0]_i_2_n_0\
    );
\tx_is_idle_half_pipe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28000200"
    )
        port map (
      I0 => \tx_is_idle_half_pipe[1]_i_2_n_0\,
      I1 => \rxd_pipe_reg_n_0_[47]\,
      I2 => \rxd_pipe_reg_n_0_[46]\,
      I3 => c3_in,
      I4 => \rxd_pipe_reg_n_0_[45]\,
      O => p_15_out(1)
    );
\tx_is_idle_half_pipe[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[40]\,
      I1 => \rxd_pipe_reg_n_0_[42]\,
      I2 => \rxd_pipe_reg_n_0_[44]\,
      I3 => \rxd_pipe_reg_n_0_[41]\,
      I4 => \rxd_pipe_reg_n_0_[43]\,
      O => \tx_is_idle_half_pipe[1]_i_2_n_0\
    );
\tx_is_idle_half_pipe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28000200"
    )
        port map (
      I0 => \tx_is_idle_half_pipe[2]_i_2_n_0\,
      I1 => \rxd_pipe_reg_n_0_[55]\,
      I2 => \rxd_pipe_reg_n_0_[54]\,
      I3 => c7_in,
      I4 => \rxd_pipe_reg_n_0_[53]\,
      O => p_15_out(2)
    );
\tx_is_idle_half_pipe[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[48]\,
      I1 => \rxd_pipe_reg_n_0_[50]\,
      I2 => \rxd_pipe_reg_n_0_[52]\,
      I3 => \rxd_pipe_reg_n_0_[49]\,
      I4 => \rxd_pipe_reg_n_0_[51]\,
      O => \tx_is_idle_half_pipe[2]_i_2_n_0\
    );
\tx_is_idle_half_pipe[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08008008"
    )
        port map (
      I0 => \tx_is_idle_half_pipe[3]_i_2_n_0\,
      I1 => c11_in,
      I2 => \rxd_pipe_reg_n_0_[63]\,
      I3 => \rxd_pipe_reg_n_0_[61]\,
      I4 => \rxd_pipe_reg_n_0_[62]\,
      O => p_15_out(3)
    );
\tx_is_idle_half_pipe[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \rxd_pipe_reg_n_0_[58]\,
      I1 => \rxd_pipe_reg_n_0_[59]\,
      I2 => \rxd_pipe_reg_n_0_[56]\,
      I3 => \rxd_pipe_reg_n_0_[57]\,
      I4 => \rxd_pipe_reg_n_0_[60]\,
      O => \tx_is_idle_half_pipe[3]_i_2_n_0\
    );
\tx_is_idle_half_pipe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => p_15_out(0),
      Q => \tx_is_idle_half_pipe_reg_n_0_[0]\,
      R => '0'
    );
\tx_is_idle_half_pipe_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => p_15_out(1),
      Q => \tx_is_idle_half_pipe_reg_n_0_[1]\,
      R => '0'
    );
\tx_is_idle_half_pipe_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => p_15_out(2),
      Q => p_0_in0_in,
      R => '0'
    );
\tx_is_idle_half_pipe_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => p_15_out(3),
      Q => \tx_is_idle_half_pipe_reg_n_0_[3]\,
      R => '0'
    );
\tx_is_idle_pipe[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0061"
    )
        port map (
      I0 => mgt_rxdata(6),
      I1 => mgt_rxdata(7),
      I2 => mgt_rxdata(5),
      I3 => \^tx_is_idle_pipe_reg[0]_0\,
      O => \tx_is_idle_pipe[0]_i_1_n_0\
    );
\tx_is_idle_pipe[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => mgt_rxdata(4),
      I1 => mgt_rxcharisk(0),
      I2 => mgt_rxdata(1),
      I3 => mgt_rxdata(0),
      I4 => mgt_rxdata(2),
      I5 => mgt_rxdata(3),
      O => \^tx_is_idle_pipe_reg[0]_0\
    );
\tx_is_idle_pipe[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0882"
    )
        port map (
      I0 => \^tx_is_idle_pipe_reg[1]_0\,
      I1 => mgt_rxdata(21),
      I2 => mgt_rxdata(22),
      I3 => mgt_rxdata(23),
      O => \tx_is_idle_pipe[1]_i_1_n_0\
    );
\tx_is_idle_pipe[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => mgt_rxdata(16),
      I1 => mgt_rxdata(17),
      I2 => mgt_rxdata(18),
      I3 => mgt_rxdata(19),
      I4 => mgt_rxcharisk(2),
      I5 => mgt_rxdata(20),
      O => \^tx_is_idle_pipe_reg[1]_0\
    );
\tx_is_idle_pipe[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0061"
    )
        port map (
      I0 => mgt_rxdata(39),
      I1 => mgt_rxdata(38),
      I2 => mgt_rxdata(37),
      I3 => \mgt_rxdata_reg_reg[32]\,
      O => \tx_is_idle_pipe[2]_i_1_n_0\
    );
\tx_is_idle_pipe[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0882"
    )
        port map (
      I0 => \^tx_is_idle_pipe_reg[3]_0\,
      I1 => mgt_rxdata(53),
      I2 => mgt_rxdata(55),
      I3 => mgt_rxdata(54),
      O => \tx_is_idle_pipe[3]_i_1_n_0\
    );
\tx_is_idle_pipe[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => mgt_rxdata(49),
      I1 => mgt_rxdata(48),
      I2 => mgt_rxcharisk(6),
      I3 => mgt_rxdata(52),
      I4 => mgt_rxdata(50),
      I5 => mgt_rxdata(51),
      O => \^tx_is_idle_pipe_reg[3]_0\
    );
\tx_is_idle_pipe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_idle_pipe[0]_i_1_n_0\,
      Q => \tx_is_idle_pipe_reg_n_0_[0]\,
      R => '0'
    );
\tx_is_idle_pipe_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_idle_pipe[1]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\tx_is_idle_pipe_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_idle_pipe[2]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\tx_is_idle_pipe_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_idle_pipe[3]_i_1_n_0\,
      Q => p_11_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_sync_state_machine is
  port (
    mgt_enable_align : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sync_ok_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_rxlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_sync_state_machine : entity is "sync_state_machine";
end xaui_0_sync_state_machine;

architecture STRUCTURE of xaui_0_sync_state_machine is
  signal \FSM_sequential_state[1][0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_3_n_0\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal enable_align_i : STD_LOGIC;
  signal get_next_state : STD_LOGIC;
  signal \next_state[1]1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal signal_detect_last : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of state : signal is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_9\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[1][0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][4]\ : label is "yes";
begin
  \out\(2 downto 0) <= \^out\(2 downto 0);
\FSM_sequential_state[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_2_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[1][0]_i_2_n_0\,
      I3 => \code_valid_pipe_reg_n_0_[0]\,
      I4 => \^out\(2),
      I5 => \FSM_sequential_state[1][0]_i_3_n_0\,
      O => \FSM_sequential_state[1][0]_i_1_n_0\
    );
\FSM_sequential_state[1][0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF28"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => \^out\(1),
      O => \FSM_sequential_state[1][0]_i_10_n_0\
    );
\FSM_sequential_state[1][0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8888EEEEFEEE"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_11_n_0\
    );
\FSM_sequential_state[1][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCDCCC"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_12_n_0\
    );
\FSM_sequential_state[1][0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => Q(0),
      O => \next_state[1]1\
    );
\FSM_sequential_state[1][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][0]_i_2_n_0\
    );
\FSM_sequential_state[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_4_n_0\,
      I1 => \FSM_sequential_state[1][0]_i_5_n_0\,
      I2 => \code_valid_pipe_reg_n_0_[1]\,
      I3 => \FSM_sequential_state[1][0]_i_6_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \FSM_sequential_state[1][0]_i_7_n_0\,
      O => \FSM_sequential_state[1][0]_i_3_n_0\
    );
\FSM_sequential_state[1][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(0),
      I1 => \^out\(1),
      I2 => state(1),
      I3 => \^out\(0),
      I4 => \FSM_sequential_state[1][0]_i_8_n_0\,
      O => \FSM_sequential_state[1][0]_i_4_n_0\
    );
\FSM_sequential_state[1][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6AFFAFFF6AFAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => state(1),
      I3 => get_next_state,
      I4 => state(0),
      I5 => \FSM_sequential_state[1][0]_i_10_n_0\,
      O => \FSM_sequential_state[1][0]_i_5_n_0\
    );
\FSM_sequential_state[1][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BFBFBFB38F8F8F8"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_11_n_0\,
      I1 => state(0),
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => state(1),
      I5 => \FSM_sequential_state[1][0]_i_12_n_0\,
      O => \FSM_sequential_state[1][0]_i_6_n_0\
    );
\FSM_sequential_state[1][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCBC7E7F28282A2A"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(0),
      I3 => \next_state[1]1\,
      I4 => \^out\(1),
      I5 => get_next_state,
      O => \FSM_sequential_state[1][0]_i_7_n_0\
    );
\FSM_sequential_state[1][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333443232CC"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => \^out\(1),
      O => \FSM_sequential_state[1][0]_i_8_n_0\
    );
\FSM_sequential_state[1][0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      O => get_next_state
    );
\FSM_sequential_state[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2_n_0\,
      I2 => \^out\(2),
      I3 => \FSM_sequential_state[1][1]_i_2_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][1]_i_3_n_0\,
      O => \FSM_sequential_state[1][1]_i_1_n_0\
    );
\FSM_sequential_state[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08380838F80BF808"
    )
        port map (
      I0 => \FSM_sequential_state[1][1]_i_4_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => \^out\(0),
      I3 => state(0),
      I4 => \FSM_sequential_state[1][1]_i_5_n_0\,
      I5 => state(1),
      O => \FSM_sequential_state[1][1]_i_2_n_0\
    );
\FSM_sequential_state[1][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"27F98808"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \^out\(1),
      I2 => state(0),
      I3 => state(1),
      I4 => \^out\(0),
      O => \FSM_sequential_state[1][1]_i_3_n_0\
    );
\FSM_sequential_state[1][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666466666A666A"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \^out\(1),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => Q(0),
      I5 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_4_n_0\
    );
\FSM_sequential_state[1][1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_5_n_0\
    );
\FSM_sequential_state[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2_n_0\,
      I2 => \^out\(2),
      I3 => \FSM_sequential_state[1][2]_i_3_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][2]_i_4_n_0\,
      O => \FSM_sequential_state[1][2]_i_1_n_0\
    );
\FSM_sequential_state[1][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => state(0),
      I3 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_2_n_0\
    );
\FSM_sequential_state[1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B88888888"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_5_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => state(1),
      I3 => \^out\(1),
      I4 => state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_3_n_0\
    );
\FSM_sequential_state[1][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFFFFCFC8C000C0"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => \^out\(1),
      I3 => state(0),
      I4 => state(1),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_4_n_0\
    );
\FSM_sequential_state[1][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA54AAAAFFEAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => state(1),
      I4 => \^out\(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][2]_i_5_n_0\
    );
\FSM_sequential_state[1][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state[1][3]_i_2_n_0\,
      I1 => \^out\(2),
      O => \FSM_sequential_state[1][3]_i_1_n_0\
    );
\FSM_sequential_state[1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32C88F800FC08A48"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => \^out\(1),
      I2 => \code_valid_pipe_reg_n_0_[0]\,
      I3 => \^out\(0),
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][3]_i_2_n_0\
    );
\FSM_sequential_state[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF6FFFF"
    )
        port map (
      I0 => signal_detect_last,
      I1 => Q(0),
      I2 => usrclk_reset,
      I3 => mgt_rx_reset(0),
      I4 => mgt_rxlock(0),
      O => \FSM_sequential_state[1][4]_i_1_n_0\
    );
\FSM_sequential_state[1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => \^out\(0),
      I2 => \FSM_sequential_state[1][4]_i_3_n_0\,
      I3 => state(1),
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \^out\(2),
      O => \FSM_sequential_state[1][4]_i_2_n_0\
    );
\FSM_sequential_state[1][4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => state(0),
      O => \FSM_sequential_state[1][4]_i_3_n_0\
    );
\FSM_sequential_state_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][0]_i_1_n_0\,
      Q => state(0),
      R => \FSM_sequential_state[1][4]_i_1_n_0\
    );
\FSM_sequential_state_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][1]_i_1_n_0\,
      Q => state(1),
      R => \FSM_sequential_state[1][4]_i_1_n_0\
    );
\FSM_sequential_state_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][2]_i_1_n_0\,
      Q => \^out\(0),
      R => \FSM_sequential_state[1][4]_i_1_n_0\
    );
\FSM_sequential_state_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][3]_i_1_n_0\,
      Q => \^out\(1),
      R => \FSM_sequential_state[1][4]_i_1_n_0\
    );
\FSM_sequential_state_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][4]_i_2_n_0\,
      Q => \^out\(2),
      R => \FSM_sequential_state[1][4]_i_1_n_0\
    );
\code_comma_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(0),
      Q => \code_comma_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_comma_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(1),
      Q => \code_comma_pipe_reg_n_0_[1]\,
      R => '0'
    );
\code_valid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(0),
      Q => \code_valid_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_valid_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(1),
      Q => \code_valid_pipe_reg_n_0_[1]\,
      R => '0'
    );
enable_align_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(0),
      I2 => \^out\(1),
      I3 => state(1),
      I4 => \^out\(2),
      O => enable_align_i
    );
enable_align_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => enable_align_i,
      Q => mgt_enable_align(0),
      R => '0'
    );
signal_detect_last_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => signal_detect_last,
      R => '0'
    );
\sync_ok[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      O => \sync_ok_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_sync_state_machine_30 is
  port (
    mgt_enable_align : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sync_ok_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_rxlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_sync_state_machine_30 : entity is "sync_state_machine";
end xaui_0_sync_state_machine_30;

architecture STRUCTURE of xaui_0_sync_state_machine_30 is
  signal \FSM_sequential_state[1][0]_i_10__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_11__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_12__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_6__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_7__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_8__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_3__0_n_0\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal enable_align_i : STD_LOGIC;
  signal get_next_state : STD_LOGIC;
  signal \next_state[1]1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal signal_detect_last : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of state : signal is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_13__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_9__0\ : label is "soft_lutpair1";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[1][0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][4]\ : label is "yes";
begin
  \out\(2 downto 0) <= \^out\(2 downto 0);
\FSM_sequential_state[1][0]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF28"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => \^out\(1),
      O => \FSM_sequential_state[1][0]_i_10__0_n_0\
    );
\FSM_sequential_state[1][0]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8888EEEEFEEE"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_11__0_n_0\
    );
\FSM_sequential_state[1][0]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCDCCC"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_12__0_n_0\
    );
\FSM_sequential_state[1][0]_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => Q(0),
      O => \next_state[1]1\
    );
\FSM_sequential_state[1][0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_2__0_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[1][0]_i_2__0_n_0\,
      I3 => \code_valid_pipe_reg_n_0_[0]\,
      I4 => \^out\(2),
      I5 => \FSM_sequential_state[1][0]_i_3__0_n_0\,
      O => \FSM_sequential_state[1][0]_i_1__0_n_0\
    );
\FSM_sequential_state[1][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][0]_i_2__0_n_0\
    );
\FSM_sequential_state[1][0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_4__0_n_0\,
      I1 => \FSM_sequential_state[1][0]_i_5__0_n_0\,
      I2 => \code_valid_pipe_reg_n_0_[1]\,
      I3 => \FSM_sequential_state[1][0]_i_6__0_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \FSM_sequential_state[1][0]_i_7__0_n_0\,
      O => \FSM_sequential_state[1][0]_i_3__0_n_0\
    );
\FSM_sequential_state[1][0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(0),
      I1 => \^out\(1),
      I2 => state(1),
      I3 => \^out\(0),
      I4 => \FSM_sequential_state[1][0]_i_8__0_n_0\,
      O => \FSM_sequential_state[1][0]_i_4__0_n_0\
    );
\FSM_sequential_state[1][0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6AFFAFFF6AFAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => state(1),
      I3 => get_next_state,
      I4 => state(0),
      I5 => \FSM_sequential_state[1][0]_i_10__0_n_0\,
      O => \FSM_sequential_state[1][0]_i_5__0_n_0\
    );
\FSM_sequential_state[1][0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BFBFBFB38F8F8F8"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_11__0_n_0\,
      I1 => state(0),
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => state(1),
      I5 => \FSM_sequential_state[1][0]_i_12__0_n_0\,
      O => \FSM_sequential_state[1][0]_i_6__0_n_0\
    );
\FSM_sequential_state[1][0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCBC7E7F28282A2A"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(0),
      I3 => \next_state[1]1\,
      I4 => \^out\(1),
      I5 => get_next_state,
      O => \FSM_sequential_state[1][0]_i_7__0_n_0\
    );
\FSM_sequential_state[1][0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333443232CC"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => \^out\(1),
      O => \FSM_sequential_state[1][0]_i_8__0_n_0\
    );
\FSM_sequential_state[1][0]_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      O => get_next_state
    );
\FSM_sequential_state[1][1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2__0_n_0\,
      I2 => \^out\(2),
      I3 => \FSM_sequential_state[1][1]_i_2__0_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][1]_i_3__0_n_0\,
      O => \FSM_sequential_state[1][1]_i_1__0_n_0\
    );
\FSM_sequential_state[1][1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08380838F80BF808"
    )
        port map (
      I0 => \FSM_sequential_state[1][1]_i_4__0_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => \^out\(0),
      I3 => state(0),
      I4 => \FSM_sequential_state[1][1]_i_5__0_n_0\,
      I5 => state(1),
      O => \FSM_sequential_state[1][1]_i_2__0_n_0\
    );
\FSM_sequential_state[1][1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"27F98808"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \^out\(1),
      I2 => state(0),
      I3 => state(1),
      I4 => \^out\(0),
      O => \FSM_sequential_state[1][1]_i_3__0_n_0\
    );
\FSM_sequential_state[1][1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666466666A666A"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \^out\(1),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => Q(0),
      I5 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_4__0_n_0\
    );
\FSM_sequential_state[1][1]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_5__0_n_0\
    );
\FSM_sequential_state[1][2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2__0_n_0\,
      I2 => \^out\(2),
      I3 => \FSM_sequential_state[1][2]_i_3__0_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][2]_i_4__0_n_0\,
      O => \FSM_sequential_state[1][2]_i_1__0_n_0\
    );
\FSM_sequential_state[1][2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => state(0),
      I3 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_2__0_n_0\
    );
\FSM_sequential_state[1][2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B88888888"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_5__0_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => state(1),
      I3 => \^out\(1),
      I4 => state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_3__0_n_0\
    );
\FSM_sequential_state[1][2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFFFFCFC8C000C0"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => \^out\(1),
      I3 => state(0),
      I4 => state(1),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_4__0_n_0\
    );
\FSM_sequential_state[1][2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA54AAAAFFEAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => state(1),
      I4 => \^out\(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][2]_i_5__0_n_0\
    );
\FSM_sequential_state[1][3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state[1][3]_i_2__0_n_0\,
      I1 => \^out\(2),
      O => \FSM_sequential_state[1][3]_i_1__0_n_0\
    );
\FSM_sequential_state[1][3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32C88F800FC08A48"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => \^out\(1),
      I2 => \code_valid_pipe_reg_n_0_[0]\,
      I3 => \^out\(0),
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][3]_i_2__0_n_0\
    );
\FSM_sequential_state[1][4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF6FFFF"
    )
        port map (
      I0 => signal_detect_last,
      I1 => Q(0),
      I2 => usrclk_reset,
      I3 => mgt_rx_reset(0),
      I4 => mgt_rxlock(0),
      O => \FSM_sequential_state[1][4]_i_1__0_n_0\
    );
\FSM_sequential_state[1][4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => \^out\(0),
      I2 => \FSM_sequential_state[1][4]_i_3__0_n_0\,
      I3 => state(1),
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \^out\(2),
      O => \FSM_sequential_state[1][4]_i_2__0_n_0\
    );
\FSM_sequential_state[1][4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => state(0),
      O => \FSM_sequential_state[1][4]_i_3__0_n_0\
    );
\FSM_sequential_state_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][0]_i_1__0_n_0\,
      Q => state(0),
      R => \FSM_sequential_state[1][4]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][1]_i_1__0_n_0\,
      Q => state(1),
      R => \FSM_sequential_state[1][4]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][2]_i_1__0_n_0\,
      Q => \^out\(0),
      R => \FSM_sequential_state[1][4]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][3]_i_1__0_n_0\,
      Q => \^out\(1),
      R => \FSM_sequential_state[1][4]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][4]_i_2__0_n_0\,
      Q => \^out\(2),
      R => \FSM_sequential_state[1][4]_i_1__0_n_0\
    );
\code_comma_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(0),
      Q => \code_comma_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_comma_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(1),
      Q => \code_comma_pipe_reg_n_0_[1]\,
      R => '0'
    );
\code_valid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(0),
      Q => \code_valid_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_valid_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(1),
      Q => \code_valid_pipe_reg_n_0_[1]\,
      R => '0'
    );
\enable_align_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(0),
      I2 => \^out\(1),
      I3 => state(1),
      I4 => \^out\(2),
      O => enable_align_i
    );
enable_align_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => enable_align_i,
      Q => mgt_enable_align(0),
      R => '0'
    );
signal_detect_last_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => signal_detect_last,
      R => '0'
    );
\sync_ok[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      O => \sync_ok_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_sync_state_machine_31 is
  port (
    mgt_enable_align : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \sync_ok_reg[2]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_rxlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_sync_state_machine_31 : entity is "sync_state_machine";
end xaui_0_sync_state_machine_31;

architecture STRUCTURE of xaui_0_sync_state_machine_31 is
  signal \FSM_sequential_state[1][0]_i_10__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_11__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_12__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_4__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_5__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_6__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_7__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_8__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_4__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_5__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_4__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_5__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_3__1_n_0\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal enable_align_i : STD_LOGIC;
  signal get_next_state : STD_LOGIC;
  signal \next_state[1]1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal signal_detect_last : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of state : signal is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_13__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_9__1\ : label is "soft_lutpair2";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[1][0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][4]\ : label is "yes";
begin
  \out\(2 downto 0) <= \^out\(2 downto 0);
\FSM_sequential_state[1][0]_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF28"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => \^out\(1),
      O => \FSM_sequential_state[1][0]_i_10__1_n_0\
    );
\FSM_sequential_state[1][0]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8888EEEEFEEE"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_11__1_n_0\
    );
\FSM_sequential_state[1][0]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCDCCC"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_12__1_n_0\
    );
\FSM_sequential_state[1][0]_i_13__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => Q(0),
      O => \next_state[1]1\
    );
\FSM_sequential_state[1][0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_2__1_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[1][0]_i_2__1_n_0\,
      I3 => \code_valid_pipe_reg_n_0_[0]\,
      I4 => \^out\(2),
      I5 => \FSM_sequential_state[1][0]_i_3__1_n_0\,
      O => \FSM_sequential_state[1][0]_i_1__1_n_0\
    );
\FSM_sequential_state[1][0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][0]_i_2__1_n_0\
    );
\FSM_sequential_state[1][0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_4__1_n_0\,
      I1 => \FSM_sequential_state[1][0]_i_5__1_n_0\,
      I2 => \code_valid_pipe_reg_n_0_[1]\,
      I3 => \FSM_sequential_state[1][0]_i_6__1_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \FSM_sequential_state[1][0]_i_7__1_n_0\,
      O => \FSM_sequential_state[1][0]_i_3__1_n_0\
    );
\FSM_sequential_state[1][0]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(0),
      I1 => \^out\(1),
      I2 => state(1),
      I3 => \^out\(0),
      I4 => \FSM_sequential_state[1][0]_i_8__1_n_0\,
      O => \FSM_sequential_state[1][0]_i_4__1_n_0\
    );
\FSM_sequential_state[1][0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6AFFAFFF6AFAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => state(1),
      I3 => get_next_state,
      I4 => state(0),
      I5 => \FSM_sequential_state[1][0]_i_10__1_n_0\,
      O => \FSM_sequential_state[1][0]_i_5__1_n_0\
    );
\FSM_sequential_state[1][0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BFBFBFB38F8F8F8"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_11__1_n_0\,
      I1 => state(0),
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => state(1),
      I5 => \FSM_sequential_state[1][0]_i_12__1_n_0\,
      O => \FSM_sequential_state[1][0]_i_6__1_n_0\
    );
\FSM_sequential_state[1][0]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCBC7E7F28282A2A"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(1),
      I2 => state(0),
      I3 => \next_state[1]1\,
      I4 => \^out\(1),
      I5 => get_next_state,
      O => \FSM_sequential_state[1][0]_i_7__1_n_0\
    );
\FSM_sequential_state[1][0]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333443232CC"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => \^out\(1),
      O => \FSM_sequential_state[1][0]_i_8__1_n_0\
    );
\FSM_sequential_state[1][0]_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      O => get_next_state
    );
\FSM_sequential_state[1][1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2__1_n_0\,
      I2 => \^out\(2),
      I3 => \FSM_sequential_state[1][1]_i_2__1_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][1]_i_3__1_n_0\,
      O => \FSM_sequential_state[1][1]_i_1__1_n_0\
    );
\FSM_sequential_state[1][1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08380838F80BF808"
    )
        port map (
      I0 => \FSM_sequential_state[1][1]_i_4__1_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => \^out\(0),
      I3 => state(0),
      I4 => \FSM_sequential_state[1][1]_i_5__1_n_0\,
      I5 => state(1),
      O => \FSM_sequential_state[1][1]_i_2__1_n_0\
    );
\FSM_sequential_state[1][1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"27F98808"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \^out\(1),
      I2 => state(0),
      I3 => state(1),
      I4 => \^out\(0),
      O => \FSM_sequential_state[1][1]_i_3__1_n_0\
    );
\FSM_sequential_state[1][1]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666466666A666A"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \^out\(1),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => Q(0),
      I5 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_4__1_n_0\
    );
\FSM_sequential_state[1][1]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_5__1_n_0\
    );
\FSM_sequential_state[1][2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2__1_n_0\,
      I2 => \^out\(2),
      I3 => \FSM_sequential_state[1][2]_i_3__1_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][2]_i_4__1_n_0\,
      O => \FSM_sequential_state[1][2]_i_1__1_n_0\
    );
\FSM_sequential_state[1][2]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => \^out\(1),
      I2 => state(0),
      I3 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_2__1_n_0\
    );
\FSM_sequential_state[1][2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B88888888"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_5__1_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => state(1),
      I3 => \^out\(1),
      I4 => state(0),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_3__1_n_0\
    );
\FSM_sequential_state[1][2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFFFFCFC8C000C0"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => \^out\(1),
      I3 => state(0),
      I4 => state(1),
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][2]_i_4__1_n_0\
    );
\FSM_sequential_state[1][2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA54AAAAFFEAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => state(1),
      I4 => \^out\(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][2]_i_5__1_n_0\
    );
\FSM_sequential_state[1][3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state[1][3]_i_2__1_n_0\,
      I1 => \^out\(2),
      O => \FSM_sequential_state[1][3]_i_1__1_n_0\
    );
\FSM_sequential_state[1][3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32C88F800FC08A48"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => \^out\(1),
      I2 => \code_valid_pipe_reg_n_0_[0]\,
      I3 => \^out\(0),
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][3]_i_2__1_n_0\
    );
\FSM_sequential_state[1][4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF6FFFF"
    )
        port map (
      I0 => signal_detect_last,
      I1 => Q(0),
      I2 => usrclk_reset,
      I3 => mgt_rx_reset(0),
      I4 => mgt_rxlock(0),
      O => \FSM_sequential_state[1][4]_i_1__1_n_0\
    );
\FSM_sequential_state[1][4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => \^out\(0),
      I2 => \FSM_sequential_state[1][4]_i_3__1_n_0\,
      I3 => state(1),
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \^out\(2),
      O => \FSM_sequential_state[1][4]_i_2__1_n_0\
    );
\FSM_sequential_state[1][4]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => state(0),
      O => \FSM_sequential_state[1][4]_i_3__1_n_0\
    );
\FSM_sequential_state_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][0]_i_1__1_n_0\,
      Q => state(0),
      R => \FSM_sequential_state[1][4]_i_1__1_n_0\
    );
\FSM_sequential_state_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][1]_i_1__1_n_0\,
      Q => state(1),
      R => \FSM_sequential_state[1][4]_i_1__1_n_0\
    );
\FSM_sequential_state_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][2]_i_1__1_n_0\,
      Q => \^out\(0),
      R => \FSM_sequential_state[1][4]_i_1__1_n_0\
    );
\FSM_sequential_state_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][3]_i_1__1_n_0\,
      Q => \^out\(1),
      R => \FSM_sequential_state[1][4]_i_1__1_n_0\
    );
\FSM_sequential_state_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][4]_i_2__1_n_0\,
      Q => \^out\(2),
      R => \FSM_sequential_state[1][4]_i_1__1_n_0\
    );
\code_comma_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(0),
      Q => \code_comma_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_comma_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(1),
      Q => \code_comma_pipe_reg_n_0_[1]\,
      R => '0'
    );
\code_valid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(0),
      Q => \code_valid_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_valid_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(1),
      Q => \code_valid_pipe_reg_n_0_[1]\,
      R => '0'
    );
\enable_align_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^out\(0),
      I1 => state(0),
      I2 => \^out\(1),
      I3 => state(1),
      I4 => \^out\(2),
      O => enable_align_i
    );
enable_align_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => enable_align_i,
      Q => mgt_enable_align(0),
      R => '0'
    );
signal_detect_last_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => signal_detect_last,
      R => '0'
    );
\sync_ok[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      O => \sync_ok_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_sync_state_machine_32 is
  port (
    mgt_enable_align : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_ok_reg[3]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_rxlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_sync_state_machine_32 : entity is "sync_state_machine";
end xaui_0_sync_state_machine_32;

architecture STRUCTURE of xaui_0_sync_state_machine_32 is
  signal \FSM_sequential_state[1][0]_i_10__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_11__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_12__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_4__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_5__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_6__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_7__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][0]_i_8__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_4__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][1]_i_5__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_4__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][2]_i_5__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][3]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1][4]_i_3__2_n_0\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_comma_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \code_valid_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal enable_align_i : STD_LOGIC;
  signal get_next_state : STD_LOGIC;
  signal \next_state[1]1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal signal_detect_last : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of state : signal is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_13__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1][0]_i_9__2\ : label is "soft_lutpair3";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[1][0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1][4]\ : label is "yes";
begin
  \out\(0) <= \^out\(0);
\FSM_sequential_state[1][0]_i_10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF28"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => state(3),
      O => \FSM_sequential_state[1][0]_i_10__2_n_0\
    );
\FSM_sequential_state[1][0]_i_11__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8888EEEEFEEE"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_11__2_n_0\
    );
\FSM_sequential_state[1][0]_i_12__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCDCCC"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => \code_comma_pipe_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(0),
      O => \FSM_sequential_state[1][0]_i_12__2_n_0\
    );
\FSM_sequential_state[1][0]_i_13__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => Q(0),
      O => \next_state[1]1\
    );
\FSM_sequential_state[1][0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_2__2_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[1][0]_i_2__2_n_0\,
      I3 => \code_valid_pipe_reg_n_0_[0]\,
      I4 => \^out\(0),
      I5 => \FSM_sequential_state[1][0]_i_3__2_n_0\,
      O => \FSM_sequential_state[1][0]_i_1__2_n_0\
    );
\FSM_sequential_state[1][0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => state(0),
      I5 => state(2),
      O => \FSM_sequential_state[1][0]_i_2__2_n_0\
    );
\FSM_sequential_state[1][0]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_4__2_n_0\,
      I1 => \FSM_sequential_state[1][0]_i_5__2_n_0\,
      I2 => \code_valid_pipe_reg_n_0_[1]\,
      I3 => \FSM_sequential_state[1][0]_i_6__2_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \FSM_sequential_state[1][0]_i_7__2_n_0\,
      O => \FSM_sequential_state[1][0]_i_3__2_n_0\
    );
\FSM_sequential_state[1][0]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      I4 => \FSM_sequential_state[1][0]_i_8__2_n_0\,
      O => \FSM_sequential_state[1][0]_i_4__2_n_0\
    );
\FSM_sequential_state[1][0]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6AFFAFFF6AFAAA"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => get_next_state,
      I4 => state(0),
      I5 => \FSM_sequential_state[1][0]_i_10__2_n_0\,
      O => \FSM_sequential_state[1][0]_i_5__2_n_0\
    );
\FSM_sequential_state[1][0]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3BFBFBFB38F8F8F8"
    )
        port map (
      I0 => \FSM_sequential_state[1][0]_i_11__2_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      I5 => \FSM_sequential_state[1][0]_i_12__2_n_0\,
      O => \FSM_sequential_state[1][0]_i_6__2_n_0\
    );
\FSM_sequential_state[1][0]_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCBC7E7F28282A2A"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \next_state[1]1\,
      I4 => state(3),
      I5 => get_next_state,
      O => \FSM_sequential_state[1][0]_i_7__2_n_0\
    );
\FSM_sequential_state[1][0]_i_8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333443232CC"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => \code_comma_pipe_reg_n_0_[0]\,
      I5 => state(3),
      O => \FSM_sequential_state[1][0]_i_8__2_n_0\
    );
\FSM_sequential_state[1][0]_i_9__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(0),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      O => get_next_state
    );
\FSM_sequential_state[1][1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2__2_n_0\,
      I2 => \^out\(0),
      I3 => \FSM_sequential_state[1][1]_i_2__2_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][1]_i_3__2_n_0\,
      O => \FSM_sequential_state[1][1]_i_1__2_n_0\
    );
\FSM_sequential_state[1][1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08380838F80BF808"
    )
        port map (
      I0 => \FSM_sequential_state[1][1]_i_4__2_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => state(2),
      I3 => state(0),
      I4 => \FSM_sequential_state[1][1]_i_5__2_n_0\,
      I5 => state(1),
      O => \FSM_sequential_state[1][1]_i_2__2_n_0\
    );
\FSM_sequential_state[1][1]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"27F98808"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => \FSM_sequential_state[1][1]_i_3__2_n_0\
    );
\FSM_sequential_state[1][1]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666466666A666A"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => \code_comma_pipe_reg_n_0_[1]\,
      I4 => Q(0),
      I5 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_4__2_n_0\
    );
\FSM_sequential_state[1][1]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(3),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \code_comma_pipe_reg_n_0_[0]\,
      O => \FSM_sequential_state[1][1]_i_5__2_n_0\
    );
\FSM_sequential_state[1][2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F800F0F8F800000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1][2]_i_2__2_n_0\,
      I2 => \^out\(0),
      I3 => \FSM_sequential_state[1][2]_i_3__2_n_0\,
      I4 => \code_valid_pipe_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[1][2]_i_4__2_n_0\,
      O => \FSM_sequential_state[1][2]_i_1__2_n_0\
    );
\FSM_sequential_state[1][2]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      O => \FSM_sequential_state[1][2]_i_2__2_n_0\
    );
\FSM_sequential_state[1][2]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B88888888"
    )
        port map (
      I0 => \FSM_sequential_state[1][2]_i_5__2_n_0\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => state(1),
      I3 => state(3),
      I4 => state(0),
      I5 => state(2),
      O => \FSM_sequential_state[1][2]_i_3__2_n_0\
    );
\FSM_sequential_state[1][2]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFFFFCFC8C000C0"
    )
        port map (
      I0 => \code_comma_pipe_reg_n_0_[0]\,
      I1 => \code_valid_pipe_reg_n_0_[0]\,
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => \FSM_sequential_state[1][2]_i_4__2_n_0\
    );
\FSM_sequential_state[1][2]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA54AAAAFFEAAA"
    )
        port map (
      I0 => state(2),
      I1 => \code_comma_pipe_reg_n_0_[1]\,
      I2 => \code_comma_pipe_reg_n_0_[0]\,
      I3 => state(1),
      I4 => state(3),
      I5 => state(0),
      O => \FSM_sequential_state[1][2]_i_5__2_n_0\
    );
\FSM_sequential_state[1][3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state[1][3]_i_2__2_n_0\,
      I1 => \^out\(0),
      O => \FSM_sequential_state[1][3]_i_1__2_n_0\
    );
\FSM_sequential_state[1][3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32C88F800FC08A48"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => state(3),
      I2 => \code_valid_pipe_reg_n_0_[0]\,
      I3 => state(2),
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[1][3]_i_2__2_n_0\
    );
\FSM_sequential_state[1][4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF6FFFF"
    )
        port map (
      I0 => signal_detect_last,
      I1 => Q(0),
      I2 => usrclk_reset,
      I3 => mgt_rx_reset(0),
      I4 => mgt_rxlock(0),
      O => \FSM_sequential_state[1][4]_i_1__2_n_0\
    );
\FSM_sequential_state[1][4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \code_valid_pipe_reg_n_0_[1]\,
      I1 => state(2),
      I2 => \FSM_sequential_state[1][4]_i_3__2_n_0\,
      I3 => state(1),
      I4 => \code_valid_pipe_reg_n_0_[0]\,
      I5 => \^out\(0),
      O => \FSM_sequential_state[1][4]_i_2__2_n_0\
    );
\FSM_sequential_state[1][4]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      O => \FSM_sequential_state[1][4]_i_3__2_n_0\
    );
\FSM_sequential_state_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][0]_i_1__2_n_0\,
      Q => state(0),
      R => \FSM_sequential_state[1][4]_i_1__2_n_0\
    );
\FSM_sequential_state_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][1]_i_1__2_n_0\,
      Q => state(1),
      R => \FSM_sequential_state[1][4]_i_1__2_n_0\
    );
\FSM_sequential_state_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][2]_i_1__2_n_0\,
      Q => state(2),
      R => \FSM_sequential_state[1][4]_i_1__2_n_0\
    );
\FSM_sequential_state_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][3]_i_1__2_n_0\,
      Q => state(3),
      R => \FSM_sequential_state[1][4]_i_1__2_n_0\
    );
\FSM_sequential_state_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \FSM_sequential_state[1][4]_i_2__2_n_0\,
      Q => \^out\(0),
      R => \FSM_sequential_state[1][4]_i_1__2_n_0\
    );
\code_comma_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(0),
      Q => \code_comma_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_comma_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codecomma(1),
      Q => \code_comma_pipe_reg_n_0_[1]\,
      R => '0'
    );
\code_valid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(0),
      Q => \code_valid_pipe_reg_n_0_[0]\,
      R => '0'
    );
\code_valid_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => mgt_codevalid(1),
      Q => \code_valid_pipe_reg_n_0_[1]\,
      R => '0'
    );
\enable_align_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => \^out\(0),
      O => enable_align_i
    );
enable_align_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => enable_align_i,
      Q => mgt_enable_align(0),
      R => '0'
    );
signal_detect_last_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => signal_detect_last,
      R => '0'
    );
\sync_ok[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \sync_ok_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tqmsg_capture is
  port (
    q_det : out STD_LOGIC;
    last_qmsg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \state_reg[0][0]\ : in STD_LOGIC;
    usrclk : in STD_LOGIC;
    \txd_out_reg[6]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    txd_filtered : in STD_LOGIC_VECTOR ( 8 downto 0 );
    txc_filtered : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \txd_out_reg[5]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tqmsg_capture : entity is "tqmsg_capture";
end xaui_0_tqmsg_capture;

architecture STRUCTURE of xaui_0_tqmsg_capture is
  signal \last_qmsg[6]_i_1_n_0\ : STD_LOGIC;
begin
\last_qmsg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => txc_filtered(0),
      I1 => txd_filtered(8),
      I2 => txc_filtered(1),
      I3 => txc_filtered(2),
      I4 => \txd_out_reg[5]\,
      I5 => \txd_out_reg[6]\,
      O => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(0),
      Q => last_qmsg(0),
      R => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(2),
      Q => last_qmsg(10),
      R => '0'
    );
\last_qmsg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(3),
      Q => last_qmsg(11),
      R => '0'
    );
\last_qmsg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(4),
      Q => last_qmsg(12),
      R => '0'
    );
\last_qmsg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(5),
      Q => last_qmsg(13),
      R => '0'
    );
\last_qmsg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(6),
      Q => last_qmsg(14),
      R => '0'
    );
\last_qmsg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(7),
      Q => last_qmsg(15),
      R => '0'
    );
\last_qmsg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(8),
      Q => last_qmsg(16),
      R => '0'
    );
\last_qmsg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(9),
      Q => last_qmsg(17),
      R => '0'
    );
\last_qmsg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(10),
      Q => last_qmsg(18),
      R => '0'
    );
\last_qmsg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(11),
      Q => last_qmsg(19),
      R => '0'
    );
\last_qmsg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(1),
      Q => last_qmsg(1),
      R => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(12),
      Q => last_qmsg(20),
      R => '0'
    );
\last_qmsg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(13),
      Q => last_qmsg(21),
      R => '0'
    );
\last_qmsg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(14),
      Q => last_qmsg(22),
      R => '0'
    );
\last_qmsg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(15),
      Q => last_qmsg(23),
      R => '0'
    );
\last_qmsg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(16),
      Q => last_qmsg(24),
      R => '0'
    );
\last_qmsg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(17),
      Q => last_qmsg(25),
      R => '0'
    );
\last_qmsg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(18),
      Q => last_qmsg(26),
      R => '0'
    );
\last_qmsg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(19),
      Q => last_qmsg(27),
      R => '0'
    );
\last_qmsg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(20),
      Q => last_qmsg(28),
      R => '0'
    );
\last_qmsg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(21),
      Q => last_qmsg(29),
      R => '0'
    );
\last_qmsg_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(2),
      Q => last_qmsg(2),
      S => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(22),
      Q => last_qmsg(30),
      R => '0'
    );
\last_qmsg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(23),
      Q => last_qmsg(31),
      R => '0'
    );
\last_qmsg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(3),
      Q => last_qmsg(3),
      S => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(4),
      Q => last_qmsg(4),
      S => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(5),
      Q => last_qmsg(5),
      R => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(6),
      Q => last_qmsg(6),
      R => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => txd_filtered(7),
      Q => last_qmsg(7),
      S => \last_qmsg[6]_i_1_n_0\
    );
\last_qmsg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(0),
      Q => last_qmsg(8),
      R => '0'
    );
\last_qmsg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => \txd_out_reg[6]\,
      D => D(1),
      Q => last_qmsg(9),
      R => '0'
    );
q_det_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][0]\,
      Q => q_det,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter is
  port (
    \last_qmsg_reg[6]\ : out STD_LOGIC;
    txd_filtered : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \last_qmsg_reg[31]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    txc_out_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    is_terminate : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[1][2]\ : in STD_LOGIC;
    \txd_pipe_2_reg[39]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter : entity is "tx_filter";
end xaui_0_tx_filter;

architecture STRUCTURE of xaui_0_tx_filter is
  signal \last_qmsg[31]_i_5_n_0\ : STD_LOGIC;
  signal \last_qmsg[31]_i_6_n_0\ : STD_LOGIC;
  signal \last_qmsg[6]_i_3_n_0\ : STD_LOGIC;
  signal txc_filtered : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^txd_filtered\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__4_n_0\ : STD_LOGIC;
begin
  txd_filtered(7 downto 0) <= \^txd_filtered\(7 downto 0);
\last_qmsg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => txc_out_reg_0(0),
      I1 => txc_out_reg_0(2),
      I2 => \^txd_filtered\(3),
      I3 => \^txd_filtered\(1),
      I4 => \last_qmsg[31]_i_5_n_0\,
      I5 => \last_qmsg[31]_i_6_n_0\,
      O => \last_qmsg_reg[31]\
    );
\last_qmsg[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^txd_filtered\(7),
      I1 => \^txd_filtered\(5),
      I2 => txc_filtered(4),
      I3 => \^txd_filtered\(0),
      O => \last_qmsg[31]_i_5_n_0\
    );
\last_qmsg[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^txd_filtered\(4),
      I1 => \^txd_filtered\(6),
      I2 => \^txd_filtered\(2),
      I3 => txc_out_reg_0(1),
      O => \last_qmsg[31]_i_6_n_0\
    );
\last_qmsg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^txd_filtered\(5),
      I1 => \^txd_filtered\(6),
      I2 => \^txd_filtered\(0),
      I3 => txc_filtered(4),
      I4 => \last_qmsg[6]_i_3_n_0\,
      O => \last_qmsg_reg[6]\
    );
\last_qmsg[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^txd_filtered\(4),
      I1 => \^txd_filtered\(2),
      I2 => \^txd_filtered\(7),
      I3 => \^txd_filtered\(3),
      O => \last_qmsg[6]_i_3_n_0\
    );
\txc_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACCFAFF"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => txc_filtered(4),
      I2 => configuration_vector(1),
      I3 => configuration_vector(0),
      I4 => \state_reg[1][2]\,
      O => D(0)
    );
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => txc_filtered(4),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[39]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[4]\(0),
      I3 => is_terminate,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[39]\(1),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[4]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[39]\(6),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[4]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => is_terminate,
      I2 => \txd_is_IDLE_reg_reg[4]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__4_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => \^txd_filtered\(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => \^txd_filtered\(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[39]\(2),
      Q => \^txd_filtered\(2),
      S => \txd_out[7]_i_1__4_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[39]\(3),
      Q => \^txd_filtered\(3),
      S => \txd_out[7]_i_1__4_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[39]\(4),
      Q => \^txd_filtered\(4),
      S => \txd_out[7]_i_1__4_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[39]\(5),
      Q => \^txd_filtered\(5),
      S => \txd_out[7]_i_1__4_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => \^txd_filtered\(6),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[39]\(7),
      Q => \^txd_filtered\(7),
      S => \txd_out[7]_i_1__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_23 is
  port (
    \last_qmsg_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \last_qmsg_reg[14]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \last_qmsg_reg[10]\ : out STD_LOGIC;
    \last_qmsg_reg[11]\ : out STD_LOGIC;
    \last_qmsg_reg[12]\ : out STD_LOGIC;
    \last_qmsg_reg[13]\ : out STD_LOGIC;
    \last_qmsg_reg[15]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    is_terminate : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    txc_out_reg_0 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \txd_pipe_2_reg[47]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_23 : entity is "tx_filter";
end xaui_0_tx_filter_23;

architecture STRUCTURE of xaui_0_tx_filter_23 is
  signal \^last_qmsg_reg[10]\ : STD_LOGIC;
  signal \^last_qmsg_reg[11]\ : STD_LOGIC;
  signal \^last_qmsg_reg[12]\ : STD_LOGIC;
  signal \^last_qmsg_reg[13]\ : STD_LOGIC;
  signal \^last_qmsg_reg[14]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^last_qmsg_reg[15]\ : STD_LOGIC;
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_qmsg[10]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \last_qmsg[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \last_qmsg[12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \last_qmsg[13]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \last_qmsg[14]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \last_qmsg[15]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \last_qmsg[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \last_qmsg[9]_i_1\ : label is "soft_lutpair47";
begin
  \last_qmsg_reg[10]\ <= \^last_qmsg_reg[10]\;
  \last_qmsg_reg[11]\ <= \^last_qmsg_reg[11]\;
  \last_qmsg_reg[12]\ <= \^last_qmsg_reg[12]\;
  \last_qmsg_reg[13]\ <= \^last_qmsg_reg[13]\;
  \last_qmsg_reg[14]\(2 downto 0) <= \^last_qmsg_reg[14]\(2 downto 0);
  \last_qmsg_reg[15]\ <= \^last_qmsg_reg[15]\;
\last_qmsg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[10]\,
      I1 => txc_out_reg_0,
      I2 => data1(2),
      O => D(2)
    );
\last_qmsg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[11]\,
      I1 => txc_out_reg_0,
      I2 => data1(3),
      O => D(3)
    );
\last_qmsg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[12]\,
      I1 => txc_out_reg_0,
      I2 => data1(4),
      O => D(4)
    );
\last_qmsg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[13]\,
      I1 => txc_out_reg_0,
      I2 => data1(5),
      O => D(5)
    );
\last_qmsg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[14]\(2),
      I1 => txc_out_reg_0,
      I2 => data1(6),
      O => D(6)
    );
\last_qmsg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[15]\,
      I1 => txc_out_reg_0,
      I2 => data1(7),
      O => D(7)
    );
\last_qmsg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[14]\(0),
      I1 => txc_out_reg_0,
      I2 => data1(0),
      O => D(0)
    );
\last_qmsg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[14]\(1),
      I1 => txc_out_reg_0,
      I2 => data1(1),
      O => D(1)
    );
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \last_qmsg_reg[6]\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[47]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[5]\(0),
      I3 => is_terminate,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[47]\(1),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[5]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[47]\(6),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[5]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => is_terminate,
      I2 => \txd_is_IDLE_reg_reg[5]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__5_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => \^last_qmsg_reg[14]\(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => \^last_qmsg_reg[14]\(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[47]\(2),
      Q => \^last_qmsg_reg[10]\,
      S => \txd_out[7]_i_1__5_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[47]\(3),
      Q => \^last_qmsg_reg[11]\,
      S => \txd_out[7]_i_1__5_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[47]\(4),
      Q => \^last_qmsg_reg[12]\,
      S => \txd_out[7]_i_1__5_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[47]\(5),
      Q => \^last_qmsg_reg[13]\,
      S => \txd_out[7]_i_1__5_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => \^last_qmsg_reg[14]\(2),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[47]\(7),
      Q => \^last_qmsg_reg[15]\,
      S => \txd_out[7]_i_1__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_24 is
  port (
    \last_qmsg_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \last_qmsg_reg[22]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \last_qmsg_reg[18]\ : out STD_LOGIC;
    \last_qmsg_reg[19]\ : out STD_LOGIC;
    \last_qmsg_reg[20]\ : out STD_LOGIC;
    \last_qmsg_reg[21]\ : out STD_LOGIC;
    \last_qmsg_reg[23]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    is_terminate : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    txc_out_reg_0 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \txd_pipe_2_reg[55]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_24 : entity is "tx_filter";
end xaui_0_tx_filter_24;

architecture STRUCTURE of xaui_0_tx_filter_24 is
  signal \^last_qmsg_reg[18]\ : STD_LOGIC;
  signal \^last_qmsg_reg[19]\ : STD_LOGIC;
  signal \^last_qmsg_reg[20]\ : STD_LOGIC;
  signal \^last_qmsg_reg[21]\ : STD_LOGIC;
  signal \^last_qmsg_reg[22]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^last_qmsg_reg[23]\ : STD_LOGIC;
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_qmsg[16]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \last_qmsg[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \last_qmsg[18]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \last_qmsg[19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \last_qmsg[20]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \last_qmsg[21]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \last_qmsg[22]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \last_qmsg[23]_i_1\ : label is "soft_lutpair53";
begin
  \last_qmsg_reg[18]\ <= \^last_qmsg_reg[18]\;
  \last_qmsg_reg[19]\ <= \^last_qmsg_reg[19]\;
  \last_qmsg_reg[20]\ <= \^last_qmsg_reg[20]\;
  \last_qmsg_reg[21]\ <= \^last_qmsg_reg[21]\;
  \last_qmsg_reg[22]\(2 downto 0) <= \^last_qmsg_reg[22]\(2 downto 0);
  \last_qmsg_reg[23]\ <= \^last_qmsg_reg[23]\;
\last_qmsg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[22]\(0),
      I1 => txc_out_reg_0,
      I2 => data1(0),
      O => D(0)
    );
\last_qmsg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[22]\(1),
      I1 => txc_out_reg_0,
      I2 => data1(1),
      O => D(1)
    );
\last_qmsg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[18]\,
      I1 => txc_out_reg_0,
      I2 => data1(2),
      O => D(2)
    );
\last_qmsg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[19]\,
      I1 => txc_out_reg_0,
      I2 => data1(3),
      O => D(3)
    );
\last_qmsg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[20]\,
      I1 => txc_out_reg_0,
      I2 => data1(4),
      O => D(4)
    );
\last_qmsg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[21]\,
      I1 => txc_out_reg_0,
      I2 => data1(5),
      O => D(5)
    );
\last_qmsg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[22]\(2),
      I1 => txc_out_reg_0,
      I2 => data1(6),
      O => D(6)
    );
\last_qmsg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[23]\,
      I1 => txc_out_reg_0,
      I2 => data1(7),
      O => D(7)
    );
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \last_qmsg_reg[6]\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[55]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[6]\(0),
      I3 => is_terminate,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[55]\(1),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[6]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[55]\(6),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[6]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => is_terminate,
      I2 => \txd_is_IDLE_reg_reg[6]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__6_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => \^last_qmsg_reg[22]\(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => \^last_qmsg_reg[22]\(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[55]\(2),
      Q => \^last_qmsg_reg[18]\,
      S => \txd_out[7]_i_1__6_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[55]\(3),
      Q => \^last_qmsg_reg[19]\,
      S => \txd_out[7]_i_1__6_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[55]\(4),
      Q => \^last_qmsg_reg[20]\,
      S => \txd_out[7]_i_1__6_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[55]\(5),
      Q => \^last_qmsg_reg[21]\,
      S => \txd_out[7]_i_1__6_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => \^last_qmsg_reg[22]\(2),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[55]\(7),
      Q => \^last_qmsg_reg[23]\,
      S => \txd_out[7]_i_1__6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_25 is
  port (
    \last_qmsg_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \last_qmsg_reg[30]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \last_qmsg_reg[26]\ : out STD_LOGIC;
    \last_qmsg_reg[27]\ : out STD_LOGIC;
    \last_qmsg_reg[28]\ : out STD_LOGIC;
    \last_qmsg_reg[29]\ : out STD_LOGIC;
    \last_qmsg_reg[31]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    is_terminate : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    txc_out_reg_0 : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \txd_pipe_2_reg[63]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_25 : entity is "tx_filter";
end xaui_0_tx_filter_25;

architecture STRUCTURE of xaui_0_tx_filter_25 is
  signal \^last_qmsg_reg[26]\ : STD_LOGIC;
  signal \^last_qmsg_reg[27]\ : STD_LOGIC;
  signal \^last_qmsg_reg[28]\ : STD_LOGIC;
  signal \^last_qmsg_reg[29]\ : STD_LOGIC;
  signal \^last_qmsg_reg[30]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^last_qmsg_reg[31]\ : STD_LOGIC;
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \last_qmsg[24]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \last_qmsg[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \last_qmsg[26]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \last_qmsg[27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \last_qmsg[28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \last_qmsg[29]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \last_qmsg[30]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \last_qmsg[31]_i_2\ : label is "soft_lutpair57";
begin
  \last_qmsg_reg[26]\ <= \^last_qmsg_reg[26]\;
  \last_qmsg_reg[27]\ <= \^last_qmsg_reg[27]\;
  \last_qmsg_reg[28]\ <= \^last_qmsg_reg[28]\;
  \last_qmsg_reg[29]\ <= \^last_qmsg_reg[29]\;
  \last_qmsg_reg[30]\(2 downto 0) <= \^last_qmsg_reg[30]\(2 downto 0);
  \last_qmsg_reg[31]\ <= \^last_qmsg_reg[31]\;
\last_qmsg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[30]\(0),
      I1 => txc_out_reg_0,
      I2 => data1(0),
      O => D(0)
    );
\last_qmsg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[30]\(1),
      I1 => txc_out_reg_0,
      I2 => data1(1),
      O => D(1)
    );
\last_qmsg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[26]\,
      I1 => txc_out_reg_0,
      I2 => data1(2),
      O => D(2)
    );
\last_qmsg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[27]\,
      I1 => txc_out_reg_0,
      I2 => data1(3),
      O => D(3)
    );
\last_qmsg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[28]\,
      I1 => txc_out_reg_0,
      I2 => data1(4),
      O => D(4)
    );
\last_qmsg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[29]\,
      I1 => txc_out_reg_0,
      I2 => data1(5),
      O => D(5)
    );
\last_qmsg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[30]\(2),
      I1 => txc_out_reg_0,
      I2 => data1(6),
      O => D(6)
    );
\last_qmsg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^last_qmsg_reg[31]\,
      I1 => txc_out_reg_0,
      I2 => data1(7),
      O => D(7)
    );
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \last_qmsg_reg[6]\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[63]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[7]\(0),
      I3 => is_terminate,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[63]\(1),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[7]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[63]\(6),
      I3 => is_terminate,
      I4 => \txd_is_IDLE_reg_reg[7]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => is_terminate,
      I2 => \txd_is_IDLE_reg_reg[7]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__7_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => \^last_qmsg_reg[30]\(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => \^last_qmsg_reg[30]\(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[63]\(2),
      Q => \^last_qmsg_reg[26]\,
      S => \txd_out[7]_i_1__7_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[63]\(3),
      Q => \^last_qmsg_reg[27]\,
      S => \txd_out[7]_i_1__7_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[63]\(4),
      Q => \^last_qmsg_reg[28]\,
      S => \txd_out[7]_i_1__7_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[63]\(5),
      Q => \^last_qmsg_reg[29]\,
      S => \txd_out[7]_i_1__7_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => \^last_qmsg_reg[30]\(2),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[63]\(7),
      Q => \^last_qmsg_reg[31]\,
      S => \txd_out[7]_i_1__7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_26 is
  port (
    txc_filtered : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_qmsg_reg[31]\ : out STD_LOGIC;
    txd_filtered : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    \is_terminate_reg[0]\ : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    txc_out_reg_0 : in STD_LOGIC;
    txc_out_reg_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \txd_pipe_2_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_26 : entity is "tx_filter";
end xaui_0_tx_filter_26;

architecture STRUCTURE of xaui_0_tx_filter_26 is
  signal \last_qmsg[31]_i_4_n_0\ : STD_LOGIC;
  signal \last_qmsg[31]_i_7_n_0\ : STD_LOGIC;
  signal \^txc_filtered\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^txd_filtered\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__0_n_0\ : STD_LOGIC;
begin
  txc_filtered(0) <= \^txc_filtered\(0);
  txd_filtered(7 downto 0) <= \^txd_filtered\(7 downto 0);
\last_qmsg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => txc_out_reg_0,
      I1 => \last_qmsg[31]_i_4_n_0\,
      I2 => \^txd_filtered\(6),
      I3 => \^txd_filtered\(2),
      I4 => txc_out_reg_1(1),
      I5 => txc_out_reg_1(0),
      O => \last_qmsg_reg[31]\
    );
\last_qmsg[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \^txd_filtered\(1),
      I1 => \^txd_filtered\(4),
      I2 => \^txd_filtered\(5),
      I3 => \^txd_filtered\(0),
      I4 => \last_qmsg[31]_i_7_n_0\,
      O => \last_qmsg[31]_i_4_n_0\
    );
\last_qmsg[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^txc_filtered\(0),
      I1 => txc_out_reg_1(2),
      I2 => \^txd_filtered\(7),
      I3 => \^txd_filtered\(3),
      O => \last_qmsg[31]_i_7_n_0\
    );
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \^txc_filtered\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[7]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[0]\(0),
      I3 => \is_terminate_reg[0]\,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[7]\(1),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[0]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[7]\(6),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[0]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => \is_terminate_reg[0]\,
      I2 => \txd_is_IDLE_reg_reg[0]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__0_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => \^txd_filtered\(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => \^txd_filtered\(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[7]\(2),
      Q => \^txd_filtered\(2),
      S => \txd_out[7]_i_1__0_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[7]\(3),
      Q => \^txd_filtered\(3),
      S => \txd_out[7]_i_1__0_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[7]\(4),
      Q => \^txd_filtered\(4),
      S => \txd_out[7]_i_1__0_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[7]\(5),
      Q => \^txd_filtered\(5),
      S => \txd_out[7]_i_1__0_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => \^txd_filtered\(6),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[7]\(7),
      Q => \^txd_filtered\(7),
      S => \txd_out[7]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_27 is
  port (
    \txc_out_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    \is_terminate_reg[0]\ : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    \txd_pipe_2_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_27 : entity is "tx_filter";
end xaui_0_tx_filter_27;

architecture STRUCTURE of xaui_0_tx_filter_27 is
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__1_n_0\ : STD_LOGIC;
begin
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \txc_out_reg[1]\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[15]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[1]\(0),
      I3 => \is_terminate_reg[0]\,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[15]\(1),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[1]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[15]\(6),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[1]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => \is_terminate_reg[0]\,
      I2 => \txd_is_IDLE_reg_reg[1]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__1_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[15]\(2),
      Q => data1(2),
      S => \txd_out[7]_i_1__1_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[15]\(3),
      Q => data1(3),
      S => \txd_out[7]_i_1__1_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[15]\(4),
      Q => data1(4),
      S => \txd_out[7]_i_1__1_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[15]\(5),
      Q => data1(5),
      S => \txd_out[7]_i_1__1_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => data1(6),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[15]\(7),
      Q => data1(7),
      S => \txd_out[7]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_28 is
  port (
    \txc_out_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    \is_terminate_reg[0]\ : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    \txd_pipe_2_reg[23]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_28 : entity is "tx_filter";
end xaui_0_tx_filter_28;

architecture STRUCTURE of xaui_0_tx_filter_28 is
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__2_n_0\ : STD_LOGIC;
begin
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \txc_out_reg[2]\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[23]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[2]\(0),
      I3 => \is_terminate_reg[0]\,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[23]\(1),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[2]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[23]\(6),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[2]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => \is_terminate_reg[0]\,
      I2 => \txd_is_IDLE_reg_reg[2]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__2_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[23]\(2),
      Q => data1(2),
      S => \txd_out[7]_i_1__2_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[23]\(3),
      Q => data1(3),
      S => \txd_out[7]_i_1__2_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[23]\(4),
      Q => data1(4),
      S => \txd_out[7]_i_1__2_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[23]\(5),
      Q => data1(5),
      S => \txd_out[7]_i_1__2_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => data1(6),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[23]\(7),
      Q => data1(7),
      S => \txd_out[7]_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_filter_29 is
  port (
    \txc_out_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    data1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    usrclk : in STD_LOGIC;
    \is_terminate_reg[0]\ : in STD_LOGIC;
    \txd_is_IDLE_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_invalid_k : in STD_LOGIC_VECTOR ( 0 to 0 );
    \txd_pipe_2_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_filter_29 : entity is "tx_filter";
end xaui_0_tx_filter_29;

architecture STRUCTURE of xaui_0_tx_filter_29 is
  signal \txd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[7]_i_1__3_n_0\ : STD_LOGIC;
begin
txc_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => Q(0),
      Q => \txc_out_reg[3]\(0),
      R => '0'
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222AAAA"
    )
        port map (
      I0 => \txd_pipe_2_reg[31]\(0),
      I1 => is_invalid_k(0),
      I2 => \txd_is_IDLE_reg_reg[3]\(0),
      I3 => \is_terminate_reg[0]\,
      I4 => Q(0),
      O => \txd_out[0]_i_1_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[31]\(1),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[3]\(0),
      O => \txd_out[1]_i_1_n_0\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50F8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => is_invalid_k(0),
      I2 => \txd_pipe_2_reg[31]\(6),
      I3 => \is_terminate_reg[0]\,
      I4 => \txd_is_IDLE_reg_reg[3]\(0),
      O => \txd_out[6]_i_1_n_0\
    );
\txd_out[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => Q(0),
      I1 => \is_terminate_reg[0]\,
      I2 => \txd_is_IDLE_reg_reg[3]\(0),
      I3 => is_invalid_k(0),
      O => \txd_out[7]_i_1__3_n_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[0]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[1]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[31]\(2),
      Q => data1(2),
      S => \txd_out[7]_i_1__3_n_0\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[31]\(3),
      Q => data1(3),
      S => \txd_out[7]_i_1__3_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[31]\(4),
      Q => data1(4),
      S => \txd_out[7]_i_1__3_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[31]\(5),
      Q => data1(5),
      S => \txd_out[7]_i_1__3_n_0\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_out[6]_i_1_n_0\,
      Q => data1(6),
      R => '0'
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_2_reg[31]\(7),
      Q => data1(7),
      S => \txd_out[7]_i_1__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_recoder is
  port (
    \txd_out_reg[37]_0\ : out STD_LOGIC;
    \txd_out_reg[19]_0\ : out STD_LOGIC;
    \txd_out_reg[38]_0\ : out STD_LOGIC;
    \txd_out_reg[62]_0\ : out STD_LOGIC;
    mgt_txdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    mgt_txcharisk : out STD_LOGIC_VECTOR ( 7 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    usrclk : in STD_LOGIC;
    \last_qmsg_reg[30]\ : in STD_LOGIC;
    \last_qmsg_reg[22]\ : in STD_LOGIC;
    \last_qmsg_reg[14]\ : in STD_LOGIC;
    \last_qmsg_reg[6]\ : in STD_LOGIC;
    \last_qmsg_reg[30]_0\ : in STD_LOGIC;
    \last_qmsg_reg[22]_0\ : in STD_LOGIC;
    \last_qmsg_reg[14]_0\ : in STD_LOGIC;
    \last_qmsg_reg[6]_0\ : in STD_LOGIC;
    \state_reg[1][0]\ : in STD_LOGIC;
    \last_qmsg_reg[19]\ : in STD_LOGIC;
    \state_reg[1][1]\ : in STD_LOGIC;
    \last_qmsg_reg[3]\ : in STD_LOGIC;
    \last_qmsg_reg[27]\ : in STD_LOGIC;
    \last_qmsg_reg[3]_0\ : in STD_LOGIC;
    \last_qmsg_reg[25]\ : in STD_LOGIC;
    \last_qmsg_reg[17]\ : in STD_LOGIC;
    \last_qmsg_reg[9]\ : in STD_LOGIC;
    \last_qmsg_reg[1]\ : in STD_LOGIC;
    \last_qmsg_reg[25]_0\ : in STD_LOGIC;
    \last_qmsg_reg[17]_0\ : in STD_LOGIC;
    \last_qmsg_reg[9]_0\ : in STD_LOGIC;
    \last_qmsg_reg[1]_0\ : in STD_LOGIC;
    \last_qmsg_reg[24]\ : in STD_LOGIC;
    \last_qmsg_reg[16]\ : in STD_LOGIC;
    \last_qmsg_reg[8]\ : in STD_LOGIC;
    \last_qmsg_reg[0]\ : in STD_LOGIC;
    \last_qmsg_reg[24]_0\ : in STD_LOGIC;
    \last_qmsg_reg[16]_0\ : in STD_LOGIC;
    \last_qmsg_reg[8]_0\ : in STD_LOGIC;
    \last_qmsg_reg[0]_0\ : in STD_LOGIC;
    \state_reg[1][2]\ : in STD_LOGIC;
    \state_reg[1][2]_0\ : in STD_LOGIC;
    \state_reg[1][2]_1\ : in STD_LOGIC;
    \state_reg[1][2]_2\ : in STD_LOGIC;
    \last_qmsg_reg[7]\ : in STD_LOGIC;
    \last_qmsg_reg[28]\ : in STD_LOGIC;
    \last_qmsg_reg[26]\ : in STD_LOGIC;
    \last_qmsg_reg[20]\ : in STD_LOGIC;
    \last_qmsg_reg[18]\ : in STD_LOGIC;
    \last_qmsg_reg[12]\ : in STD_LOGIC;
    \last_qmsg_reg[10]\ : in STD_LOGIC;
    \last_qmsg_reg[4]\ : in STD_LOGIC;
    \last_qmsg_reg[2]\ : in STD_LOGIC;
    \state_reg[0][0]\ : in STD_LOGIC;
    \state_reg[0][2]\ : in STD_LOGIC;
    \state_reg[0][2]_0\ : in STD_LOGIC;
    \state_reg[0][2]_1\ : in STD_LOGIC;
    \state_reg[0][2]_2\ : in STD_LOGIC;
    \state_reg[0][0]_0\ : in STD_LOGIC;
    \state_reg[0][2]_3\ : in STD_LOGIC;
    \state_reg[0][2]_4\ : in STD_LOGIC;
    \state_reg[0][2]_5\ : in STD_LOGIC;
    \state_reg[0][2]_6\ : in STD_LOGIC;
    \state_reg[0][2]_7\ : in STD_LOGIC;
    \state_reg[0][2]_8\ : in STD_LOGIC;
    \state_reg[0][2]_9\ : in STD_LOGIC;
    \state_reg[0][2]_10\ : in STD_LOGIC;
    txc_out_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_recoder : entity is "tx_recoder";
end xaui_0_tx_recoder;

architecture STRUCTURE of xaui_0_tx_recoder is
  signal txd_out13_out : STD_LOGIC;
  signal \txd_out[56]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[59]_i_1_n_0\ : STD_LOGIC;
  signal \txd_out[60]_i_1_n_0\ : STD_LOGIC;
  signal \^txd_out_reg[62]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \txd_out[19]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \txd_out[61]_i_2\ : label is "soft_lutpair60";
begin
  \txd_out_reg[62]_0\ <= \^txd_out_reg[62]_0\;
\txc_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => configuration_vector(1),
      I1 => configuration_vector(2),
      I2 => configuration_vector(0),
      O => txd_out13_out
    );
\txc_out_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(0),
      Q => mgt_txcharisk(0),
      S => txd_out13_out
    );
\txc_out_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(1),
      Q => mgt_txcharisk(2),
      S => txd_out13_out
    );
\txc_out_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(2),
      Q => mgt_txcharisk(4),
      S => txd_out13_out
    );
\txc_out_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(3),
      Q => mgt_txcharisk(6),
      S => txd_out13_out
    );
\txc_out_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(4),
      Q => mgt_txcharisk(1),
      S => txd_out13_out
    );
\txc_out_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(5),
      Q => mgt_txcharisk(3),
      S => txd_out13_out
    );
\txc_out_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(6),
      Q => mgt_txcharisk(5),
      S => txd_out13_out
    );
\txc_out_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => txc_out_reg(7),
      Q => mgt_txcharisk(7),
      S => txd_out13_out
    );
\txd_out[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => configuration_vector(0),
      I1 => configuration_vector(1),
      I2 => configuration_vector(2),
      O => \txd_out_reg[19]_0\
    );
\txd_out[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => configuration_vector(1),
      I2 => configuration_vector(0),
      O => \txd_out[56]_i_1_n_0\
    );
\txd_out[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => configuration_vector(0),
      I1 => configuration_vector(2),
      I2 => configuration_vector(1),
      O => \txd_out[59]_i_1_n_0\
    );
\txd_out[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => configuration_vector(0),
      I1 => configuration_vector(1),
      I2 => configuration_vector(2),
      O => \txd_out[60]_i_1_n_0\
    );
\txd_out[61]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => configuration_vector(1),
      I2 => configuration_vector(0),
      O => \txd_out_reg[37]_0\
    );
\txd_out[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => configuration_vector(0),
      I1 => configuration_vector(1),
      O => \^txd_out_reg[62]_0\
    );
\txd_out[62]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => configuration_vector(0),
      I1 => configuration_vector(2),
      O => \txd_out_reg[38]_0\
    );
\txd_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[0]_0\,
      Q => mgt_txdata(0),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_8\,
      Q => mgt_txdata(18),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(1),
      Q => mgt_txdata(19),
      R => '0'
    );
\txd_out_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_7\,
      Q => mgt_txdata(20),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(2),
      Q => mgt_txdata(21),
      R => '0'
    );
\txd_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[14]_0\,
      Q => mgt_txdata(22),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_1\,
      Q => mgt_txdata(23),
      S => \state_reg[0][0]\
    );
\txd_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[16]_0\,
      Q => mgt_txdata(32),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[17]_0\,
      Q => mgt_txdata(33),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_6\,
      Q => mgt_txdata(34),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(3),
      Q => mgt_txdata(35),
      R => '0'
    );
\txd_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[1]_0\,
      Q => mgt_txdata(1),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_5\,
      Q => mgt_txdata(36),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(4),
      Q => mgt_txdata(37),
      R => '0'
    );
\txd_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[22]_0\,
      Q => mgt_txdata(38),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_0\,
      Q => mgt_txdata(39),
      S => \state_reg[0][0]\
    );
\txd_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[24]_0\,
      Q => mgt_txdata(48),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[25]_0\,
      Q => mgt_txdata(49),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_4\,
      Q => mgt_txdata(50),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[27]\,
      Q => mgt_txdata(51),
      R => \txd_out[59]_i_1_n_0\
    );
\txd_out_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_3\,
      Q => mgt_txdata(52),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(5),
      Q => mgt_txdata(53),
      R => '0'
    );
\txd_out_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_10\,
      Q => mgt_txdata(2),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[30]_0\,
      Q => mgt_txdata(54),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]\,
      Q => mgt_txdata(55),
      S => \state_reg[0][0]\
    );
\txd_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[0]\,
      Q => mgt_txdata(8),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[1]\,
      Q => mgt_txdata(9),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[34]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[2]\,
      Q => mgt_txdata(10),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[3]\,
      Q => mgt_txdata(11),
      R => \txd_out[59]_i_1_n_0\
    );
\txd_out_reg[36]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[4]\,
      Q => mgt_txdata(12),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(6),
      Q => mgt_txdata(13),
      R => '0'
    );
\txd_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[6]\,
      Q => mgt_txdata(14),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[39]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[7]\,
      Q => mgt_txdata(15),
      S => \state_reg[1][2]\
    );
\txd_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[3]_0\,
      Q => mgt_txdata(3),
      R => \txd_out[59]_i_1_n_0\
    );
\txd_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[8]\,
      Q => mgt_txdata(24),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[9]\,
      Q => mgt_txdata(25),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[42]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[10]\,
      Q => mgt_txdata(26),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[1][1]\,
      Q => mgt_txdata(27),
      R => \txd_out[59]_i_1_n_0\
    );
\txd_out_reg[44]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[12]\,
      Q => mgt_txdata(28),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(7),
      Q => mgt_txdata(29),
      R => '0'
    );
\txd_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[14]\,
      Q => mgt_txdata(30),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[47]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[1][2]_2\,
      Q => mgt_txdata(31),
      S => \state_reg[1][2]\
    );
\txd_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[16]\,
      Q => mgt_txdata(40),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[17]\,
      Q => mgt_txdata(41),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_9\,
      Q => mgt_txdata(4),
      S => \state_reg[0][0]_0\
    );
\txd_out_reg[50]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[18]\,
      Q => mgt_txdata(42),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[19]\,
      Q => mgt_txdata(43),
      R => \txd_out[59]_i_1_n_0\
    );
\txd_out_reg[52]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[20]\,
      Q => mgt_txdata(44),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(8),
      Q => mgt_txdata(45),
      R => '0'
    );
\txd_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[22]\,
      Q => mgt_txdata(46),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[55]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[1][2]_1\,
      Q => mgt_txdata(47),
      S => \state_reg[1][2]\
    );
\txd_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[24]\,
      Q => mgt_txdata(56),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[25]\,
      Q => mgt_txdata(57),
      R => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[58]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[26]\,
      Q => mgt_txdata(58),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[1][0]\,
      Q => mgt_txdata(59),
      R => \txd_out[59]_i_1_n_0\
    );
\txd_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(0),
      Q => mgt_txdata(5),
      R => '0'
    );
\txd_out_reg[60]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[28]\,
      Q => mgt_txdata(60),
      S => \txd_out[60]_i_1_n_0\
    );
\txd_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => D(9),
      Q => mgt_txdata(61),
      R => '0'
    );
\txd_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[30]\,
      Q => mgt_txdata(62),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[63]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[1][2]_0\,
      Q => mgt_txdata(63),
      S => \state_reg[1][2]\
    );
\txd_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[6]_0\,
      Q => mgt_txdata(6),
      R => \^txd_out_reg[62]_0\
    );
\txd_out_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \state_reg[0][2]_2\,
      Q => mgt_txdata(7),
      S => \state_reg[0][0]\
    );
\txd_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[8]_0\,
      Q => mgt_txdata(16),
      R => \txd_out[56]_i_1_n_0\
    );
\txd_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \last_qmsg_reg[9]_0\,
      Q => mgt_txdata(17),
      R => \txd_out[60]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx_state_machine is
  port (
    \txd_out_reg[38]\ : out STD_LOGIC;
    \txd_out_reg[46]\ : out STD_LOGIC;
    \txd_out_reg[54]\ : out STD_LOGIC;
    \txd_out_reg[62]\ : out STD_LOGIC;
    \txd_out_reg[6]\ : out STD_LOGIC;
    \txd_out_reg[14]\ : out STD_LOGIC;
    \txd_out_reg[22]\ : out STD_LOGIC;
    \txd_out_reg[30]\ : out STD_LOGIC;
    \txd_out_reg[3]\ : out STD_LOGIC;
    \txd_out_reg[27]\ : out STD_LOGIC;
    \txd_out_reg[7]\ : out STD_LOGIC;
    \txd_out_reg[25]\ : out STD_LOGIC;
    \txd_out_reg[24]\ : out STD_LOGIC;
    \txd_out_reg[17]\ : out STD_LOGIC;
    \txd_out_reg[16]\ : out STD_LOGIC;
    \txd_out_reg[9]\ : out STD_LOGIC;
    \txd_out_reg[8]\ : out STD_LOGIC;
    \txd_out_reg[1]\ : out STD_LOGIC;
    \txd_out_reg[0]\ : out STD_LOGIC;
    \txd_out_reg[39]\ : out STD_LOGIC;
    \txd_out_reg[43]\ : out STD_LOGIC;
    \txd_out_reg[51]\ : out STD_LOGIC;
    \txd_out_reg[32]\ : out STD_LOGIC;
    \txd_out_reg[33]\ : out STD_LOGIC;
    \txd_out_reg[35]\ : out STD_LOGIC;
    \txd_out_reg[40]\ : out STD_LOGIC;
    \txd_out_reg[41]\ : out STD_LOGIC;
    \txd_out_reg[48]\ : out STD_LOGIC;
    \txd_out_reg[49]\ : out STD_LOGIC;
    \txd_out_reg[56]\ : out STD_LOGIC;
    \txd_out_reg[57]\ : out STD_LOGIC;
    \txd_out_reg[59]\ : out STD_LOGIC;
    \state_reg[1][2]_0\ : out STD_LOGIC;
    \prbs_reg[7]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \txc_out_reg[7]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \txd_out_reg[28]\ : out STD_LOGIC;
    \txd_out_reg[31]\ : out STD_LOGIC;
    \txd_out_reg[28]_0\ : out STD_LOGIC;
    \txd_out_reg[26]\ : out STD_LOGIC;
    \txd_out_reg[20]\ : out STD_LOGIC;
    \txd_out_reg[18]\ : out STD_LOGIC;
    \txd_out_reg[15]\ : out STD_LOGIC;
    \txd_out_reg[12]\ : out STD_LOGIC;
    \txd_out_reg[10]\ : out STD_LOGIC;
    \txd_out_reg[4]\ : out STD_LOGIC;
    \txd_out_reg[2]\ : out STD_LOGIC;
    \txd_out_reg[7]_0\ : out STD_LOGIC;
    \txd_out_reg[23]\ : out STD_LOGIC;
    \txd_out_reg[34]\ : out STD_LOGIC;
    \txd_out_reg[36]\ : out STD_LOGIC;
    \txd_out_reg[39]_0\ : out STD_LOGIC;
    \txd_out_reg[42]\ : out STD_LOGIC;
    \txd_out_reg[44]\ : out STD_LOGIC;
    \txd_out_reg[47]\ : out STD_LOGIC;
    \txd_out_reg[50]\ : out STD_LOGIC;
    \txd_out_reg[52]\ : out STD_LOGIC;
    \txd_out_reg[55]\ : out STD_LOGIC;
    \txd_out_reg[58]\ : out STD_LOGIC;
    \txd_out_reg[60]\ : out STD_LOGIC;
    \txd_out_reg[63]\ : out STD_LOGIC;
    q_det_reg : out STD_LOGIC;
    extra_a_reg : out STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    usrclk : in STD_LOGIC;
    \configuration_vector[6]\ : in STD_LOGIC;
    last_qmsg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txd_filtered : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \txd_out_reg[6]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \txd_out_reg[6]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \txd_out_reg[6]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    q_det : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \configuration_vector[5]\ : in STD_LOGIC;
    \txd_out_reg[3]_0\ : in STD_LOGIC;
    \configuration_vector[4]\ : in STD_LOGIC;
    \txd_out_reg[3]_1\ : in STD_LOGIC;
    \txd_out_reg[3]_2\ : in STD_LOGIC;
    \count_reg[2]\ : in STD_LOGIC;
    q_det_reg_0 : in STD_LOGIC;
    \prbs_reg[8]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[4]\ : in STD_LOGIC;
    \txd_out_reg[5]\ : in STD_LOGIC;
    \txd_out_reg[5]_0\ : in STD_LOGIC;
    \txd_out_reg[5]_1\ : in STD_LOGIC;
    \prbs_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tx_is_idle_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txc_filtered : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \configuration_vector[6]_0\ : in STD_LOGIC;
    \txd_out_reg[2]_0\ : in STD_LOGIC;
    \txd_out_reg[4]_0\ : in STD_LOGIC;
    \txd_out_reg[7]_1\ : in STD_LOGIC;
    \txd_out_reg[2]_1\ : in STD_LOGIC;
    \txd_out_reg[4]_1\ : in STD_LOGIC;
    \txd_out_reg[7]_2\ : in STD_LOGIC;
    \txd_out_reg[2]_2\ : in STD_LOGIC;
    \txd_out_reg[4]_2\ : in STD_LOGIC;
    \txd_out_reg[7]_3\ : in STD_LOGIC;
    \txd_out_reg[6]_3\ : in STD_LOGIC;
    extra_a : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx_state_machine : entity is "tx_state_machine";
end xaui_0_tx_state_machine;

architecture STRUCTURE of xaui_0_tx_state_machine is
  signal \get_next_state[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal next_ifg_is_a_i_1_n_0 : STD_LOGIC;
  signal next_ifg_is_a_i_2_n_0 : STD_LOGIC;
  signal next_ifg_is_a_i_3_n_0 : STD_LOGIC;
  signal next_ifg_is_a_reg_n_0 : STD_LOGIC;
  signal \next_state[1]16_out\ : STD_LOGIC;
  signal \^prbs_reg[7]\ : STD_LOGIC;
  signal \state[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \state[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \state[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \state[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \state[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \state[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \state[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \state[1][0]_i_8_n_0\ : STD_LOGIC;
  signal \state[1][0]_i_9_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \state[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \^state_reg[1][2]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \state_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \state_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \state_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \state_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \txc_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \txd_out[19]_i_2_n_0\ : STD_LOGIC;
  signal \txd_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \txd_out[27]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prbs[7]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \state[0][0]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \state[0][1]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \state[0][2]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \state[1][0]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \state[1][0]_i_6\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \state[1][0]_i_9\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \state[1][1]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \state[1][1]_i_5\ : label is "soft_lutpair64";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0][0]\ : label is "one-hot";
  attribute FSM_ENCODING of \state_reg[0][1]\ : label is "one-hot";
  attribute FSM_ENCODING of \state_reg[0][2]\ : label is "one-hot";
  attribute FSM_ENCODING of \state_reg[1][0]\ : label is "one-hot";
  attribute FSM_ENCODING of \state_reg[1][1]\ : label is "one-hot";
  attribute FSM_ENCODING of \state_reg[1][2]\ : label is "one-hot";
  attribute SOFT_HLUTNM of \txc_out[7]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \txc_out[7]_i_4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \txd_out[19]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \txd_out[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \txd_out[25]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \txd_out[27]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \txd_out[33]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \txd_out[41]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \txd_out[49]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \txd_out[57]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \txd_out[63]_i_2\ : label is "soft_lutpair68";
begin
  \prbs_reg[7]\ <= \^prbs_reg[7]\;
  \state_reg[1][2]_0\ <= \^state_reg[1][2]_0\;
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFEF20AA2020"
    )
        port map (
      I0 => \prbs_reg[2]\(0),
      I1 => \state_reg_n_0_[0][0]\,
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \count_reg[1]_0\(0),
      O => \count_reg[1]\(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020EFAAEFEF"
    )
        port map (
      I0 => \prbs_reg[2]\(1),
      I1 => \state_reg_n_0_[0][0]\,
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \count_reg[1]_0\(1),
      O => \count_reg[1]\(1)
    );
extra_a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABA00BA"
    )
        port map (
      I0 => extra_a,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \state_reg_n_0_[1][0]\,
      I5 => usrclk_reset,
      O => extra_a_reg
    );
next_ifg_is_a_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => next_ifg_is_a_i_2_n_0,
      I1 => next_ifg_is_a_i_3_n_0,
      I2 => next_ifg_is_a_reg_n_0,
      O => next_ifg_is_a_i_1_n_0
    );
next_ifg_is_a_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101010101FF"
    )
        port map (
      I0 => \state_reg_n_0_[1][1]\,
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[0][1]\,
      I4 => \state_reg_n_0_[0][2]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => next_ifg_is_a_i_2_n_0
    );
next_ifg_is_a_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404FF0404"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \state_reg_n_0_[0][0]\,
      I3 => \state_reg_n_0_[1][2]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \state_reg_n_0_[1][0]\,
      O => next_ifg_is_a_i_3_n_0
    );
next_ifg_is_a_reg: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => next_ifg_is_a_i_1_n_0,
      Q => next_ifg_is_a_reg_n_0,
      S => usrclk_reset
    );
\prbs[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \state_reg_n_0_[0][0]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      O => \^prbs_reg[7]\
    );
q_det_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF07770000"
    )
        port map (
      I0 => \state_reg_n_0_[0][0]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => q_det,
      I5 => \txd_out_reg[6]_3\,
      O => q_det_reg
    );
\state[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8AFF8AFF88FFFF"
    )
        port map (
      I0 => \state[0][0]_i_2_n_0\,
      I1 => q_det,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state[0][0]_i_3_n_0\,
      I4 => \tx_is_idle_reg[1]\(0),
      I5 => Q(0),
      O => \state[0][0]_i_1_n_0\
    );
\state[0][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1][1]\,
      I1 => \state_reg_n_0_[1][0]\,
      O => \state[0][0]_i_2_n_0\
    );
\state[0][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF40000"
    )
        port map (
      I0 => \state_reg_n_0_[0][0]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \count_reg[4]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \state_reg_n_0_[1][2]\,
      I5 => \prbs_reg[8]\(1),
      O => \state[0][0]_i_3_n_0\
    );
\state[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EAAA"
    )
        port map (
      I0 => \state[0][1]_i_2_n_0\,
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state[0][0]_i_2_n_0\,
      I3 => q_det,
      I4 => \next_state[1]16_out\,
      I5 => usrclk_reset,
      O => \state[0][1]_i_1_n_0\
    );
\state[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444EF44EE"
    )
        port map (
      I0 => \state[1][1]_i_5_n_0\,
      I1 => \state[0][1]_i_3_n_0\,
      I2 => \state[1][1]_i_3_n_0\,
      I3 => \^prbs_reg[7]\,
      I4 => next_ifg_is_a_reg_n_0,
      I5 => \count_reg[4]\,
      O => \state[0][1]_i_2_n_0\
    );
\state[0][1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C08"
    )
        port map (
      I0 => q_det,
      I1 => \state_reg_n_0_[1][1]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => Q(0),
      O => \state[0][1]_i_3_n_0\
    );
\state[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAAFFABF"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => q_det,
      I2 => \state_reg_n_0_[1][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => Q(0),
      I5 => \state[0][2]_i_2_n_0\,
      O => \state[0][2]_i_1_n_0\
    );
\state[0][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => usrclk_reset,
      I1 => \tx_is_idle_reg[1]\(0),
      I2 => Q(0),
      O => \state[0][2]_i_2_n_0\
    );
\state[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FFFF5557"
    )
        port map (
      I0 => \state[1][0]_i_2_n_0\,
      I1 => \count_reg[2]\,
      I2 => \state[1][0]_i_4_n_0\,
      I3 => \prbs_reg[8]\(0),
      I4 => \state[1][0]_i_5_n_0\,
      I5 => \next_state[1]16_out\,
      O => \get_next_state[1]_0\(0)
    );
\state[1][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(1),
      I1 => \tx_is_idle_reg[1]\(1),
      O => \state[1][0]_i_2_n_0\
    );
\state[1][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05500540"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => q_det,
      I2 => \state_reg_n_0_[1][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => Q(0),
      O => \state[1][0]_i_4_n_0\
    );
\state[1][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAEEEE"
    )
        port map (
      I0 => \state[1][0]_i_8_n_0\,
      I1 => \state_reg_n_0_[1][2]\,
      I2 => q_det,
      I3 => \^prbs_reg[7]\,
      I4 => \prbs_reg[8]\(0),
      I5 => \state[1][0]_i_9_n_0\,
      O => \state[1][0]_i_5_n_0\
    );
\state[1][0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      I1 => \tx_is_idle_reg[1]\(0),
      O => \next_state[1]16_out\
    );
\state[1][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044000040400000"
    )
        port map (
      I0 => \^prbs_reg[7]\,
      I1 => next_ifg_is_a_reg_n_0,
      I2 => q_det,
      I3 => \state_reg_n_0_[1][2]\,
      I4 => \state_reg_n_0_[1][0]\,
      I5 => Q(1),
      O => \state[1][0]_i_8_n_0\
    );
\state[1][0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[1][1]\,
      I1 => \count_reg[4]\,
      O => \state[1][0]_i_9_n_0\
    );
\state[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AA00AA"
    )
        port map (
      I0 => \state[1][1]_i_2_n_0\,
      I1 => \count_reg[2]\,
      I2 => next_ifg_is_a_reg_n_0,
      I3 => \next_state[1]16_out\,
      I4 => \state[1][0]_i_2_n_0\,
      I5 => usrclk_reset,
      O => \state[1][1]_i_1_n_0\
    );
\state[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000008B008B00"
    )
        port map (
      I0 => \count_reg[2]\,
      I1 => \state[1][1]_i_3_n_0\,
      I2 => \state[1][2]_i_2_n_0\,
      I3 => \state[1][0]_i_2_n_0\,
      I4 => q_det_reg_0,
      I5 => \state[1][1]_i_5_n_0\,
      O => \state[1][1]_i_2_n_0\
    );
\state[1][1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[1][1]\,
      I1 => \state_reg_n_0_[1][0]\,
      O => \state[1][1]_i_3_n_0\
    );
\state[1][1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \state_reg_n_0_[1][0]\,
      I2 => \state_reg_n_0_[1][1]\,
      O => \state[1][1]_i_5_n_0\
    );
\state[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E0EE"
    )
        port map (
      I0 => \tx_is_idle_reg[1]\(1),
      I1 => Q(1),
      I2 => \state[1][2]_i_2_n_0\,
      I3 => \^state_reg[1][2]_0\,
      I4 => \next_state[1]16_out\,
      I5 => usrclk_reset,
      O => \state[1][2]_i_1_n_0\
    );
\state[1][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF1FF"
    )
        port map (
      I0 => q_det,
      I1 => Q(1),
      I2 => \count_reg[4]\,
      I3 => next_ifg_is_a_reg_n_0,
      I4 => \^prbs_reg[7]\,
      O => \state[1][2]_i_2_n_0\
    );
\state_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[0][0]_i_1_n_0\,
      Q => \state_reg_n_0_[0][0]\,
      R => usrclk_reset
    );
\state_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[0][1]_i_1_n_0\,
      Q => \state_reg_n_0_[0][1]\,
      R => '0'
    );
\state_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[0][2]_i_1_n_0\,
      Q => \state_reg_n_0_[0][2]\,
      R => '0'
    );
\state_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \get_next_state[1]_0\(0),
      Q => \state_reg_n_0_[1][0]\,
      R => usrclk_reset
    );
\state_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[1][1]_i_1_n_0\,
      Q => \state_reg_n_0_[1][1]\,
      R => '0'
    );
\state_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \state[1][2]_i_1_n_0\,
      Q => \state_reg_n_0_[1][2]\,
      R => '0'
    );
\txc_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAAFCFC"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => \txd_out[27]_i_2_n_0\,
      I2 => txc_filtered(0),
      I3 => configuration_vector(1),
      I4 => configuration_vector(0),
      O => \txc_out_reg[7]\(0)
    );
\txc_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFCAAAA0CFC0CFC"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => txc_filtered(1),
      I2 => \txd_out[27]_i_2_n_0\,
      I3 => \txd_out[19]_i_2_n_0\,
      I4 => configuration_vector(1),
      I5 => configuration_vector(0),
      O => \txc_out_reg[7]\(1)
    );
\txc_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFCAAAA0CFC0CFC"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => txc_filtered(2),
      I2 => \txd_out[27]_i_2_n_0\,
      I3 => \txd_out[19]_i_2_n_0\,
      I4 => configuration_vector(1),
      I5 => configuration_vector(0),
      O => \txc_out_reg[7]\(2)
    );
\txc_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFCAAAA0CFC0CFC"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => txc_filtered(3),
      I2 => \txd_out[27]_i_2_n_0\,
      I3 => \txd_out[19]_i_2_n_0\,
      I4 => configuration_vector(1),
      I5 => configuration_vector(0),
      O => \txc_out_reg[7]\(3)
    );
\txc_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F88808BBFBBB0B"
    )
        port map (
      I0 => txc_filtered(4),
      I1 => \^state_reg[1][2]_0\,
      I2 => configuration_vector(0),
      I3 => configuration_vector(1),
      I4 => configuration_vector(2),
      I5 => \txc_out[7]_i_4_n_0\,
      O => \txc_out_reg[7]\(4)
    );
\txc_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F88808BBFBBB0B"
    )
        port map (
      I0 => txc_filtered(5),
      I1 => \^state_reg[1][2]_0\,
      I2 => configuration_vector(0),
      I3 => configuration_vector(1),
      I4 => configuration_vector(2),
      I5 => \txc_out[7]_i_4_n_0\,
      O => \txc_out_reg[7]\(5)
    );
\txc_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F88808BBFBBB0B"
    )
        port map (
      I0 => txc_filtered(6),
      I1 => \^state_reg[1][2]_0\,
      I2 => configuration_vector(0),
      I3 => configuration_vector(1),
      I4 => configuration_vector(2),
      I5 => \txc_out[7]_i_4_n_0\,
      O => \txc_out_reg[7]\(6)
    );
\txc_out[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \state_reg_n_0_[1][0]\,
      I2 => \state_reg_n_0_[1][1]\,
      O => \^state_reg[1][2]_0\
    );
\txc_out[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[1][1]\,
      I1 => \state_reg_n_0_[1][0]\,
      O => \txc_out[7]_i_4_n_0\
    );
\txd_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEECCFCCCCCCCCC"
    )
        port map (
      I0 => last_qmsg(0),
      I1 => \configuration_vector[5]\,
      I2 => txd_filtered(0),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[0]\
    );
\txd_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => data1(2),
      I3 => last_qmsg(10),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[10]\
    );
\txd_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554500FFFFFFFF"
    )
        port map (
      I0 => \configuration_vector[5]\,
      I1 => last_qmsg(11),
      I2 => \txd_out[19]_i_2_n_0\,
      I3 => \txd_out[27]_i_2_n_0\,
      I4 => data1(3),
      I5 => \configuration_vector[6]_0\,
      O => D(1)
    );
\txd_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => data1(4),
      I3 => last_qmsg(12),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[12]\
    );
\txd_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBFFF3FF"
    )
        port map (
      I0 => last_qmsg(13),
      I1 => \configuration_vector[4]\,
      I2 => data1(5),
      I3 => \state_reg_n_0_[0][0]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][2]\,
      O => D(2)
    );
\txd_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAFAFFFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(14),
      I2 => data1(6),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[14]\
    );
\txd_out[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000400"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => data1(7),
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[0][0]\,
      I4 => last_qmsg(15),
      O => \txd_out_reg[15]\
    );
\txd_out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEECCFCCCCCCCCC"
    )
        port map (
      I0 => last_qmsg(16),
      I1 => \configuration_vector[5]\,
      I2 => data1(8),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[16]\
    );
\txd_out[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA0C0000"
    )
        port map (
      I0 => last_qmsg(17),
      I1 => data1(9),
      I2 => \state_reg_n_0_[0][2]\,
      I3 => \state_reg_n_0_[0][1]\,
      I4 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[17]\
    );
\txd_out[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => data1(10),
      I3 => last_qmsg(18),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[18]\
    );
\txd_out[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45554500FFFFFFFF"
    )
        port map (
      I0 => \configuration_vector[5]\,
      I1 => last_qmsg(19),
      I2 => \txd_out[19]_i_2_n_0\,
      I3 => \txd_out[27]_i_2_n_0\,
      I4 => data1(11),
      I5 => \configuration_vector[6]_0\,
      O => D(3)
    );
\txd_out[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[0][1]\,
      I1 => \state_reg_n_0_[0][0]\,
      O => \txd_out[19]_i_2_n_0\
    );
\txd_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA0C0000"
    )
        port map (
      I0 => last_qmsg(1),
      I1 => txd_filtered(1),
      I2 => \state_reg_n_0_[0][2]\,
      I3 => \state_reg_n_0_[0][1]\,
      I4 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[1]\
    );
\txd_out[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => data1(12),
      I3 => last_qmsg(20),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[20]\
    );
\txd_out[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBFFF3FF"
    )
        port map (
      I0 => last_qmsg(21),
      I1 => \configuration_vector[4]\,
      I2 => data1(13),
      I3 => \state_reg_n_0_[0][0]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][2]\,
      O => D(4)
    );
\txd_out[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAFAFFFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(22),
      I2 => data1(14),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[22]\
    );
\txd_out[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4040404"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => data1(15),
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[0][0]\,
      I4 => last_qmsg(23),
      O => \txd_out_reg[23]\
    );
\txd_out[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEECCFCCCCCCCCC"
    )
        port map (
      I0 => last_qmsg(24),
      I1 => \configuration_vector[5]\,
      I2 => data1(16),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[24]\
    );
\txd_out[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA0C0000"
    )
        port map (
      I0 => last_qmsg(25),
      I1 => data1(17),
      I2 => \state_reg_n_0_[0][2]\,
      I3 => \state_reg_n_0_[0][1]\,
      I4 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[25]\
    );
\txd_out[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => data1(18),
      I3 => last_qmsg(26),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[26]\
    );
\txd_out[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAFFEAFFFFFFFF"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(27),
      I2 => \state_reg_n_0_[0][1]\,
      I3 => data1(19),
      I4 => \txd_out[27]_i_2_n_0\,
      I5 => \txd_out[27]_i_3_n_0\,
      O => \txd_out_reg[27]\
    );
\txd_out[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \state_reg_n_0_[0][0]\,
      O => \txd_out[27]_i_2_n_0\
    );
\txd_out[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D000D0D0D0D0D0"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \state_reg_n_0_[0][0]\,
      I3 => configuration_vector(0),
      I4 => configuration_vector(1),
      I5 => configuration_vector(2),
      O => \txd_out[27]_i_3_n_0\
    );
\txd_out[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CFFFFFF4CFF4CFF"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => configuration_vector(0),
      I2 => configuration_vector(1),
      I3 => \state_reg_n_0_[0][0]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][2]\,
      O => \txd_out_reg[28]\
    );
\txd_out[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => data1(20),
      I3 => last_qmsg(28),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[28]_0\
    );
\txd_out[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBFFF3FF"
    )
        port map (
      I0 => last_qmsg(29),
      I1 => \configuration_vector[4]\,
      I2 => data1(21),
      I3 => \state_reg_n_0_[0][0]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][2]\,
      O => D(5)
    );
\txd_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => txd_filtered(2),
      I3 => last_qmsg(2),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[2]\
    );
\txd_out[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAFAFFFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(30),
      I2 => data1(22),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[30]\
    );
\txd_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2121FF21FF21FF21"
    )
        port map (
      I0 => \state_reg_n_0_[0][0]\,
      I1 => \state_reg_n_0_[0][1]\,
      I2 => \state_reg_n_0_[0][2]\,
      I3 => configuration_vector(0),
      I4 => configuration_vector(1),
      I5 => configuration_vector(2),
      O => \txd_out_reg[7]\
    );
\txd_out[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000400"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => data1(23),
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[0][0]\,
      I4 => last_qmsg(31),
      O => \txd_out_reg[31]\
    );
\txd_out[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCCFCCEECCCCCC"
    )
        port map (
      I0 => last_qmsg(0),
      I1 => \configuration_vector[5]\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => txd_filtered(8),
      O => \txd_out_reg[32]\
    );
\txd_out[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A030A000"
    )
        port map (
      I0 => last_qmsg(1),
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => txd_filtered(9),
      O => \txd_out_reg[33]\
    );
\txd_out[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(2),
      I1 => txd_filtered(10),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[34]\
    );
\txd_out[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFFFFFDDFFF5FF"
    )
        port map (
      I0 => \configuration_vector[4]\,
      I1 => last_qmsg(3),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => txd_filtered(11),
      O => \txd_out_reg[35]\
    );
\txd_out[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(4),
      I1 => txd_filtered(12),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[36]\
    );
\txd_out[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBF3FFFF"
    )
        port map (
      I0 => last_qmsg(5),
      I1 => \configuration_vector[4]\,
      I2 => txd_filtered(13),
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \state_reg_n_0_[1][0]\,
      I5 => \state_reg_n_0_[1][2]\,
      O => D(6)
    );
\txd_out[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFAFAAEEFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(6),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => txd_filtered(14),
      O => \txd_out_reg[38]\
    );
\txd_out[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A030A000"
    )
        port map (
      I0 => last_qmsg(7),
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => txd_filtered(15),
      O => \txd_out_reg[39]_0\
    );
\txd_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAFFEAFFFFFFFF"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(3),
      I2 => \state_reg_n_0_[0][1]\,
      I3 => txd_filtered(3),
      I4 => \txd_out[27]_i_2_n_0\,
      I5 => \txd_out[27]_i_3_n_0\,
      O => \txd_out_reg[3]\
    );
\txd_out[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCCFCCEECCCCCC"
    )
        port map (
      I0 => last_qmsg(8),
      I1 => \configuration_vector[5]\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[6]_0\(0),
      O => \txd_out_reg[40]\
    );
\txd_out[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A030A000"
    )
        port map (
      I0 => last_qmsg(9),
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \txd_out_reg[6]_0\(1),
      O => \txd_out_reg[41]\
    );
\txd_out[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(10),
      I1 => \txd_out_reg[2]_0\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[42]\
    );
\txd_out[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB7773FFFFFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[1][1]\,
      I1 => \state_reg_n_0_[1][0]\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \txd_out_reg[3]_0\,
      I4 => last_qmsg(11),
      I5 => \configuration_vector[4]\,
      O => \txd_out_reg[43]\
    );
\txd_out[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(12),
      I1 => \txd_out_reg[4]_0\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[44]\
    );
\txd_out[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBF3FFFF"
    )
        port map (
      I0 => last_qmsg(13),
      I1 => \configuration_vector[4]\,
      I2 => \txd_out_reg[5]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \state_reg_n_0_[1][0]\,
      I5 => \state_reg_n_0_[1][2]\,
      O => D(7)
    );
\txd_out[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFAFAAEEFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(14),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[6]_0\(2),
      O => \txd_out_reg[46]\
    );
\txd_out[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000400"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \txd_out_reg[7]_1\,
      I2 => \state_reg_n_0_[1][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => last_qmsg(15),
      O => \txd_out_reg[47]\
    );
\txd_out[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCCFCCEECCCCCC"
    )
        port map (
      I0 => last_qmsg(16),
      I1 => \configuration_vector[5]\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[6]_1\(0),
      O => \txd_out_reg[48]\
    );
\txd_out[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A030A000"
    )
        port map (
      I0 => last_qmsg(17),
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \txd_out_reg[6]_1\(1),
      O => \txd_out_reg[49]\
    );
\txd_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004040"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => \state_reg_n_0_[0][0]\,
      I2 => txd_filtered(4),
      I3 => last_qmsg(4),
      I4 => \state_reg_n_0_[0][1]\,
      O => \txd_out_reg[4]\
    );
\txd_out[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(18),
      I1 => \txd_out_reg[2]_1\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[50]\
    );
\txd_out[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFFFFFDDFFF5FF"
    )
        port map (
      I0 => \configuration_vector[4]\,
      I1 => last_qmsg(19),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[3]_1\,
      O => \txd_out_reg[51]\
    );
\txd_out[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(20),
      I1 => \txd_out_reg[4]_1\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[52]\
    );
\txd_out[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBF3FFFF"
    )
        port map (
      I0 => last_qmsg(21),
      I1 => \configuration_vector[4]\,
      I2 => \txd_out_reg[5]_0\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \state_reg_n_0_[1][0]\,
      I5 => \state_reg_n_0_[1][2]\,
      O => D(8)
    );
\txd_out[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFAFAAEEFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(22),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[6]_1\(2),
      O => \txd_out_reg[54]\
    );
\txd_out[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000400"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \txd_out_reg[7]_2\,
      I2 => \state_reg_n_0_[1][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => last_qmsg(23),
      O => \txd_out_reg[55]\
    );
\txd_out[56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCCFCCEECCCCCC"
    )
        port map (
      I0 => last_qmsg(24),
      I1 => \configuration_vector[5]\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[6]_2\(0),
      O => \txd_out_reg[56]\
    );
\txd_out[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A030A000"
    )
        port map (
      I0 => last_qmsg(25),
      I1 => \state_reg_n_0_[1][2]\,
      I2 => \state_reg_n_0_[1][0]\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \txd_out_reg[6]_2\(1),
      O => \txd_out_reg[57]\
    );
\txd_out[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(26),
      I1 => \txd_out_reg[2]_2\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[58]\
    );
\txd_out[59]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7D5FFFFFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[1][0]\,
      I1 => \state_reg_n_0_[1][1]\,
      I2 => last_qmsg(27),
      I3 => \txd_out_reg[3]_2\,
      I4 => \state_reg_n_0_[1][2]\,
      I5 => \configuration_vector[4]\,
      O => \txd_out_reg[59]\
    );
\txd_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBFFF3FF"
    )
        port map (
      I0 => last_qmsg(5),
      I1 => \configuration_vector[4]\,
      I2 => txd_filtered(5),
      I3 => \state_reg_n_0_[0][0]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][2]\,
      O => D(0)
    );
\txd_out[60]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFFCFF"
    )
        port map (
      I0 => last_qmsg(28),
      I1 => \txd_out_reg[4]_2\,
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      O => \txd_out_reg[60]\
    );
\txd_out[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFFF33BBF3FFFF"
    )
        port map (
      I0 => last_qmsg(29),
      I1 => \configuration_vector[4]\,
      I2 => \txd_out_reg[5]_1\,
      I3 => \state_reg_n_0_[1][1]\,
      I4 => \state_reg_n_0_[1][0]\,
      I5 => \state_reg_n_0_[1][2]\,
      O => D(9)
    );
\txd_out[62]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFAFAAEEFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(30),
      I2 => \state_reg_n_0_[1][2]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => \state_reg_n_0_[1][1]\,
      I5 => \txd_out_reg[6]_2\(2),
      O => \txd_out_reg[62]\
    );
\txd_out[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0909FF09FF09FF09"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \state_reg_n_0_[1][0]\,
      I2 => \state_reg_n_0_[1][1]\,
      I3 => configuration_vector(0),
      I4 => configuration_vector(1),
      I5 => configuration_vector(2),
      O => \txd_out_reg[39]\
    );
\txd_out[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000400"
    )
        port map (
      I0 => \state_reg_n_0_[1][2]\,
      I1 => \txd_out_reg[7]_3\,
      I2 => \state_reg_n_0_[1][1]\,
      I3 => \state_reg_n_0_[1][0]\,
      I4 => last_qmsg(31),
      O => \txd_out_reg[63]\
    );
\txd_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAFAFFFFAAAA"
    )
        port map (
      I0 => \configuration_vector[6]\,
      I1 => last_qmsg(6),
      I2 => txd_filtered(6),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[6]\
    );
\txd_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4040404"
    )
        port map (
      I0 => \state_reg_n_0_[0][2]\,
      I1 => txd_filtered(7),
      I2 => \state_reg_n_0_[0][1]\,
      I3 => \state_reg_n_0_[0][0]\,
      I4 => last_qmsg(7),
      O => \txd_out_reg[7]_0\
    );
\txd_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEECCFCCCCCCCCC"
    )
        port map (
      I0 => last_qmsg(8),
      I1 => \configuration_vector[5]\,
      I2 => data1(0),
      I3 => \state_reg_n_0_[0][2]\,
      I4 => \state_reg_n_0_[0][1]\,
      I5 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[8]\
    );
\txd_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA0C0000"
    )
        port map (
      I0 => last_qmsg(9),
      I1 => data1(1),
      I2 => \state_reg_n_0_[0][2]\,
      I3 => \state_reg_n_0_[0][1]\,
      I4 => \state_reg_n_0_[0][0]\,
      O => \txd_out_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper is
  port (
    gt0_drprdy : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l0_n : out STD_LOGIC;
    xaui_tx_l0_p : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_txdlysresetdone_out : out STD_LOGIC;
    gt0_txoutclk_out : out STD_LOGIC;
    gt0_txphaligndone_out : out STD_LOGIC;
    gt0_txphinitdone_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \uclk_mgt_rxbufstatus_reg_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \mgt_rxdata_reg_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_codecomma_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_rxcharisk_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_rxdisperr_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mgt_rxnotintable_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_drprdy : out STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l1_n : out STD_LOGIC;
    xaui_tx_l1_p : out STD_LOGIC;
    gt1_rxcommadet_out : out STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_txdlysresetdone_out : out STD_LOGIC;
    gt1_txphaligndone_out : out STD_LOGIC;
    gt1_txphinitdone_out : out STD_LOGIC;
    gt1_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_drprdy : out STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l2_n : out STD_LOGIC;
    xaui_tx_l2_p : out STD_LOGIC;
    gt2_rxcommadet_out : out STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_txdlysresetdone_out : out STD_LOGIC;
    gt2_txphaligndone_out : out STD_LOGIC;
    gt2_txphinitdone_out : out STD_LOGIC;
    gt2_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_drprdy : out STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    xaui_tx_l3_n : out STD_LOGIC;
    xaui_tx_l3_p : out STD_LOGIC;
    gt3_rxcommadet_out : out STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_txdlysresetdone_out : out STD_LOGIC;
    gt3_txphaligndone_out : out STD_LOGIC;
    gt3_txphinitdone_out : out STD_LOGIC;
    gt3_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt_qplllock_out : out STD_LOGIC;
    \core_mgt_rx_reset_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dclk : in STD_LOGIC;
    gt0_drpen : in STD_LOGIC;
    gt0_drpwe : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt3_gtrxreset_in : in STD_LOGIC;
    uclk_mgt_tx_reset : in STD_LOGIC;
    xaui_rx_l0_n : in STD_LOGIC;
    xaui_rx_l0_p : in STD_LOGIC;
    gt1_rxbufreset_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt3_rxchbonden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    mgt_enable_align : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt3_txuserrdy_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    gt0_txdlyen_in : in STD_LOGIC;
    gt0_txdlysreset_in : in STD_LOGIC;
    gt3_txelecidle_in : in STD_LOGIC;
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txphalign_in : in STD_LOGIC;
    gt0_txphinit_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mgt_txdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    mgt_txcharisk : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpen : in STD_LOGIC;
    gt1_drpwe : in STD_LOGIC;
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    xaui_rx_l1_n : in STD_LOGIC;
    xaui_rx_l1_p : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_txdlysreset_in : in STD_LOGIC;
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txphalign_in : in STD_LOGIC;
    gt1_txphinit_in : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpen : in STD_LOGIC;
    gt2_drpwe : in STD_LOGIC;
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    xaui_rx_l2_n : in STD_LOGIC;
    xaui_rx_l2_p : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_txdlysreset_in : in STD_LOGIC;
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txphalign_in : in STD_LOGIC;
    gt2_txphinit_in : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpen : in STD_LOGIC;
    gt3_drpwe : in STD_LOGIC;
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    xaui_rx_l3_n : in STD_LOGIC;
    xaui_rx_l3_p : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_txdlysreset_in : in STD_LOGIC;
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txphalign_in : in STD_LOGIC;
    gt3_txphinit_in : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    refclk : in STD_LOGIC;
    gt0_qpllreset_in : in STD_LOGIC;
    uclk_loopback_int : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper : entity is "xaui_0_gt_wrapper";
end xaui_0_xaui_0_gt_wrapper;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper is
  signal gt0_qpllclk_i : STD_LOGIC;
  signal gt0_qpllrefclk_i : STD_LOGIC;
  signal gt1_rxchbondo_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal gt2_rxchbondo_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal gtxe2_common_0_i_n_5 : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_QPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_REFCLKOUTMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_common_0_i_QPLLDMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_common_0_i : label is "PRIMITIVE";
begin
gt0_xaui_0_gt_wrapper_i: entity work.xaui_0_xaui_0_gt_wrapper_GT
     port map (
      CLK => CLK,
      D(0) => D(3),
      RXCHBONDO(4 downto 0) => gt1_rxchbondo_i(4 downto 0),
      \core_mgt_rx_reset_reg[0]\(0) => \core_mgt_rx_reset_reg[3]\(0),
      dclk => dclk,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr(8 downto 0) => gt0_drpaddr(8 downto 0),
      gt0_drpdi(15 downto 0) => gt0_drpdi(15 downto 0),
      gt0_drpdo(15 downto 0) => gt0_drpdo(15 downto 0),
      gt0_drpen => gt0_drpen,
      gt0_drprdy => gt0_drprdy,
      gt0_drpwe => gt0_drpwe,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qpllclk_i => gt0_qpllclk_i,
      gt0_qpllrefclk_i => gt0_qpllrefclk_i,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxrate_in(2 downto 0) => gt0_rxrate_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txdlyen_in => gt0_txdlyen_in,
      gt0_txdlysreset_in => gt0_txdlysreset_in,
      gt0_txdlysresetdone_out => gt0_txdlysresetdone_out,
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txoutclk_out => gt0_txoutclk_out,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txphalign_in => gt0_txphalign_in,
      gt0_txphaligndone_out => gt0_txphaligndone_out,
      gt0_txphinit_in => gt0_txphinit_in,
      gt0_txphinitdone_out => gt0_txphinitdone_out,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt3_gtrxreset_in => gt3_gtrxreset_in,
      gt3_rxchbonden_in => gt3_rxchbonden_in,
      gt3_txelecidle_in => gt3_txelecidle_in,
      gt3_txuserrdy_in => gt3_txuserrdy_in,
      \mgt_codecomma_reg_reg[1]\(1 downto 0) => \mgt_codecomma_reg_reg[7]\(1 downto 0),
      mgt_enable_align(0) => mgt_enable_align(0),
      \mgt_rxcharisk_reg_reg[1]\(1 downto 0) => \mgt_rxcharisk_reg_reg[7]\(1 downto 0),
      \mgt_rxdata_reg_reg[15]\(15 downto 0) => \mgt_rxdata_reg_reg[63]\(15 downto 0),
      \mgt_rxdisperr_reg_reg[1]\(1 downto 0) => \mgt_rxdisperr_reg_reg[7]\(1 downto 0),
      \mgt_rxnotintable_reg_reg[1]\(1 downto 0) => \mgt_rxnotintable_reg_reg[7]\(1 downto 0),
      mgt_txcharisk(1 downto 0) => mgt_txcharisk(1 downto 0),
      mgt_txdata(15 downto 0) => mgt_txdata(15 downto 0),
      uclk_loopback_int(0) => uclk_loopback_int(0),
      \uclk_mgt_rxbufstatus_reg_reg[2]\(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[11]\(2 downto 0),
      uclk_mgt_tx_reset => uclk_mgt_tx_reset,
      xaui_rx_l0_n => xaui_rx_l0_n,
      xaui_rx_l0_p => xaui_rx_l0_p,
      xaui_tx_l0_n => xaui_tx_l0_n,
      xaui_tx_l0_p => xaui_tx_l0_p
    );
gt1_xaui_0_gt_wrapper_i: entity work.xaui_0_xaui_0_gt_wrapper_GT_20
     port map (
      CLK => CLK,
      D(0) => D(2),
      RXCHBONDO(4 downto 0) => gt1_rxchbondo_i(4 downto 0),
      \core_mgt_rx_reset_reg[1]\(0) => \core_mgt_rx_reset_reg[3]\(1),
      dclk => dclk,
      gt0_qpllclk_i => gt0_qpllclk_i,
      gt0_qpllrefclk_i => gt0_qpllrefclk_i,
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr(8 downto 0) => gt1_drpaddr(8 downto 0),
      gt1_drpdi(15 downto 0) => gt1_drpdi(15 downto 0),
      gt1_drpdo(15 downto 0) => gt1_drpdo(15 downto 0),
      gt1_drpen => gt1_drpen,
      gt1_drprdy => gt1_drprdy,
      gt1_drpwe => gt1_drpwe,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxrate_in(2 downto 0) => gt1_rxrate_in(2 downto 0),
      gt1_rxresetdone_out => gt1_rxresetdone_out,
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txdlysreset_in => gt1_txdlysreset_in,
      gt1_txdlysresetdone_out => gt1_txdlysresetdone_out,
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txphalign_in => gt1_txphalign_in,
      gt1_txphaligndone_out => gt1_txphaligndone_out,
      gt1_txphinit_in => gt1_txphinit_in,
      gt1_txphinitdone_out => gt1_txphinitdone_out,
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprbssel_in(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt3_gtrxreset_in => gt3_gtrxreset_in,
      gt3_rxchbonden_in => gt3_rxchbonden_in,
      gt3_txelecidle_in => gt3_txelecidle_in,
      gt3_txuserrdy_in => gt3_txuserrdy_in,
      \mgt_codecomma_reg_reg[3]\(1 downto 0) => \mgt_codecomma_reg_reg[7]\(3 downto 2),
      mgt_enable_align(0) => mgt_enable_align(1),
      \mgt_rxcharisk_reg_reg[3]\(1 downto 0) => \mgt_rxcharisk_reg_reg[7]\(3 downto 2),
      \mgt_rxdata_reg_reg[31]\(15 downto 0) => \mgt_rxdata_reg_reg[63]\(31 downto 16),
      \mgt_rxdisperr_reg_reg[3]\(1 downto 0) => \mgt_rxdisperr_reg_reg[7]\(3 downto 2),
      \mgt_rxnotintable_reg_reg[3]\(1 downto 0) => \mgt_rxnotintable_reg_reg[7]\(3 downto 2),
      mgt_txcharisk(1 downto 0) => mgt_txcharisk(3 downto 2),
      mgt_txdata(15 downto 0) => mgt_txdata(31 downto 16),
      uclk_loopback_int(0) => uclk_loopback_int(0),
      uclk_mgt_rx_reset_reg(4 downto 0) => gt2_rxchbondo_i(4 downto 0),
      \uclk_mgt_rxbufstatus_reg_reg[5]\(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[11]\(5 downto 3),
      uclk_mgt_tx_reset => uclk_mgt_tx_reset,
      xaui_rx_l1_n => xaui_rx_l1_n,
      xaui_rx_l1_p => xaui_rx_l1_p,
      xaui_tx_l1_n => xaui_tx_l1_n,
      xaui_tx_l1_p => xaui_tx_l1_p
    );
gt2_xaui_0_gt_wrapper_i: entity work.xaui_0_xaui_0_gt_wrapper_GT_21
     port map (
      CLK => CLK,
      D(0) => D(1),
      \core_mgt_rx_reset_reg[2]\(0) => \core_mgt_rx_reset_reg[3]\(2),
      data_sync_reg1(4 downto 0) => gt2_rxchbondo_i(4 downto 0),
      dclk => dclk,
      gt0_qpllclk_i => gt0_qpllclk_i,
      gt0_qpllrefclk_i => gt0_qpllrefclk_i,
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr(8 downto 0) => gt2_drpaddr(8 downto 0),
      gt2_drpdi(15 downto 0) => gt2_drpdi(15 downto 0),
      gt2_drpdo(15 downto 0) => gt2_drpdo(15 downto 0),
      gt2_drpen => gt2_drpen,
      gt2_drprdy => gt2_drprdy,
      gt2_drpwe => gt2_drpwe,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxrate_in(2 downto 0) => gt2_rxrate_in(2 downto 0),
      gt2_rxresetdone_out => gt2_rxresetdone_out,
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txdlysreset_in => gt2_txdlysreset_in,
      gt2_txdlysresetdone_out => gt2_txdlysresetdone_out,
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txphalign_in => gt2_txphalign_in,
      gt2_txphaligndone_out => gt2_txphaligndone_out,
      gt2_txphinit_in => gt2_txphinit_in,
      gt2_txphinitdone_out => gt2_txphinitdone_out,
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprbssel_in(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt3_gtrxreset_in => gt3_gtrxreset_in,
      gt3_rxchbonden_in => gt3_rxchbonden_in,
      gt3_txelecidle_in => gt3_txelecidle_in,
      gt3_txuserrdy_in => gt3_txuserrdy_in,
      \mgt_codecomma_reg_reg[5]\(1 downto 0) => \mgt_codecomma_reg_reg[7]\(5 downto 4),
      mgt_enable_align(0) => mgt_enable_align(2),
      \mgt_rxcharisk_reg_reg[5]\(1 downto 0) => \mgt_rxcharisk_reg_reg[7]\(5 downto 4),
      \mgt_rxdata_reg_reg[47]\(15 downto 0) => \mgt_rxdata_reg_reg[63]\(47 downto 32),
      \mgt_rxdisperr_reg_reg[5]\(1 downto 0) => \mgt_rxdisperr_reg_reg[7]\(5 downto 4),
      \mgt_rxnotintable_reg_reg[5]\(1 downto 0) => \mgt_rxnotintable_reg_reg[7]\(5 downto 4),
      mgt_txcharisk(1 downto 0) => mgt_txcharisk(5 downto 4),
      mgt_txdata(15 downto 0) => mgt_txdata(47 downto 32),
      uclk_loopback_int(0) => uclk_loopback_int(0),
      \uclk_mgt_rxbufstatus_reg_reg[8]\(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[11]\(8 downto 6),
      uclk_mgt_tx_reset => uclk_mgt_tx_reset,
      xaui_rx_l2_n => xaui_rx_l2_n,
      xaui_rx_l2_p => xaui_rx_l2_p,
      xaui_tx_l2_n => xaui_tx_l2_n,
      xaui_tx_l2_p => xaui_tx_l2_p
    );
gt3_xaui_0_gt_wrapper_i: entity work.xaui_0_xaui_0_gt_wrapper_GT_22
     port map (
      CLK => CLK,
      D(0) => D(0),
      \core_mgt_rx_reset_reg[3]\(0) => \core_mgt_rx_reset_reg[3]\(3),
      dclk => dclk,
      gt0_qpllclk_i => gt0_qpllclk_i,
      gt0_qpllrefclk_i => gt0_qpllrefclk_i,
      gt1_rxbufreset_in => gt1_rxbufreset_in,
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr(8 downto 0) => gt3_drpaddr(8 downto 0),
      gt3_drpdi(15 downto 0) => gt3_drpdi(15 downto 0),
      gt3_drpdo(15 downto 0) => gt3_drpdo(15 downto 0),
      gt3_drpen => gt3_drpen,
      gt3_drprdy => gt3_drprdy,
      gt3_drpwe => gt3_drpwe,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_gtrxreset_in => gt3_gtrxreset_in,
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxchbonden_in => gt3_rxchbonden_in,
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxrate_in(2 downto 0) => gt3_rxrate_in(2 downto 0),
      gt3_rxresetdone_out => gt3_rxresetdone_out,
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txdlysreset_in => gt3_txdlysreset_in,
      gt3_txdlysresetdone_out => gt3_txdlysresetdone_out,
      gt3_txelecidle_in => gt3_txelecidle_in,
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txphalign_in => gt3_txphalign_in,
      gt3_txphaligndone_out => gt3_txphaligndone_out,
      gt3_txphinit_in => gt3_txphinit_in,
      gt3_txphinitdone_out => gt3_txphinitdone_out,
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprbssel_in(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txuserrdy_in => gt3_txuserrdy_in,
      \mgt_codecomma_reg_reg[7]\(1 downto 0) => \mgt_codecomma_reg_reg[7]\(7 downto 6),
      mgt_enable_align(0) => mgt_enable_align(3),
      \mgt_rxcharisk_reg_reg[7]\(1 downto 0) => \mgt_rxcharisk_reg_reg[7]\(7 downto 6),
      \mgt_rxdata_reg_reg[63]\(15 downto 0) => \mgt_rxdata_reg_reg[63]\(63 downto 48),
      \mgt_rxdisperr_reg_reg[7]\(1 downto 0) => \mgt_rxdisperr_reg_reg[7]\(7 downto 6),
      \mgt_rxnotintable_reg_reg[7]\(1 downto 0) => \mgt_rxnotintable_reg_reg[7]\(7 downto 6),
      mgt_txcharisk(1 downto 0) => mgt_txcharisk(7 downto 6),
      mgt_txdata(15 downto 0) => mgt_txdata(63 downto 48),
      uclk_loopback_int(0) => uclk_loopback_int(0),
      uclk_mgt_rx_reset_reg(4 downto 0) => gt2_rxchbondo_i(4 downto 0),
      \uclk_mgt_rxbufstatus_reg_reg[11]\(2 downto 0) => \uclk_mgt_rxbufstatus_reg_reg[11]\(11 downto 9),
      uclk_mgt_tx_reset => uclk_mgt_tx_reset,
      xaui_rx_l3_n => xaui_rx_l3_n,
      xaui_rx_l3_p => xaui_rx_l3_p,
      xaui_tx_l3_n => xaui_tx_l3_n,
      xaui_tx_l3_p => xaui_tx_l3_p
    );
gtxe2_common_0_i: unisim.vcomponents.GTXE2_COMMON
    generic map(
      BIAS_CFG => X"0000040000001000",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_QPLLLOCKDETCLK_INVERTED => '0',
      QPLL_CFG => X"06801C1",
      QPLL_CLKOUT_CFG => B"0000",
      QPLL_COARSE_FREQ_OVRD => B"010000",
      QPLL_COARSE_FREQ_OVRD_EN => '0',
      QPLL_CP => B"0000011111",
      QPLL_CP_MONITOR_EN => '0',
      QPLL_DMONITOR_SEL => '0',
      QPLL_FBDIV => B"0010000000",
      QPLL_FBDIV_MONITOR_EN => '0',
      QPLL_FBDIV_RATIO => '1',
      QPLL_INIT_CFG => X"000006",
      QPLL_LOCK_CFG => X"21E8",
      QPLL_LPF => B"1111",
      QPLL_REFCLK_DIV => 1,
      SIM_QPLLREFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_VERSION => "4.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15 downto 0) => NLW_gtxe2_common_0_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => '0',
      DRPRDY => NLW_gtxe2_common_0_i_DRPRDY_UNCONNECTED,
      DRPWE => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => refclk,
      GTREFCLK1 => '0',
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      PMARSVD(7 downto 0) => B"00000000",
      QPLLDMONITOR(7 downto 0) => NLW_gtxe2_common_0_i_QPLLDMONITOR_UNCONNECTED(7 downto 0),
      QPLLFBCLKLOST => NLW_gtxe2_common_0_i_QPLLFBCLKLOST_UNCONNECTED,
      QPLLLOCK => gt_qplllock_out,
      QPLLLOCKDETCLK => dclk,
      QPLLLOCKEN => '1',
      QPLLOUTCLK => gt0_qpllclk_i,
      QPLLOUTREFCLK => gt0_qpllrefclk_i,
      QPLLOUTRESET => '0',
      QPLLPD => '0',
      QPLLREFCLKLOST => gtxe2_common_0_i_n_5,
      QPLLREFCLKSEL(2 downto 0) => B"001",
      QPLLRESET => gt0_qpllreset_in,
      QPLLRSVD1(15 downto 0) => B"0000000000000000",
      QPLLRSVD2(4 downto 0) => B"11111",
      RCALENB => '1',
      REFCLKOUTMONITOR => NLW_gtxe2_common_0_i_REFCLKOUTMONITOR_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_gt_wrapper_tx_sync_manual is
  port (
    debug : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txdlyen_in : out STD_LOGIC;
    mgt_tx_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt3_txdlysreset_in : out STD_LOGIC;
    gt2_txdlysreset_in : out STD_LOGIC;
    gt1_txdlysreset_in : out STD_LOGIC;
    gt0_txdlysreset_in : out STD_LOGIC;
    gt0_txphinit_in : out STD_LOGIC;
    gt3_txphinit_in : out STD_LOGIC;
    gt2_txphinit_in : out STD_LOGIC;
    gt1_txphinit_in : out STD_LOGIC;
    gt0_txphalign_in : out STD_LOGIC;
    gt3_txphalign_in : out STD_LOGIC;
    gt2_txphalign_in : out STD_LOGIC;
    gt1_txphalign_in : out STD_LOGIC;
    CLK : in STD_LOGIC;
    uclk_mgt_tx_reset : in STD_LOGIC;
    uclk_txsync_start_phase_align_reg : in STD_LOGIC;
    gt0_txphaligndone_out : in STD_LOGIC;
    gt0_txdlysresetdone_out : in STD_LOGIC;
    gt1_txphaligndone_out : in STD_LOGIC;
    gt1_txdlysresetdone_out : in STD_LOGIC;
    gt2_txphaligndone_out : in STD_LOGIC;
    gt2_txdlysresetdone_out : in STD_LOGIC;
    gt3_txphaligndone_out : in STD_LOGIC;
    gt3_txdlysresetdone_out : in STD_LOGIC;
    gt0_txphinitdone_out : in STD_LOGIC;
    gt1_txphinitdone_out : in STD_LOGIC;
    gt2_txphinitdone_out : in STD_LOGIC;
    gt3_txphinitdone_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_gt_wrapper_tx_sync_manual : entity is "xaui_0_gt_wrapper_tx_sync_manual";
end xaui_0_xaui_0_gt_wrapper_tx_sync_manual;

architecture STRUCTURE of xaui_0_xaui_0_gt_wrapper_tx_sync_manual is
  signal \FSM_onehot_tx_phalign_manual_state[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_phalign_manual_state[8]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_phalign_manual_state[8]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_tx_phalign_manual_state_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_tx_phalign_manual_state_reg_n_0_[8]\ : signal is "yes";
  signal PHASE_ALIGNMENT_DONE_i_1_n_0 : STD_LOGIC;
  signal \TXDLYSRESET[0]_i_1_n_0\ : STD_LOGIC;
  signal \TXDLYSRESET[1]_i_1_n_0\ : STD_LOGIC;
  signal \TXDLYSRESET[2]_i_1_n_0\ : STD_LOGIC;
  signal \TXDLYSRESET[3]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHALIGN[0]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHALIGN[1]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHALIGN[2]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHALIGN[3]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHINIT[0]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHINIT[1]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHINIT[2]_i_1_n_0\ : STD_LOGIC;
  signal \TXPHINIT[3]_i_1_n_0\ : STD_LOGIC;
  signal \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE_n_0\ : STD_LOGIC;
  signal \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE_n_2\ : STD_LOGIC;
  signal \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\ : STD_LOGIC;
  signal data_out0_out : STD_LOGIC;
  signal data_out1_out : STD_LOGIC;
  signal data_out2_out : STD_LOGIC;
  signal \^debug\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_txdlyen_in\ : STD_LOGIC;
  signal \^gt0_txdlysreset_in\ : STD_LOGIC;
  signal \^gt0_txphalign_in\ : STD_LOGIC;
  signal \^gt0_txphinit_in\ : STD_LOGIC;
  signal \^gt1_txdlysreset_in\ : STD_LOGIC;
  signal \^gt1_txphalign_in\ : STD_LOGIC;
  signal \^gt1_txphinit_in\ : STD_LOGIC;
  signal \^gt2_txdlysreset_in\ : STD_LOGIC;
  signal \^gt2_txphalign_in\ : STD_LOGIC;
  signal \^gt2_txphinit_in\ : STD_LOGIC;
  signal \^gt3_txdlysreset_in\ : STD_LOGIC;
  signal \^gt3_txphalign_in\ : STD_LOGIC;
  signal \^gt3_txphinit_in\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \txdlysresetdone_store[0]_i_1_n_0\ : STD_LOGIC;
  signal \txdlysresetdone_store[1]_i_1_n_0\ : STD_LOGIC;
  signal \txdlysresetdone_store[2]_i_1_n_0\ : STD_LOGIC;
  signal \txdlysresetdone_store[3]_i_1_n_0\ : STD_LOGIC;
  signal \txdlysresetdone_store_reg_n_0_[0]\ : STD_LOGIC;
  signal \txdlysresetdone_store_reg_n_0_[3]\ : STD_LOGIC;
  signal txdlysresetdone_sync_3 : STD_LOGIC;
  signal txdone_clear_i_1_n_0 : STD_LOGIC;
  signal txdone_clear_reg_n_0 : STD_LOGIC;
  signal txphaligndone_prev : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txphaligndone_store : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \txphaligndone_store[0]_i_1_n_0\ : STD_LOGIC;
  signal \txphaligndone_store[1]_i_1_n_0\ : STD_LOGIC;
  signal \txphaligndone_store[2]_i_1_n_0\ : STD_LOGIC;
  signal \txphaligndone_store[3]_i_1_n_0\ : STD_LOGIC;
  signal txphaligndone_sync_0 : STD_LOGIC;
  signal txphaligndone_sync_1 : STD_LOGIC;
  signal txphaligndone_sync_2 : STD_LOGIC;
  signal txphaligndone_sync_3 : STD_LOGIC;
  signal txphinitdone_clear_slave : STD_LOGIC;
  attribute RTL_KEEP of txphinitdone_clear_slave : signal is "yes";
  signal txphinitdone_prev : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txphinitdone_store_edge : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \txphinitdone_store_edge[0]_i_1_n_0\ : STD_LOGIC;
  signal \txphinitdone_store_edge[1]_i_1_n_0\ : STD_LOGIC;
  signal \txphinitdone_store_edge[2]_i_1_n_0\ : STD_LOGIC;
  signal \txphinitdone_store_edge[3]_i_1_n_0\ : STD_LOGIC;
  signal txphinitdone_sync_0 : STD_LOGIC;
  signal txphinitdone_sync_1 : STD_LOGIC;
  signal txphinitdone_sync_2 : STD_LOGIC;
  signal txphinitdone_sync_3 : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[6]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[7]\ : label is "yes";
  attribute KEEP of \FSM_onehot_tx_phalign_manual_state_reg[8]\ : label is "yes";
begin
  debug(0) <= \^debug\(0);
  gt0_txdlyen_in <= \^gt0_txdlyen_in\;
  gt0_txdlysreset_in <= \^gt0_txdlysreset_in\;
  gt0_txphalign_in <= \^gt0_txphalign_in\;
  gt0_txphinit_in <= \^gt0_txphinit_in\;
  gt1_txdlysreset_in <= \^gt1_txdlysreset_in\;
  gt1_txphalign_in <= \^gt1_txphalign_in\;
  gt1_txphinit_in <= \^gt1_txphinit_in\;
  gt2_txdlysreset_in <= \^gt2_txdlysreset_in\;
  gt2_txphalign_in <= \^gt2_txphalign_in\;
  gt2_txphinit_in <= \^gt2_txphinit_in\;
  gt3_txdlysreset_in <= \^gt3_txdlysreset_in\;
  gt3_txphalign_in <= \^gt3_txphalign_in\;
  gt3_txphinit_in <= \^gt3_txphinit_in\;
\FSM_onehot_tx_phalign_manual_state[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => txphaligndone_store(3),
      I1 => txphaligndone_store(2),
      I2 => txphaligndone_store(0),
      I3 => txphaligndone_store(1),
      I4 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      I5 => \FSM_onehot_tx_phalign_manual_state[8]_i_6_n_0\,
      O => \FSM_onehot_tx_phalign_manual_state[8]_i_3_n_0\
    );
\FSM_onehot_tx_phalign_manual_state[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => \txdlysresetdone_store_reg_n_0_[0]\,
      I3 => p_2_in,
      I4 => \txdlysresetdone_store_reg_n_0_[3]\,
      O => \FSM_onehot_tx_phalign_manual_state[8]_i_5_n_0\
    );
\FSM_onehot_tx_phalign_manual_state[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      I1 => txphinitdone_store_edge(1),
      I2 => txphinitdone_store_edge(0),
      I3 => txphinitdone_store_edge(2),
      I4 => txphinitdone_store_edge(3),
      O => \FSM_onehot_tx_phalign_manual_state[8]_i_6_n_0\
    );
\FSM_onehot_tx_phalign_manual_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => '0',
      Q => txphinitdone_clear_slave,
      S => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => txphinitdone_clear_slave,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[2]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[2]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[3]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[3]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[4]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[4]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[7]\,
      R => uclk_mgt_tx_reset
    );
\FSM_onehot_tx_phalign_manual_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      D => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[7]\,
      Q => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[8]\,
      R => uclk_mgt_tx_reset
    );
PHASE_ALIGNMENT_DONE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => txphinitdone_clear_slave,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[8]\,
      I2 => \^debug\(0),
      O => PHASE_ALIGNMENT_DONE_i_1_n_0
    );
PHASE_ALIGNMENT_DONE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => PHASE_ALIGNMENT_DONE_i_1_n_0,
      Q => \^debug\(0),
      R => uclk_mgt_tx_reset
    );
\TXDLYEN_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE_n_0\,
      Q => \^gt0_txdlyen_in\,
      R => uclk_mgt_tx_reset
    );
\TXDLYSRESET[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => uclk_txsync_start_phase_align_reg,
      I1 => txphinitdone_clear_slave,
      I2 => \txdlysresetdone_store_reg_n_0_[0]\,
      I3 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      I4 => \^gt0_txdlysreset_in\,
      O => \TXDLYSRESET[0]_i_1_n_0\
    );
\TXDLYSRESET[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => uclk_txsync_start_phase_align_reg,
      I1 => txphinitdone_clear_slave,
      I2 => p_1_in,
      I3 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      I4 => \^gt1_txdlysreset_in\,
      O => \TXDLYSRESET[1]_i_1_n_0\
    );
\TXDLYSRESET[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => uclk_txsync_start_phase_align_reg,
      I1 => txphinitdone_clear_slave,
      I2 => p_2_in,
      I3 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      I4 => \^gt2_txdlysreset_in\,
      O => \TXDLYSRESET[2]_i_1_n_0\
    );
\TXDLYSRESET[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => uclk_txsync_start_phase_align_reg,
      I1 => txphinitdone_clear_slave,
      I2 => \txdlysresetdone_store_reg_n_0_[3]\,
      I3 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[1]\,
      I4 => \^gt3_txdlysreset_in\,
      O => \TXDLYSRESET[3]_i_1_n_0\
    );
\TXDLYSRESET_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXDLYSRESET[0]_i_1_n_0\,
      Q => \^gt0_txdlysreset_in\,
      R => uclk_mgt_tx_reset
    );
\TXDLYSRESET_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXDLYSRESET[1]_i_1_n_0\,
      Q => \^gt1_txdlysreset_in\,
      R => uclk_mgt_tx_reset
    );
\TXDLYSRESET_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXDLYSRESET[2]_i_1_n_0\,
      Q => \^gt2_txdlysreset_in\,
      R => uclk_mgt_tx_reset
    );
\TXDLYSRESET_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXDLYSRESET[3]_i_1_n_0\,
      Q => \^gt3_txdlysreset_in\,
      R => uclk_mgt_tx_reset
    );
\TXPHALIGN[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0BFB0B0"
    )
        port map (
      I0 => txphaligndone_prev(0),
      I1 => txphaligndone_sync_0,
      I2 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      I4 => \^gt0_txphalign_in\,
      O => \TXPHALIGN[0]_i_1_n_0\
    );
\TXPHALIGN[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^gt1_txphalign_in\,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      I2 => txphaligndone_store(1),
      I3 => uclk_mgt_tx_reset,
      O => \TXPHALIGN[1]_i_1_n_0\
    );
\TXPHALIGN[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^gt2_txphalign_in\,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      I2 => txphaligndone_store(2),
      I3 => uclk_mgt_tx_reset,
      O => \TXPHALIGN[2]_i_1_n_0\
    );
\TXPHALIGN[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^gt3_txphalign_in\,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[6]\,
      I2 => txphaligndone_store(3),
      I3 => uclk_mgt_tx_reset,
      O => \TXPHALIGN[3]_i_1_n_0\
    );
\TXPHALIGN_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHALIGN[0]_i_1_n_0\,
      Q => \^gt0_txphalign_in\,
      R => uclk_mgt_tx_reset
    );
\TXPHALIGN_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHALIGN[1]_i_1_n_0\,
      Q => \^gt1_txphalign_in\,
      R => '0'
    );
\TXPHALIGN_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHALIGN[2]_i_1_n_0\,
      Q => \^gt2_txphalign_in\,
      R => '0'
    );
\TXPHALIGN_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHALIGN[3]_i_1_n_0\,
      Q => \^gt3_txphalign_in\,
      R => '0'
    );
\TXPHINIT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0BFB0B0"
    )
        port map (
      I0 => txphinitdone_prev(0),
      I1 => txphinitdone_sync_0,
      I2 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      I4 => \^gt0_txphinit_in\,
      O => \TXPHINIT[0]_i_1_n_0\
    );
\TXPHINIT[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^gt1_txphinit_in\,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      I2 => txphinitdone_store_edge(1),
      I3 => uclk_mgt_tx_reset,
      O => \TXPHINIT[1]_i_1_n_0\
    );
\TXPHINIT[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^gt2_txphinit_in\,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      I2 => txphinitdone_store_edge(2),
      I3 => uclk_mgt_tx_reset,
      O => \TXPHINIT[2]_i_1_n_0\
    );
\TXPHINIT[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^gt3_txphinit_in\,
      I1 => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[5]\,
      I2 => txphinitdone_store_edge(3),
      I3 => uclk_mgt_tx_reset,
      O => \TXPHINIT[3]_i_1_n_0\
    );
\TXPHINIT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHINIT[0]_i_1_n_0\,
      Q => \^gt0_txphinit_in\,
      R => uclk_mgt_tx_reset
    );
\TXPHINIT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHINIT[1]_i_1_n_0\,
      Q => \^gt1_txphinit_in\,
      R => '0'
    );
\TXPHINIT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHINIT[2]_i_1_n_0\,
      Q => \^gt2_txphinit_in\,
      R => '0'
    );
\TXPHINIT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \TXPHINIT[3]_i_1_n_0\,
      Q => \^gt3_txphinit_in\,
      R => '0'
    );
\cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXDLYSRESETDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block
     port map (
      CLK => CLK,
      data_out => data_out2_out,
      gt0_txdlysresetdone_out => gt0_txdlysresetdone_out
    );
\cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_10
     port map (
      CLK => CLK,
      \FSM_onehot_tx_phalign_manual_state_reg[0]\ => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE_n_2\,
      Q(0) => txphaligndone_prev(0),
      \TXDLYEN_reg[0]\ => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE_n_0\,
      data_out => txphaligndone_sync_0,
      gt0_txdlyen_in => \^gt0_txdlyen_in\,
      gt0_txphaligndone_out => gt0_txphaligndone_out,
      \out\(2) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[8]\,
      \out\(1) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[7]\,
      \out\(0) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[4]\
    );
\cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse
     port map (
      CLK => CLK,
      D(4) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[7]\,
      D(3) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[4]\,
      D(2) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[3]\,
      D(1) => \FSM_onehot_tx_phalign_manual_state_reg_n_0_[2]\,
      D(0) => txphinitdone_clear_slave,
      E(0) => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE_n_1\,
      \FSM_onehot_tx_phalign_manual_state_reg[1]\ => \FSM_onehot_tx_phalign_manual_state[8]_i_5_n_0\,
      Q(0) => txphinitdone_prev(0),
      data_sync_reg6 => \cdc[0].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE_n_2\,
      gt0_txphinitdone_out => gt0_txphinitdone_out,
      \txphaligndone_store_reg[3]\ => \FSM_onehot_tx_phalign_manual_state[8]_i_3_n_0\,
      txphinitdone_sync_0 => txphinitdone_sync_0,
      uclk_txsync_start_phase_align_reg => uclk_txsync_start_phase_align_reg
    );
\cdc[1].xaui_0_gt_wrapper_tx_sync_manual_TXDLYSRESETDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_11
     port map (
      CLK => CLK,
      data_out => data_out1_out,
      gt1_txdlysresetdone_out => gt1_txdlysresetdone_out
    );
\cdc[1].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_12
     port map (
      CLK => CLK,
      data_out => txphaligndone_sync_1,
      gt1_txphaligndone_out => gt1_txphaligndone_out
    );
\cdc[1].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_13
     port map (
      CLK => CLK,
      D(0) => txphinitdone_sync_1,
      gt1_txphinitdone_out => gt1_txphinitdone_out
    );
\cdc[2].xaui_0_gt_wrapper_tx_sync_manual_TXDLYSRESETDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_14
     port map (
      CLK => CLK,
      data_out => data_out0_out,
      gt2_txdlysresetdone_out => gt2_txdlysresetdone_out
    );
\cdc[2].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_15
     port map (
      CLK => CLK,
      data_out => txphaligndone_sync_2,
      gt2_txphaligndone_out => gt2_txphaligndone_out
    );
\cdc[2].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_16
     port map (
      CLK => CLK,
      D(0) => txphinitdone_sync_2,
      gt2_txphinitdone_out => gt2_txphinitdone_out
    );
\cdc[3].xaui_0_gt_wrapper_tx_sync_manual_TXDLYSRESETDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_17
     port map (
      CLK => CLK,
      data_out => txdlysresetdone_sync_3,
      gt3_txdlysresetdone_out => gt3_txdlysresetdone_out
    );
\cdc[3].xaui_0_gt_wrapper_tx_sync_manual_TXPHALIGNDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_block_18
     port map (
      CLK => CLK,
      data_out => txphaligndone_sync_3,
      gt3_txphaligndone_out => gt3_txphaligndone_out
    );
\cdc[3].xaui_0_gt_wrapper_tx_sync_manual_TXPHINITDONE\: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual_sync_pulse_19
     port map (
      CLK => CLK,
      D(0) => txphinitdone_sync_3,
      gt3_txphinitdone_out => gt3_txphinitdone_out
    );
\txdlysresetdone_store[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_out2_out,
      I1 => \txdlysresetdone_store_reg_n_0_[0]\,
      O => \txdlysresetdone_store[0]_i_1_n_0\
    );
\txdlysresetdone_store[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_out1_out,
      I1 => p_1_in,
      O => \txdlysresetdone_store[1]_i_1_n_0\
    );
\txdlysresetdone_store[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_out0_out,
      I1 => p_2_in,
      O => \txdlysresetdone_store[2]_i_1_n_0\
    );
\txdlysresetdone_store[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => txdlysresetdone_sync_3,
      I1 => \txdlysresetdone_store_reg_n_0_[3]\,
      O => \txdlysresetdone_store[3]_i_1_n_0\
    );
\txdlysresetdone_store_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txdlysresetdone_store[0]_i_1_n_0\,
      Q => \txdlysresetdone_store_reg_n_0_[0]\,
      R => txdone_clear_reg_n_0
    );
\txdlysresetdone_store_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txdlysresetdone_store[1]_i_1_n_0\,
      Q => p_1_in,
      R => txdone_clear_reg_n_0
    );
\txdlysresetdone_store_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txdlysresetdone_store[2]_i_1_n_0\,
      Q => p_2_in,
      R => txdone_clear_reg_n_0
    );
\txdlysresetdone_store_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txdlysresetdone_store[3]_i_1_n_0\,
      Q => \txdlysresetdone_store_reg_n_0_[3]\,
      R => txdone_clear_reg_n_0
    );
txdone_clear_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => uclk_txsync_start_phase_align_reg,
      I1 => txphinitdone_clear_slave,
      I2 => txdone_clear_reg_n_0,
      O => txdone_clear_i_1_n_0
    );
txdone_clear_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txdone_clear_i_1_n_0,
      Q => txdone_clear_reg_n_0,
      S => uclk_mgt_tx_reset
    );
\txphaligndone_prev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphaligndone_sync_0,
      Q => txphaligndone_prev(0),
      R => '0'
    );
\txphaligndone_prev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphaligndone_sync_1,
      Q => txphaligndone_prev(1),
      R => '0'
    );
\txphaligndone_prev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphaligndone_sync_2,
      Q => txphaligndone_prev(2),
      R => '0'
    );
\txphaligndone_prev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphaligndone_sync_3,
      Q => txphaligndone_prev(3),
      R => '0'
    );
\txphaligndone_store[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphaligndone_prev(0),
      I1 => txphaligndone_sync_0,
      I2 => txphaligndone_store(0),
      O => \txphaligndone_store[0]_i_1_n_0\
    );
\txphaligndone_store[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphaligndone_prev(1),
      I1 => txphaligndone_sync_1,
      I2 => txphaligndone_store(1),
      O => \txphaligndone_store[1]_i_1_n_0\
    );
\txphaligndone_store[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphaligndone_prev(2),
      I1 => txphaligndone_sync_2,
      I2 => txphaligndone_store(2),
      O => \txphaligndone_store[2]_i_1_n_0\
    );
\txphaligndone_store[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphaligndone_prev(3),
      I1 => txphaligndone_sync_3,
      I2 => txphaligndone_store(3),
      O => \txphaligndone_store[3]_i_1_n_0\
    );
\txphaligndone_store_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphaligndone_store[0]_i_1_n_0\,
      Q => txphaligndone_store(0),
      R => txdone_clear_reg_n_0
    );
\txphaligndone_store_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphaligndone_store[1]_i_1_n_0\,
      Q => txphaligndone_store(1),
      R => txdone_clear_reg_n_0
    );
\txphaligndone_store_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphaligndone_store[2]_i_1_n_0\,
      Q => txphaligndone_store(2),
      R => txdone_clear_reg_n_0
    );
\txphaligndone_store_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphaligndone_store[3]_i_1_n_0\,
      Q => txphaligndone_store(3),
      R => txdone_clear_reg_n_0
    );
\txphinitdone_prev_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphinitdone_sync_0,
      Q => txphinitdone_prev(0),
      R => '0'
    );
\txphinitdone_prev_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphinitdone_sync_1,
      Q => txphinitdone_prev(1),
      R => '0'
    );
\txphinitdone_prev_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphinitdone_sync_2,
      Q => txphinitdone_prev(2),
      R => '0'
    );
\txphinitdone_prev_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => txphinitdone_sync_3,
      Q => txphinitdone_prev(3),
      R => '0'
    );
\txphinitdone_store_edge[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => txphinitdone_store_edge(0),
      I1 => txphinitdone_sync_0,
      I2 => txphinitdone_prev(0),
      I3 => txdone_clear_reg_n_0,
      O => \txphinitdone_store_edge[0]_i_1_n_0\
    );
\txphinitdone_store_edge[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphinitdone_prev(1),
      I1 => txphinitdone_sync_1,
      I2 => txphinitdone_store_edge(1),
      O => \txphinitdone_store_edge[1]_i_1_n_0\
    );
\txphinitdone_store_edge[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphinitdone_prev(2),
      I1 => txphinitdone_sync_2,
      I2 => txphinitdone_store_edge(2),
      O => \txphinitdone_store_edge[2]_i_1_n_0\
    );
\txphinitdone_store_edge[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => txphinitdone_prev(3),
      I1 => txphinitdone_sync_3,
      I2 => txphinitdone_store_edge(3),
      O => \txphinitdone_store_edge[3]_i_1_n_0\
    );
\txphinitdone_store_edge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphinitdone_store_edge[0]_i_1_n_0\,
      Q => txphinitdone_store_edge(0),
      R => '0'
    );
\txphinitdone_store_edge_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphinitdone_store_edge[1]_i_1_n_0\,
      Q => txphinitdone_store_edge(1),
      R => txdone_clear_reg_n_0
    );
\txphinitdone_store_edge_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphinitdone_store_edge[2]_i_1_n_0\,
      Q => txphinitdone_store_edge(2),
      R => txdone_clear_reg_n_0
    );
\txphinitdone_store_edge_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txphinitdone_store_edge[3]_i_1_n_0\,
      Q => txphinitdone_store_edge(3),
      R => txdone_clear_reg_n_0
    );
xaui_0_core_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^debug\(0),
      O => mgt_tx_reset(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_rx is
  port (
    mgt_enchansync : out STD_LOGIC;
    align_status_int : out STD_LOGIC;
    mgt_enable_align : out STD_LOGIC_VECTOR ( 3 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    in0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    usrclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_rxdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    usrclk_reset : in STD_LOGIC;
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_rxlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_rxcharisk : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_rx : entity is "rx";
end xaui_0_rx;

architecture STRUCTURE of xaui_0_rx is
  signal \G_PCS_SYNC_STATE[0].pcs_sync_state_n_1\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[0].pcs_sync_state_n_2\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[0].pcs_sync_state_n_3\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[0].pcs_sync_state_n_4\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[1].pcs_sync_state_n_1\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[1].pcs_sync_state_n_2\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[1].pcs_sync_state_n_3\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[1].pcs_sync_state_n_4\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[2].pcs_sync_state_n_1\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[2].pcs_sync_state_n_2\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[2].pcs_sync_state_n_3\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[2].pcs_sync_state_n_4\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[3].pcs_sync_state_n_1\ : STD_LOGIC;
  signal \G_PCS_SYNC_STATE[3].pcs_sync_state_n_2\ : STD_LOGIC;
  signal \^align_status_int\ : STD_LOGIC;
  signal deskew_state_n_2 : STD_LOGIC;
  signal local_fault : STD_LOGIC;
  signal recoder_n_0 : STD_LOGIC;
  signal recoder_n_1 : STD_LOGIC;
  signal recoder_n_2 : STD_LOGIC;
  signal sync_status : STD_LOGIC;
  signal sync_status_i_2_n_0 : STD_LOGIC;
  signal sync_status_int : STD_LOGIC;
begin
  align_status_int <= \^align_status_int\;
\G_PCS_SYNC_STATE[0].pcs_sync_state\: entity work.xaui_0_sync_state_machine
     port map (
      Q(0) => Q(0),
      mgt_codecomma(1 downto 0) => mgt_codecomma(1 downto 0),
      mgt_codevalid(1 downto 0) => mgt_codevalid(1 downto 0),
      mgt_enable_align(0) => mgt_enable_align(0),
      mgt_rx_reset(0) => mgt_rx_reset(0),
      mgt_rxlock(0) => mgt_rxlock(0),
      \out\(2) => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_1\,
      \out\(1) => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_2\,
      \out\(0) => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_3\,
      \sync_ok_reg[0]\ => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_4\,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
\G_PCS_SYNC_STATE[1].pcs_sync_state\: entity work.xaui_0_sync_state_machine_30
     port map (
      Q(0) => Q(1),
      mgt_codecomma(1 downto 0) => mgt_codecomma(3 downto 2),
      mgt_codevalid(1 downto 0) => mgt_codevalid(3 downto 2),
      mgt_enable_align(0) => mgt_enable_align(1),
      mgt_rx_reset(0) => mgt_rx_reset(1),
      mgt_rxlock(0) => mgt_rxlock(1),
      \out\(2) => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_1\,
      \out\(1) => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_2\,
      \out\(0) => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_3\,
      \sync_ok_reg[1]\ => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_4\,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
\G_PCS_SYNC_STATE[2].pcs_sync_state\: entity work.xaui_0_sync_state_machine_31
     port map (
      Q(0) => Q(2),
      mgt_codecomma(1 downto 0) => mgt_codecomma(5 downto 4),
      mgt_codevalid(1 downto 0) => mgt_codevalid(5 downto 4),
      mgt_enable_align(0) => mgt_enable_align(2),
      mgt_rx_reset(0) => mgt_rx_reset(2),
      mgt_rxlock(0) => mgt_rxlock(2),
      \out\(2) => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_1\,
      \out\(1) => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_2\,
      \out\(0) => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_3\,
      \sync_ok_reg[2]\ => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_4\,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
\G_PCS_SYNC_STATE[3].pcs_sync_state\: entity work.xaui_0_sync_state_machine_32
     port map (
      Q(0) => Q(3),
      mgt_codecomma(1 downto 0) => mgt_codecomma(7 downto 6),
      mgt_codevalid(1 downto 0) => mgt_codevalid(7 downto 6),
      mgt_enable_align(0) => mgt_enable_align(3),
      mgt_rx_reset(0) => mgt_rx_reset(3),
      mgt_rxlock(0) => mgt_rxlock(3),
      \out\(0) => \G_PCS_SYNC_STATE[3].pcs_sync_state_n_1\,
      \sync_ok_reg[3]\ => \G_PCS_SYNC_STATE[3].pcs_sync_state_n_2\,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
deskew_state: entity work.xaui_0_deskew_state_machine
     port map (
      \got_align_reg[0]_0\ => deskew_state_n_2,
      local_fault => local_fault,
      mgt_codevalid(7 downto 0) => mgt_codevalid(7 downto 0),
      mgt_enchansync => mgt_enchansync,
      mgt_rxcharisk(4) => mgt_rxcharisk(7),
      mgt_rxcharisk(3 downto 1) => mgt_rxcharisk(5 downto 3),
      mgt_rxcharisk(0) => mgt_rxcharisk(1),
      mgt_rxdata(48 downto 38) => mgt_rxdata(63 downto 53),
      mgt_rxdata(37 downto 11) => mgt_rxdata(47 downto 21),
      mgt_rxdata(10 downto 0) => mgt_rxdata(15 downto 5),
      \mgt_rxdata_reg_reg[16]\ => recoder_n_1,
      \mgt_rxdata_reg_reg[49]\ => recoder_n_2,
      \mgt_rxdata_reg_reg[4]\ => recoder_n_0,
      \status_vector[6]\ => \^align_status_int\,
      sync_status => sync_status,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
recoder: entity work.xaui_0_rx_recoder
     port map (
      align_status_reg => \^align_status_int\,
      local_fault => local_fault,
      mgt_codevalid(7 downto 0) => mgt_codevalid(7 downto 0),
      mgt_rxcharisk(7 downto 0) => mgt_rxcharisk(7 downto 0),
      mgt_rxdata(63 downto 0) => mgt_rxdata(63 downto 0),
      \mgt_rxdata_reg_reg[32]\ => deskew_state_n_2,
      \tx_is_idle_pipe_reg[0]_0\ => recoder_n_0,
      \tx_is_idle_pipe_reg[1]_0\ => recoder_n_1,
      \tx_is_idle_pipe_reg[3]_0\ => recoder_n_2,
      usrclk => usrclk,
      xgmii_rxc(7 downto 0) => xgmii_rxc(7 downto 0),
      xgmii_rxd(63 downto 0) => xgmii_rxd(63 downto 0)
    );
\sync_ok_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_4\,
      Q => in0(0),
      S => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_1\
    );
\sync_ok_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_4\,
      Q => in0(1),
      S => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_1\
    );
\sync_ok_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_4\,
      Q => in0(2),
      S => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_1\
    );
\sync_ok_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => usrclk,
      CE => '1',
      D => \G_PCS_SYNC_STATE[3].pcs_sync_state_n_2\,
      Q => in0(3),
      S => \G_PCS_SYNC_STATE[3].pcs_sync_state_n_1\
    );
sync_status_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEE0"
    )
        port map (
      I0 => \G_PCS_SYNC_STATE[3].pcs_sync_state_n_2\,
      I1 => \G_PCS_SYNC_STATE[3].pcs_sync_state_n_1\,
      I2 => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_3\,
      I3 => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_2\,
      I4 => \G_PCS_SYNC_STATE[2].pcs_sync_state_n_1\,
      I5 => sync_status_i_2_n_0,
      O => sync_status_int
    );
sync_status_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101010101FF"
    )
        port map (
      I0 => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_1\,
      I1 => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_2\,
      I2 => \G_PCS_SYNC_STATE[1].pcs_sync_state_n_3\,
      I3 => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_1\,
      I4 => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_2\,
      I5 => \G_PCS_SYNC_STATE[0].pcs_sync_state_n_3\,
      O => sync_status_i_2_n_0
    );
sync_status_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => sync_status_int,
      Q => sync_status,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_tx is
  port (
    mgt_txdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    mgt_txcharisk : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usrclk : in STD_LOGIC;
    usrclk_reset : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_tx : entity is "tx";
end xaui_0_tx;

architecture STRUCTURE of xaui_0_tx is
  signal \G_FILTER_HIGH[4].filter_n_0\ : STD_LOGIC;
  signal \G_FILTER_HIGH[4].filter_n_10\ : STD_LOGIC;
  signal \G_FILTER_HIGH[4].filter_n_9\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_10\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_11\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_12\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_13\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_14\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_15\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_16\ : STD_LOGIC;
  signal \G_FILTER_HIGH[5].filter_n_9\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_10\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_11\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_12\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_13\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_14\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_15\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_16\ : STD_LOGIC;
  signal \G_FILTER_HIGH[6].filter_n_9\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_10\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_11\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_12\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_13\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_14\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_15\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_16\ : STD_LOGIC;
  signal \G_FILTER_HIGH[7].filter_n_9\ : STD_LOGIC;
  signal \G_FILTER_LOW[0].filter_n_1\ : STD_LOGIC;
  signal align_n_5 : STD_LOGIC;
  signal align_n_6 : STD_LOGIC;
  signal align_n_7 : STD_LOGIC;
  signal c : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal c12_in : STD_LOGIC;
  signal c15_in : STD_LOGIC;
  signal c9_in : STD_LOGIC;
  signal code_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal extra_a : STD_LOGIC;
  signal is_idle : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal is_invalid_k : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal is_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal is_terminate : STD_LOGIC;
  signal \is_terminate[0]_i_1_n_0\ : STD_LOGIC;
  signal \is_terminate[0]_i_2_n_0\ : STD_LOGIC;
  signal \is_terminate[0]_i_3_n_0\ : STD_LOGIC;
  signal \is_terminate[0]_i_4_n_0\ : STD_LOGIC;
  signal \is_terminate[0]_i_5_n_0\ : STD_LOGIC;
  signal \is_terminate[0]_i_6_n_0\ : STD_LOGIC;
  signal \is_terminate[1]_i_2_n_0\ : STD_LOGIC;
  signal \is_terminate[1]_i_3_n_0\ : STD_LOGIC;
  signal \is_terminate[1]_i_4_n_0\ : STD_LOGIC;
  signal \is_terminate[1]_i_5_n_0\ : STD_LOGIC;
  signal \is_terminate[1]_i_6_n_0\ : STD_LOGIC;
  signal \is_terminate_reg_n_0_[0]\ : STD_LOGIC;
  signal is_txd_IDLE : STD_LOGIC;
  signal last_qmsg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal q_det : STD_LOGIC;
  signal recoder_n_0 : STD_LOGIC;
  signal recoder_n_1 : STD_LOGIC;
  signal recoder_n_2 : STD_LOGIC;
  signal recoder_n_3 : STD_LOGIC;
  signal state_machine_n_0 : STD_LOGIC;
  signal state_machine_n_1 : STD_LOGIC;
  signal state_machine_n_10 : STD_LOGIC;
  signal state_machine_n_11 : STD_LOGIC;
  signal state_machine_n_12 : STD_LOGIC;
  signal state_machine_n_13 : STD_LOGIC;
  signal state_machine_n_14 : STD_LOGIC;
  signal state_machine_n_15 : STD_LOGIC;
  signal state_machine_n_16 : STD_LOGIC;
  signal state_machine_n_17 : STD_LOGIC;
  signal state_machine_n_18 : STD_LOGIC;
  signal state_machine_n_19 : STD_LOGIC;
  signal state_machine_n_2 : STD_LOGIC;
  signal state_machine_n_20 : STD_LOGIC;
  signal state_machine_n_21 : STD_LOGIC;
  signal state_machine_n_22 : STD_LOGIC;
  signal state_machine_n_23 : STD_LOGIC;
  signal state_machine_n_24 : STD_LOGIC;
  signal state_machine_n_25 : STD_LOGIC;
  signal state_machine_n_26 : STD_LOGIC;
  signal state_machine_n_27 : STD_LOGIC;
  signal state_machine_n_28 : STD_LOGIC;
  signal state_machine_n_29 : STD_LOGIC;
  signal state_machine_n_3 : STD_LOGIC;
  signal state_machine_n_30 : STD_LOGIC;
  signal state_machine_n_31 : STD_LOGIC;
  signal state_machine_n_32 : STD_LOGIC;
  signal state_machine_n_33 : STD_LOGIC;
  signal state_machine_n_34 : STD_LOGIC;
  signal state_machine_n_35 : STD_LOGIC;
  signal state_machine_n_36 : STD_LOGIC;
  signal state_machine_n_37 : STD_LOGIC;
  signal state_machine_n_38 : STD_LOGIC;
  signal state_machine_n_39 : STD_LOGIC;
  signal state_machine_n_4 : STD_LOGIC;
  signal state_machine_n_40 : STD_LOGIC;
  signal state_machine_n_41 : STD_LOGIC;
  signal state_machine_n_42 : STD_LOGIC;
  signal state_machine_n_43 : STD_LOGIC;
  signal state_machine_n_44 : STD_LOGIC;
  signal state_machine_n_45 : STD_LOGIC;
  signal state_machine_n_46 : STD_LOGIC;
  signal state_machine_n_47 : STD_LOGIC;
  signal state_machine_n_48 : STD_LOGIC;
  signal state_machine_n_49 : STD_LOGIC;
  signal state_machine_n_5 : STD_LOGIC;
  signal state_machine_n_50 : STD_LOGIC;
  signal state_machine_n_51 : STD_LOGIC;
  signal state_machine_n_52 : STD_LOGIC;
  signal state_machine_n_53 : STD_LOGIC;
  signal state_machine_n_54 : STD_LOGIC;
  signal state_machine_n_55 : STD_LOGIC;
  signal state_machine_n_56 : STD_LOGIC;
  signal state_machine_n_57 : STD_LOGIC;
  signal state_machine_n_58 : STD_LOGIC;
  signal state_machine_n_59 : STD_LOGIC;
  signal state_machine_n_6 : STD_LOGIC;
  signal state_machine_n_60 : STD_LOGIC;
  signal state_machine_n_61 : STD_LOGIC;
  signal state_machine_n_62 : STD_LOGIC;
  signal state_machine_n_63 : STD_LOGIC;
  signal state_machine_n_64 : STD_LOGIC;
  signal state_machine_n_65 : STD_LOGIC;
  signal state_machine_n_66 : STD_LOGIC;
  signal state_machine_n_67 : STD_LOGIC;
  signal state_machine_n_68 : STD_LOGIC;
  signal state_machine_n_69 : STD_LOGIC;
  signal state_machine_n_7 : STD_LOGIC;
  signal state_machine_n_70 : STD_LOGIC;
  signal state_machine_n_71 : STD_LOGIC;
  signal state_machine_n_72 : STD_LOGIC;
  signal state_machine_n_73 : STD_LOGIC;
  signal state_machine_n_74 : STD_LOGIC;
  signal state_machine_n_75 : STD_LOGIC;
  signal state_machine_n_76 : STD_LOGIC;
  signal state_machine_n_77 : STD_LOGIC;
  signal state_machine_n_78 : STD_LOGIC;
  signal state_machine_n_79 : STD_LOGIC;
  signal state_machine_n_8 : STD_LOGIC;
  signal state_machine_n_9 : STD_LOGIC;
  signal \tx_is_idle[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_idle[1]_i_2_n_0\ : STD_LOGIC;
  signal tx_is_idle_comb : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_is_invalid_k_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_invalid_k_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_q[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_q[0]_i_3_n_0\ : STD_LOGIC;
  signal \tx_is_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_is_q[1]_i_3_n_0\ : STD_LOGIC;
  signal tx_is_q_comb : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txc_filtered : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txc_in : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \txc_pipe_2_reg_n_0_[7]\ : STD_LOGIC;
  signal \txc_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal txd_filtered : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal txd_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txd_is_IDLE : STD_LOGIC;
  signal \txd_is_IDLE_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \txd_is_IDLE_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[16]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[17]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[18]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[19]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[20]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[21]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[22]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[23]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[24]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[25]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[26]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[27]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[28]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[29]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[30]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[31]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[32]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[33]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[34]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[35]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[36]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[37]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[38]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[39]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[40]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[41]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[42]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[43]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[44]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[45]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[46]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[47]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[48]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[49]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[50]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[51]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[52]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[53]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[54]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[55]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[56]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[57]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[58]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[59]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[60]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[61]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[62]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[63]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \txd_pipe_2_reg_n_0_[7]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[16]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[17]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[18]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[19]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[20]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[21]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[22]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[23]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[24]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[25]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[26]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[27]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[28]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[29]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[2]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[30]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[31]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[32]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[33]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[34]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[35]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[36]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[37]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[38]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[39]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[3]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[40]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[41]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[42]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[43]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[44]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[45]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[46]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[47]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[48]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[49]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[4]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[50]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[51]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[52]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[53]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[54]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[55]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[56]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[57]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[58]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[59]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[5]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[60]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[61]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[62]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[63]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[6]\ : STD_LOGIC;
  signal \txd_pipe_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tx_is_idle[0]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \tx_is_idle[1]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[0]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[0]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[1]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[1]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[2]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[2]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[3]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[3]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[4]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[4]_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[5]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[5]_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[6]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[6]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[7]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \tx_is_invalid_k_reg[7]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \tx_is_q[0]_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \tx_is_q[1]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[0]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[1]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[2]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[3]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[4]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[5]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[5]_i_2\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[6]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[7]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \txd_is_IDLE_reg[7]_i_2\ : label is "soft_lutpair85";
begin
\G_FILTER_HIGH[4].filter\: entity work.xaui_0_tx_filter
     port map (
      D(0) => \G_FILTER_HIGH[4].filter_n_10\,
      Q(0) => \txc_pipe_2_reg_n_0_[4]\,
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      is_invalid_k(0) => is_invalid_k(4),
      is_terminate => is_terminate,
      \last_qmsg_reg[31]\ => \G_FILTER_HIGH[4].filter_n_9\,
      \last_qmsg_reg[6]\ => \G_FILTER_HIGH[4].filter_n_0\,
      \state_reg[1][2]\ => state_machine_n_32,
      txc_out_reg_0(2 downto 0) => txc_filtered(7 downto 5),
      txd_filtered(7 downto 0) => txd_filtered(39 downto 32),
      \txd_is_IDLE_reg_reg[4]\(0) => \txd_is_IDLE_reg_reg_n_0_[4]\,
      \txd_pipe_2_reg[39]\(7) => \txd_pipe_2_reg_n_0_[39]\,
      \txd_pipe_2_reg[39]\(6) => \txd_pipe_2_reg_n_0_[38]\,
      \txd_pipe_2_reg[39]\(5) => \txd_pipe_2_reg_n_0_[37]\,
      \txd_pipe_2_reg[39]\(4) => \txd_pipe_2_reg_n_0_[36]\,
      \txd_pipe_2_reg[39]\(3) => \txd_pipe_2_reg_n_0_[35]\,
      \txd_pipe_2_reg[39]\(2) => \txd_pipe_2_reg_n_0_[34]\,
      \txd_pipe_2_reg[39]\(1) => \txd_pipe_2_reg_n_0_[33]\,
      \txd_pipe_2_reg[39]\(0) => \txd_pipe_2_reg_n_0_[32]\,
      usrclk => usrclk
    );
\G_FILTER_HIGH[5].filter\: entity work.xaui_0_tx_filter_23
     port map (
      D(7 downto 0) => p_1_in(15 downto 8),
      Q(0) => \txc_pipe_2_reg_n_0_[5]\,
      data1(7 downto 0) => data1(15 downto 8),
      is_invalid_k(0) => is_invalid_k(5),
      is_terminate => is_terminate,
      \last_qmsg_reg[10]\ => \G_FILTER_HIGH[5].filter_n_12\,
      \last_qmsg_reg[11]\ => \G_FILTER_HIGH[5].filter_n_13\,
      \last_qmsg_reg[12]\ => \G_FILTER_HIGH[5].filter_n_14\,
      \last_qmsg_reg[13]\ => \G_FILTER_HIGH[5].filter_n_15\,
      \last_qmsg_reg[14]\(2) => \G_FILTER_HIGH[5].filter_n_9\,
      \last_qmsg_reg[14]\(1) => \G_FILTER_HIGH[5].filter_n_10\,
      \last_qmsg_reg[14]\(0) => \G_FILTER_HIGH[5].filter_n_11\,
      \last_qmsg_reg[15]\ => \G_FILTER_HIGH[5].filter_n_16\,
      \last_qmsg_reg[6]\(0) => txc_filtered(5),
      txc_out_reg_0 => \G_FILTER_HIGH[4].filter_n_9\,
      \txd_is_IDLE_reg_reg[5]\(0) => \txd_is_IDLE_reg_reg_n_0_[5]\,
      \txd_pipe_2_reg[47]\(7) => \txd_pipe_2_reg_n_0_[47]\,
      \txd_pipe_2_reg[47]\(6) => \txd_pipe_2_reg_n_0_[46]\,
      \txd_pipe_2_reg[47]\(5) => \txd_pipe_2_reg_n_0_[45]\,
      \txd_pipe_2_reg[47]\(4) => \txd_pipe_2_reg_n_0_[44]\,
      \txd_pipe_2_reg[47]\(3) => \txd_pipe_2_reg_n_0_[43]\,
      \txd_pipe_2_reg[47]\(2) => \txd_pipe_2_reg_n_0_[42]\,
      \txd_pipe_2_reg[47]\(1) => \txd_pipe_2_reg_n_0_[41]\,
      \txd_pipe_2_reg[47]\(0) => \txd_pipe_2_reg_n_0_[40]\,
      usrclk => usrclk
    );
\G_FILTER_HIGH[6].filter\: entity work.xaui_0_tx_filter_24
     port map (
      D(7 downto 0) => p_1_in(23 downto 16),
      Q(0) => \txc_pipe_2_reg_n_0_[6]\,
      data1(7 downto 0) => data1(23 downto 16),
      is_invalid_k(0) => is_invalid_k(6),
      is_terminate => is_terminate,
      \last_qmsg_reg[18]\ => \G_FILTER_HIGH[6].filter_n_12\,
      \last_qmsg_reg[19]\ => \G_FILTER_HIGH[6].filter_n_13\,
      \last_qmsg_reg[20]\ => \G_FILTER_HIGH[6].filter_n_14\,
      \last_qmsg_reg[21]\ => \G_FILTER_HIGH[6].filter_n_15\,
      \last_qmsg_reg[22]\(2) => \G_FILTER_HIGH[6].filter_n_9\,
      \last_qmsg_reg[22]\(1) => \G_FILTER_HIGH[6].filter_n_10\,
      \last_qmsg_reg[22]\(0) => \G_FILTER_HIGH[6].filter_n_11\,
      \last_qmsg_reg[23]\ => \G_FILTER_HIGH[6].filter_n_16\,
      \last_qmsg_reg[6]\(0) => txc_filtered(6),
      txc_out_reg_0 => \G_FILTER_HIGH[4].filter_n_9\,
      \txd_is_IDLE_reg_reg[6]\(0) => \txd_is_IDLE_reg_reg_n_0_[6]\,
      \txd_pipe_2_reg[55]\(7) => \txd_pipe_2_reg_n_0_[55]\,
      \txd_pipe_2_reg[55]\(6) => \txd_pipe_2_reg_n_0_[54]\,
      \txd_pipe_2_reg[55]\(5) => \txd_pipe_2_reg_n_0_[53]\,
      \txd_pipe_2_reg[55]\(4) => \txd_pipe_2_reg_n_0_[52]\,
      \txd_pipe_2_reg[55]\(3) => \txd_pipe_2_reg_n_0_[51]\,
      \txd_pipe_2_reg[55]\(2) => \txd_pipe_2_reg_n_0_[50]\,
      \txd_pipe_2_reg[55]\(1) => \txd_pipe_2_reg_n_0_[49]\,
      \txd_pipe_2_reg[55]\(0) => \txd_pipe_2_reg_n_0_[48]\,
      usrclk => usrclk
    );
\G_FILTER_HIGH[7].filter\: entity work.xaui_0_tx_filter_25
     port map (
      D(7 downto 0) => p_1_in(31 downto 24),
      Q(0) => \txc_pipe_2_reg_n_0_[7]\,
      data1(7 downto 0) => data1(31 downto 24),
      is_invalid_k(0) => is_invalid_k(7),
      is_terminate => is_terminate,
      \last_qmsg_reg[26]\ => \G_FILTER_HIGH[7].filter_n_12\,
      \last_qmsg_reg[27]\ => \G_FILTER_HIGH[7].filter_n_13\,
      \last_qmsg_reg[28]\ => \G_FILTER_HIGH[7].filter_n_14\,
      \last_qmsg_reg[29]\ => \G_FILTER_HIGH[7].filter_n_15\,
      \last_qmsg_reg[30]\(2) => \G_FILTER_HIGH[7].filter_n_9\,
      \last_qmsg_reg[30]\(1) => \G_FILTER_HIGH[7].filter_n_10\,
      \last_qmsg_reg[30]\(0) => \G_FILTER_HIGH[7].filter_n_11\,
      \last_qmsg_reg[31]\ => \G_FILTER_HIGH[7].filter_n_16\,
      \last_qmsg_reg[6]\(0) => txc_filtered(7),
      txc_out_reg_0 => \G_FILTER_HIGH[4].filter_n_9\,
      \txd_is_IDLE_reg_reg[7]\(0) => \txd_is_IDLE_reg_reg_n_0_[7]\,
      \txd_pipe_2_reg[63]\(7) => \txd_pipe_2_reg_n_0_[63]\,
      \txd_pipe_2_reg[63]\(6) => \txd_pipe_2_reg_n_0_[62]\,
      \txd_pipe_2_reg[63]\(5) => \txd_pipe_2_reg_n_0_[61]\,
      \txd_pipe_2_reg[63]\(4) => \txd_pipe_2_reg_n_0_[60]\,
      \txd_pipe_2_reg[63]\(3) => \txd_pipe_2_reg_n_0_[59]\,
      \txd_pipe_2_reg[63]\(2) => \txd_pipe_2_reg_n_0_[58]\,
      \txd_pipe_2_reg[63]\(1) => \txd_pipe_2_reg_n_0_[57]\,
      \txd_pipe_2_reg[63]\(0) => \txd_pipe_2_reg_n_0_[56]\,
      usrclk => usrclk
    );
\G_FILTER_LOW[0].filter\: entity work.xaui_0_tx_filter_26
     port map (
      Q(0) => \txc_pipe_2_reg_n_0_[0]\,
      is_invalid_k(0) => is_invalid_k(0),
      \is_terminate_reg[0]\ => \is_terminate_reg_n_0_[0]\,
      \last_qmsg_reg[31]\ => \G_FILTER_LOW[0].filter_n_1\,
      txc_filtered(0) => txc_filtered(0),
      txc_out_reg_0 => \G_FILTER_HIGH[4].filter_n_9\,
      txc_out_reg_1(2 downto 0) => txc_filtered(3 downto 1),
      txd_filtered(7 downto 0) => txd_filtered(7 downto 0),
      \txd_is_IDLE_reg_reg[0]\(0) => \txd_is_IDLE_reg_reg_n_0_[0]\,
      \txd_pipe_2_reg[7]\(7) => \txd_pipe_2_reg_n_0_[7]\,
      \txd_pipe_2_reg[7]\(6) => \txd_pipe_2_reg_n_0_[6]\,
      \txd_pipe_2_reg[7]\(5) => \txd_pipe_2_reg_n_0_[5]\,
      \txd_pipe_2_reg[7]\(4) => \txd_pipe_2_reg_n_0_[4]\,
      \txd_pipe_2_reg[7]\(3) => \txd_pipe_2_reg_n_0_[3]\,
      \txd_pipe_2_reg[7]\(2) => \txd_pipe_2_reg_n_0_[2]\,
      \txd_pipe_2_reg[7]\(1) => \txd_pipe_2_reg_n_0_[1]\,
      \txd_pipe_2_reg[7]\(0) => \txd_pipe_2_reg_n_0_[0]\,
      usrclk => usrclk
    );
\G_FILTER_LOW[1].filter\: entity work.xaui_0_tx_filter_27
     port map (
      Q(0) => txc_in,
      data1(7 downto 0) => data1(15 downto 8),
      is_invalid_k(0) => is_invalid_k(1),
      \is_terminate_reg[0]\ => \is_terminate_reg_n_0_[0]\,
      \txc_out_reg[1]\(0) => txc_filtered(1),
      \txd_is_IDLE_reg_reg[1]\(0) => is_txd_IDLE,
      \txd_pipe_2_reg[15]\(7 downto 0) => txd_in(7 downto 0),
      usrclk => usrclk
    );
\G_FILTER_LOW[2].filter\: entity work.xaui_0_tx_filter_28
     port map (
      Q(0) => \txc_pipe_2_reg_n_0_[2]\,
      data1(7 downto 0) => data1(23 downto 16),
      is_invalid_k(0) => is_invalid_k(2),
      \is_terminate_reg[0]\ => \is_terminate_reg_n_0_[0]\,
      \txc_out_reg[2]\(0) => txc_filtered(2),
      \txd_is_IDLE_reg_reg[2]\(0) => \txd_is_IDLE_reg_reg_n_0_[2]\,
      \txd_pipe_2_reg[23]\(7) => \txd_pipe_2_reg_n_0_[23]\,
      \txd_pipe_2_reg[23]\(6) => \txd_pipe_2_reg_n_0_[22]\,
      \txd_pipe_2_reg[23]\(5) => \txd_pipe_2_reg_n_0_[21]\,
      \txd_pipe_2_reg[23]\(4) => \txd_pipe_2_reg_n_0_[20]\,
      \txd_pipe_2_reg[23]\(3) => \txd_pipe_2_reg_n_0_[19]\,
      \txd_pipe_2_reg[23]\(2) => \txd_pipe_2_reg_n_0_[18]\,
      \txd_pipe_2_reg[23]\(1) => \txd_pipe_2_reg_n_0_[17]\,
      \txd_pipe_2_reg[23]\(0) => \txd_pipe_2_reg_n_0_[16]\,
      usrclk => usrclk
    );
\G_FILTER_LOW[3].filter\: entity work.xaui_0_tx_filter_29
     port map (
      Q(0) => \txc_pipe_2_reg_n_0_[3]\,
      data1(7 downto 0) => data1(31 downto 24),
      is_invalid_k(0) => is_invalid_k(3),
      \is_terminate_reg[0]\ => \is_terminate_reg_n_0_[0]\,
      \txc_out_reg[3]\(0) => txc_filtered(3),
      \txd_is_IDLE_reg_reg[3]\(0) => \txd_is_IDLE_reg_reg_n_0_[3]\,
      \txd_pipe_2_reg[31]\(7) => \txd_pipe_2_reg_n_0_[31]\,
      \txd_pipe_2_reg[31]\(6) => \txd_pipe_2_reg_n_0_[30]\,
      \txd_pipe_2_reg[31]\(5) => \txd_pipe_2_reg_n_0_[29]\,
      \txd_pipe_2_reg[31]\(4) => \txd_pipe_2_reg_n_0_[28]\,
      \txd_pipe_2_reg[31]\(3) => \txd_pipe_2_reg_n_0_[27]\,
      \txd_pipe_2_reg[31]\(2) => \txd_pipe_2_reg_n_0_[26]\,
      \txd_pipe_2_reg[31]\(1) => \txd_pipe_2_reg_n_0_[25]\,
      \txd_pipe_2_reg[31]\(0) => \txd_pipe_2_reg_n_0_[24]\,
      usrclk => usrclk
    );
align: entity work.xaui_0_align_counter
     port map (
      D(1) => state_machine_n_44,
      D(0) => state_machine_n_45,
      Q(1 downto 0) => p_1_in_0(1 downto 0),
      \count_reg[4]_0\(1 downto 0) => count(1 downto 0),
      extra_a => extra_a,
      extra_a_reg_0 => state_machine_n_79,
      q_det => q_det,
      \state_reg[0][0]\ => align_n_6,
      \state_reg[0][0]_0\ => state_machine_n_33,
      \state_reg[1][1]\ => align_n_5,
      \state_reg[1][1]_0\ => align_n_7,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
\is_terminate[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => \is_terminate[0]_i_2_n_0\,
      I1 => \tx_is_invalid_k_reg[2]_i_2_n_0\,
      I2 => \is_terminate[0]_i_3_n_0\,
      I3 => \tx_is_invalid_k_reg[3]_i_2_n_0\,
      I4 => \is_terminate[0]_i_4_n_0\,
      O => \is_terminate[0]_i_1_n_0\
    );
\is_terminate[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[18]\,
      I1 => \txd_pipe_reg_n_0_[17]\,
      I2 => c12_in,
      I3 => \txd_pipe_reg_n_0_[16]\,
      I4 => \txd_pipe_reg_n_0_[20]\,
      I5 => \txd_pipe_reg_n_0_[19]\,
      O => \is_terminate[0]_i_2_n_0\
    );
\is_terminate[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[26]\,
      I1 => \txd_pipe_reg_n_0_[25]\,
      I2 => c9_in,
      I3 => \txd_pipe_reg_n_0_[24]\,
      I4 => \txd_pipe_reg_n_0_[28]\,
      I5 => \txd_pipe_reg_n_0_[27]\,
      O => \is_terminate[0]_i_3_n_0\
    );
\is_terminate[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[6]\,
      I1 => \txd_pipe_reg_n_0_[7]\,
      I2 => \txd_pipe_reg_n_0_[5]\,
      I3 => \is_terminate[0]_i_5_n_0\,
      I4 => \tx_is_invalid_k_reg[1]_i_2_n_0\,
      I5 => \is_terminate[0]_i_6_n_0\,
      O => \is_terminate[0]_i_4_n_0\
    );
\is_terminate[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[2]\,
      I1 => \txd_pipe_reg_n_0_[1]\,
      I2 => \txc_pipe_reg_n_0_[0]\,
      I3 => \txd_pipe_reg_n_0_[0]\,
      I4 => \txd_pipe_reg_n_0_[4]\,
      I5 => \txd_pipe_reg_n_0_[3]\,
      O => \is_terminate[0]_i_5_n_0\
    );
\is_terminate[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => d(2),
      I1 => d(1),
      I2 => c15_in,
      I3 => d(0),
      I4 => d(4),
      I5 => d(3),
      O => \is_terminate[0]_i_6_n_0\
    );
\is_terminate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \is_terminate[1]_i_2_n_0\,
      I1 => \is_terminate[1]_i_3_n_0\,
      I2 => \tx_is_invalid_k_reg[5]_i_2_n_0\,
      I3 => \tx_is_invalid_k_reg[4]_i_2_n_0\,
      I4 => \is_terminate[1]_i_4_n_0\,
      O => p_1_out(1)
    );
\is_terminate[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[62]\,
      I1 => \txd_pipe_reg_n_0_[63]\,
      I2 => \txd_pipe_reg_n_0_[61]\,
      I3 => \is_terminate[1]_i_5_n_0\,
      I4 => \tx_is_invalid_k_reg[6]_i_2_n_0\,
      I5 => \is_terminate[1]_i_6_n_0\,
      O => \is_terminate[1]_i_2_n_0\
    );
\is_terminate[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[42]\,
      I1 => \txd_pipe_reg_n_0_[41]\,
      I2 => c(1),
      I3 => \txd_pipe_reg_n_0_[40]\,
      I4 => \txd_pipe_reg_n_0_[44]\,
      I5 => \txd_pipe_reg_n_0_[43]\,
      O => \is_terminate[1]_i_3_n_0\
    );
\is_terminate[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[34]\,
      I1 => \txd_pipe_reg_n_0_[33]\,
      I2 => c(0),
      I3 => \txd_pipe_reg_n_0_[32]\,
      I4 => \txd_pipe_reg_n_0_[36]\,
      I5 => \txd_pipe_reg_n_0_[35]\,
      O => \is_terminate[1]_i_4_n_0\
    );
\is_terminate[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[58]\,
      I1 => \txd_pipe_reg_n_0_[57]\,
      I2 => c(3),
      I3 => \txd_pipe_reg_n_0_[56]\,
      I4 => \txd_pipe_reg_n_0_[60]\,
      I5 => \txd_pipe_reg_n_0_[59]\,
      O => \is_terminate[1]_i_5_n_0\
    );
\is_terminate[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[50]\,
      I1 => \txd_pipe_reg_n_0_[49]\,
      I2 => c(2),
      I3 => \txd_pipe_reg_n_0_[48]\,
      I4 => \txd_pipe_reg_n_0_[52]\,
      I5 => \txd_pipe_reg_n_0_[51]\,
      O => \is_terminate[1]_i_6_n_0\
    );
\is_terminate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \is_terminate[0]_i_1_n_0\,
      Q => \is_terminate_reg_n_0_[0]\,
      R => '0'
    );
\is_terminate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => p_1_out(1),
      Q => is_terminate,
      R => '0'
    );
k_r_prbs_i: entity work.xaui_0_k_r_prbs
     port map (
      Q(1) => code_sel(0),
      Q(0) => code_sel(1),
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
recoder: entity work.xaui_0_tx_recoder
     port map (
      D(9) => state_machine_n_34,
      D(8) => state_machine_n_35,
      D(7) => state_machine_n_36,
      D(6) => state_machine_n_37,
      D(5) => state_machine_n_38,
      D(4) => state_machine_n_39,
      D(3) => state_machine_n_40,
      D(2) => state_machine_n_41,
      D(1) => state_machine_n_42,
      D(0) => state_machine_n_43,
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      \last_qmsg_reg[0]\ => state_machine_n_22,
      \last_qmsg_reg[0]_0\ => state_machine_n_18,
      \last_qmsg_reg[10]\ => state_machine_n_69,
      \last_qmsg_reg[12]\ => state_machine_n_70,
      \last_qmsg_reg[14]\ => state_machine_n_1,
      \last_qmsg_reg[14]_0\ => state_machine_n_5,
      \last_qmsg_reg[16]\ => state_machine_n_27,
      \last_qmsg_reg[16]_0\ => state_machine_n_14,
      \last_qmsg_reg[17]\ => state_machine_n_28,
      \last_qmsg_reg[17]_0\ => state_machine_n_13,
      \last_qmsg_reg[18]\ => state_machine_n_72,
      \last_qmsg_reg[19]\ => state_machine_n_21,
      \last_qmsg_reg[1]\ => state_machine_n_23,
      \last_qmsg_reg[1]_0\ => state_machine_n_17,
      \last_qmsg_reg[20]\ => state_machine_n_73,
      \last_qmsg_reg[22]\ => state_machine_n_2,
      \last_qmsg_reg[22]_0\ => state_machine_n_6,
      \last_qmsg_reg[24]\ => state_machine_n_29,
      \last_qmsg_reg[24]_0\ => state_machine_n_12,
      \last_qmsg_reg[25]\ => state_machine_n_30,
      \last_qmsg_reg[25]_0\ => state_machine_n_11,
      \last_qmsg_reg[26]\ => state_machine_n_75,
      \last_qmsg_reg[27]\ => state_machine_n_9,
      \last_qmsg_reg[28]\ => state_machine_n_76,
      \last_qmsg_reg[2]\ => state_machine_n_66,
      \last_qmsg_reg[30]\ => state_machine_n_3,
      \last_qmsg_reg[30]_0\ => state_machine_n_7,
      \last_qmsg_reg[3]\ => state_machine_n_24,
      \last_qmsg_reg[3]_0\ => state_machine_n_8,
      \last_qmsg_reg[4]\ => state_machine_n_67,
      \last_qmsg_reg[6]\ => state_machine_n_0,
      \last_qmsg_reg[6]_0\ => state_machine_n_4,
      \last_qmsg_reg[7]\ => state_machine_n_68,
      \last_qmsg_reg[8]\ => state_machine_n_25,
      \last_qmsg_reg[8]_0\ => state_machine_n_16,
      \last_qmsg_reg[9]\ => state_machine_n_26,
      \last_qmsg_reg[9]_0\ => state_machine_n_15,
      mgt_txcharisk(7 downto 0) => mgt_txcharisk(7 downto 0),
      mgt_txdata(63 downto 0) => mgt_txdata(63 downto 0),
      \state_reg[0][0]\ => state_machine_n_10,
      \state_reg[0][0]_0\ => state_machine_n_53,
      \state_reg[0][2]\ => state_machine_n_54,
      \state_reg[0][2]_0\ => state_machine_n_65,
      \state_reg[0][2]_1\ => state_machine_n_59,
      \state_reg[0][2]_10\ => state_machine_n_63,
      \state_reg[0][2]_2\ => state_machine_n_64,
      \state_reg[0][2]_3\ => state_machine_n_55,
      \state_reg[0][2]_4\ => state_machine_n_56,
      \state_reg[0][2]_5\ => state_machine_n_57,
      \state_reg[0][2]_6\ => state_machine_n_58,
      \state_reg[0][2]_7\ => state_machine_n_60,
      \state_reg[0][2]_8\ => state_machine_n_61,
      \state_reg[0][2]_9\ => state_machine_n_62,
      \state_reg[1][0]\ => state_machine_n_31,
      \state_reg[1][1]\ => state_machine_n_20,
      \state_reg[1][2]\ => state_machine_n_19,
      \state_reg[1][2]_0\ => state_machine_n_77,
      \state_reg[1][2]_1\ => state_machine_n_74,
      \state_reg[1][2]_2\ => state_machine_n_71,
      txc_out_reg(7) => state_machine_n_46,
      txc_out_reg(6) => state_machine_n_47,
      txc_out_reg(5) => state_machine_n_48,
      txc_out_reg(4) => \G_FILTER_HIGH[4].filter_n_10\,
      txc_out_reg(3) => state_machine_n_49,
      txc_out_reg(2) => state_machine_n_50,
      txc_out_reg(1) => state_machine_n_51,
      txc_out_reg(0) => state_machine_n_52,
      \txd_out_reg[19]_0\ => recoder_n_1,
      \txd_out_reg[37]_0\ => recoder_n_0,
      \txd_out_reg[38]_0\ => recoder_n_2,
      \txd_out_reg[62]_0\ => recoder_n_3,
      usrclk => usrclk
    );
state_machine: entity work.xaui_0_tx_state_machine
     port map (
      D(9) => state_machine_n_34,
      D(8) => state_machine_n_35,
      D(7) => state_machine_n_36,
      D(6) => state_machine_n_37,
      D(5) => state_machine_n_38,
      D(4) => state_machine_n_39,
      D(3) => state_machine_n_40,
      D(2) => state_machine_n_41,
      D(1) => state_machine_n_42,
      D(0) => state_machine_n_43,
      Q(1 downto 0) => is_q(1 downto 0),
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      \configuration_vector[4]\ => recoder_n_0,
      \configuration_vector[5]\ => recoder_n_3,
      \configuration_vector[6]\ => recoder_n_2,
      \configuration_vector[6]_0\ => recoder_n_1,
      \count_reg[1]\(1) => state_machine_n_44,
      \count_reg[1]\(0) => state_machine_n_45,
      \count_reg[1]_0\(1 downto 0) => count(1 downto 0),
      \count_reg[2]\ => align_n_7,
      \count_reg[4]\ => align_n_6,
      data1(23 downto 0) => data1(31 downto 8),
      extra_a => extra_a,
      extra_a_reg => state_machine_n_79,
      last_qmsg(31 downto 0) => last_qmsg(31 downto 0),
      \prbs_reg[2]\(1 downto 0) => p_1_in_0(1 downto 0),
      \prbs_reg[7]\ => state_machine_n_33,
      \prbs_reg[8]\(1) => code_sel(0),
      \prbs_reg[8]\(0) => code_sel(1),
      q_det => q_det,
      q_det_reg => state_machine_n_78,
      q_det_reg_0 => align_n_5,
      \state_reg[1][2]_0\ => state_machine_n_32,
      \tx_is_idle_reg[1]\(1 downto 0) => is_idle(1 downto 0),
      txc_filtered(6 downto 4) => txc_filtered(7 downto 5),
      txc_filtered(3 downto 0) => txc_filtered(3 downto 0),
      \txc_out_reg[7]\(6) => state_machine_n_46,
      \txc_out_reg[7]\(5) => state_machine_n_47,
      \txc_out_reg[7]\(4) => state_machine_n_48,
      \txc_out_reg[7]\(3) => state_machine_n_49,
      \txc_out_reg[7]\(2) => state_machine_n_50,
      \txc_out_reg[7]\(1) => state_machine_n_51,
      \txc_out_reg[7]\(0) => state_machine_n_52,
      txd_filtered(15 downto 8) => txd_filtered(39 downto 32),
      txd_filtered(7 downto 0) => txd_filtered(7 downto 0),
      \txd_out_reg[0]\ => state_machine_n_18,
      \txd_out_reg[10]\ => state_machine_n_61,
      \txd_out_reg[12]\ => state_machine_n_60,
      \txd_out_reg[14]\ => state_machine_n_5,
      \txd_out_reg[15]\ => state_machine_n_59,
      \txd_out_reg[16]\ => state_machine_n_14,
      \txd_out_reg[17]\ => state_machine_n_13,
      \txd_out_reg[18]\ => state_machine_n_58,
      \txd_out_reg[1]\ => state_machine_n_17,
      \txd_out_reg[20]\ => state_machine_n_57,
      \txd_out_reg[22]\ => state_machine_n_6,
      \txd_out_reg[23]\ => state_machine_n_65,
      \txd_out_reg[24]\ => state_machine_n_12,
      \txd_out_reg[25]\ => state_machine_n_11,
      \txd_out_reg[26]\ => state_machine_n_56,
      \txd_out_reg[27]\ => state_machine_n_9,
      \txd_out_reg[28]\ => state_machine_n_53,
      \txd_out_reg[28]_0\ => state_machine_n_55,
      \txd_out_reg[2]\ => state_machine_n_63,
      \txd_out_reg[2]_0\ => \G_FILTER_HIGH[5].filter_n_12\,
      \txd_out_reg[2]_1\ => \G_FILTER_HIGH[6].filter_n_12\,
      \txd_out_reg[2]_2\ => \G_FILTER_HIGH[7].filter_n_12\,
      \txd_out_reg[30]\ => state_machine_n_7,
      \txd_out_reg[31]\ => state_machine_n_54,
      \txd_out_reg[32]\ => state_machine_n_22,
      \txd_out_reg[33]\ => state_machine_n_23,
      \txd_out_reg[34]\ => state_machine_n_66,
      \txd_out_reg[35]\ => state_machine_n_24,
      \txd_out_reg[36]\ => state_machine_n_67,
      \txd_out_reg[38]\ => state_machine_n_0,
      \txd_out_reg[39]\ => state_machine_n_19,
      \txd_out_reg[39]_0\ => state_machine_n_68,
      \txd_out_reg[3]\ => state_machine_n_8,
      \txd_out_reg[3]_0\ => \G_FILTER_HIGH[5].filter_n_13\,
      \txd_out_reg[3]_1\ => \G_FILTER_HIGH[6].filter_n_13\,
      \txd_out_reg[3]_2\ => \G_FILTER_HIGH[7].filter_n_13\,
      \txd_out_reg[40]\ => state_machine_n_25,
      \txd_out_reg[41]\ => state_machine_n_26,
      \txd_out_reg[42]\ => state_machine_n_69,
      \txd_out_reg[43]\ => state_machine_n_20,
      \txd_out_reg[44]\ => state_machine_n_70,
      \txd_out_reg[46]\ => state_machine_n_1,
      \txd_out_reg[47]\ => state_machine_n_71,
      \txd_out_reg[48]\ => state_machine_n_27,
      \txd_out_reg[49]\ => state_machine_n_28,
      \txd_out_reg[4]\ => state_machine_n_62,
      \txd_out_reg[4]_0\ => \G_FILTER_HIGH[5].filter_n_14\,
      \txd_out_reg[4]_1\ => \G_FILTER_HIGH[6].filter_n_14\,
      \txd_out_reg[4]_2\ => \G_FILTER_HIGH[7].filter_n_14\,
      \txd_out_reg[50]\ => state_machine_n_72,
      \txd_out_reg[51]\ => state_machine_n_21,
      \txd_out_reg[52]\ => state_machine_n_73,
      \txd_out_reg[54]\ => state_machine_n_2,
      \txd_out_reg[55]\ => state_machine_n_74,
      \txd_out_reg[56]\ => state_machine_n_29,
      \txd_out_reg[57]\ => state_machine_n_30,
      \txd_out_reg[58]\ => state_machine_n_75,
      \txd_out_reg[59]\ => state_machine_n_31,
      \txd_out_reg[5]\ => \G_FILTER_HIGH[5].filter_n_15\,
      \txd_out_reg[5]_0\ => \G_FILTER_HIGH[6].filter_n_15\,
      \txd_out_reg[5]_1\ => \G_FILTER_HIGH[7].filter_n_15\,
      \txd_out_reg[60]\ => state_machine_n_76,
      \txd_out_reg[62]\ => state_machine_n_3,
      \txd_out_reg[63]\ => state_machine_n_77,
      \txd_out_reg[6]\ => state_machine_n_4,
      \txd_out_reg[6]_0\(2) => \G_FILTER_HIGH[5].filter_n_9\,
      \txd_out_reg[6]_0\(1) => \G_FILTER_HIGH[5].filter_n_10\,
      \txd_out_reg[6]_0\(0) => \G_FILTER_HIGH[5].filter_n_11\,
      \txd_out_reg[6]_1\(2) => \G_FILTER_HIGH[6].filter_n_9\,
      \txd_out_reg[6]_1\(1) => \G_FILTER_HIGH[6].filter_n_10\,
      \txd_out_reg[6]_1\(0) => \G_FILTER_HIGH[6].filter_n_11\,
      \txd_out_reg[6]_2\(2) => \G_FILTER_HIGH[7].filter_n_9\,
      \txd_out_reg[6]_2\(1) => \G_FILTER_HIGH[7].filter_n_10\,
      \txd_out_reg[6]_2\(0) => \G_FILTER_HIGH[7].filter_n_11\,
      \txd_out_reg[6]_3\ => \G_FILTER_LOW[0].filter_n_1\,
      \txd_out_reg[7]\ => state_machine_n_10,
      \txd_out_reg[7]_0\ => state_machine_n_64,
      \txd_out_reg[7]_1\ => \G_FILTER_HIGH[5].filter_n_16\,
      \txd_out_reg[7]_2\ => \G_FILTER_HIGH[6].filter_n_16\,
      \txd_out_reg[7]_3\ => \G_FILTER_HIGH[7].filter_n_16\,
      \txd_out_reg[8]\ => state_machine_n_16,
      \txd_out_reg[9]\ => state_machine_n_15,
      usrclk => usrclk,
      usrclk_reset => usrclk_reset
    );
tqmsg_capture_1: entity work.xaui_0_tqmsg_capture
     port map (
      D(23 downto 0) => p_1_in(31 downto 8),
      last_qmsg(31 downto 0) => last_qmsg(31 downto 0),
      q_det => q_det,
      \state_reg[0][0]\ => state_machine_n_78,
      txc_filtered(2 downto 0) => txc_filtered(7 downto 5),
      txd_filtered(8) => txd_filtered(33),
      txd_filtered(7 downto 0) => txd_filtered(7 downto 0),
      \txd_out_reg[5]\ => \G_FILTER_HIGH[4].filter_n_0\,
      \txd_out_reg[6]\ => \G_FILTER_LOW[0].filter_n_1\,
      usrclk => usrclk
    );
\tx_is_idle[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \txd_is_IDLE_reg[0]_i_1_n_0\,
      I1 => \txd_is_IDLE_reg[1]_i_1_n_0\,
      I2 => \txd_is_IDLE_reg[2]_i_1_n_0\,
      I3 => \txd_is_IDLE_reg[3]_i_1_n_0\,
      I4 => \tx_is_idle[0]_i_2_n_0\,
      O => tx_is_idle_comb(0)
    );
\tx_is_idle[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => c15_in,
      I1 => \txc_pipe_reg_n_0_[0]\,
      I2 => c9_in,
      I3 => c12_in,
      O => \tx_is_idle[0]_i_2_n_0\
    );
\tx_is_idle[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \txd_is_IDLE_reg[4]_i_1_n_0\,
      I1 => \txd_is_IDLE_reg[5]_i_1_n_0\,
      I2 => \txd_is_IDLE_reg[6]_i_1_n_0\,
      I3 => txd_is_IDLE,
      I4 => \tx_is_idle[1]_i_2_n_0\,
      O => tx_is_idle_comb(1)
    );
\tx_is_idle[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => c(1),
      I1 => c(0),
      I2 => c(3),
      I3 => c(2),
      O => \tx_is_idle[1]_i_2_n_0\
    );
\tx_is_idle_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => tx_is_idle_comb(0),
      Q => is_idle(0),
      R => '0'
    );
\tx_is_idle_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => tx_is_idle_comb(1),
      Q => is_idle(1),
      R => '0'
    );
\tx_is_invalid_k_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => \txc_pipe_reg_n_0_[0]\,
      I1 => \tx_is_invalid_k_reg[0]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[1]\,
      I3 => \txd_pipe_reg_n_0_[0]\,
      I4 => \tx_is_invalid_k_reg[0]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[0]_i_1_n_0\
    );
\tx_is_invalid_k_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[6]\,
      I1 => \txd_pipe_reg_n_0_[7]\,
      I2 => \txd_pipe_reg_n_0_[5]\,
      O => \tx_is_invalid_k_reg[0]_i_2_n_0\
    );
\tx_is_invalid_k_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[4]\,
      I1 => \txd_pipe_reg_n_0_[3]\,
      I2 => \txd_pipe_reg_n_0_[2]\,
      I3 => \txd_pipe_reg_n_0_[0]\,
      I4 => \txd_pipe_reg_n_0_[1]\,
      O => \tx_is_invalid_k_reg[0]_i_3_n_0\
    );
\tx_is_invalid_k_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c15_in,
      I1 => \tx_is_invalid_k_reg[1]_i_2_n_0\,
      I2 => d(1),
      I3 => d(0),
      I4 => \tx_is_invalid_k_reg[1]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[1]_i_1_n_0\
    );
\tx_is_invalid_k_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => d(6),
      I1 => d(7),
      I2 => d(5),
      O => \tx_is_invalid_k_reg[1]_i_2_n_0\
    );
\tx_is_invalid_k_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => d(4),
      I1 => d(3),
      I2 => d(2),
      I3 => d(0),
      I4 => d(1),
      O => \tx_is_invalid_k_reg[1]_i_3_n_0\
    );
\tx_is_invalid_k_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c12_in,
      I1 => \tx_is_invalid_k_reg[2]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[17]\,
      I3 => \txd_pipe_reg_n_0_[16]\,
      I4 => \tx_is_invalid_k_reg[2]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[2]_i_1_n_0\
    );
\tx_is_invalid_k_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[22]\,
      I1 => \txd_pipe_reg_n_0_[23]\,
      I2 => \txd_pipe_reg_n_0_[21]\,
      O => \tx_is_invalid_k_reg[2]_i_2_n_0\
    );
\tx_is_invalid_k_reg[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[20]\,
      I1 => \txd_pipe_reg_n_0_[19]\,
      I2 => \txd_pipe_reg_n_0_[18]\,
      I3 => \txd_pipe_reg_n_0_[16]\,
      I4 => \txd_pipe_reg_n_0_[17]\,
      O => \tx_is_invalid_k_reg[2]_i_3_n_0\
    );
\tx_is_invalid_k_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c9_in,
      I1 => \tx_is_invalid_k_reg[3]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[25]\,
      I3 => \txd_pipe_reg_n_0_[24]\,
      I4 => \tx_is_invalid_k_reg[3]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[3]_i_1_n_0\
    );
\tx_is_invalid_k_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[30]\,
      I1 => \txd_pipe_reg_n_0_[31]\,
      I2 => \txd_pipe_reg_n_0_[29]\,
      O => \tx_is_invalid_k_reg[3]_i_2_n_0\
    );
\tx_is_invalid_k_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[28]\,
      I1 => \txd_pipe_reg_n_0_[27]\,
      I2 => \txd_pipe_reg_n_0_[26]\,
      I3 => \txd_pipe_reg_n_0_[24]\,
      I4 => \txd_pipe_reg_n_0_[25]\,
      O => \tx_is_invalid_k_reg[3]_i_3_n_0\
    );
\tx_is_invalid_k_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c(0),
      I1 => \tx_is_invalid_k_reg[4]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[33]\,
      I3 => \txd_pipe_reg_n_0_[32]\,
      I4 => \tx_is_invalid_k_reg[4]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[4]_i_1_n_0\
    );
\tx_is_invalid_k_reg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[38]\,
      I1 => \txd_pipe_reg_n_0_[39]\,
      I2 => \txd_pipe_reg_n_0_[37]\,
      O => \tx_is_invalid_k_reg[4]_i_2_n_0\
    );
\tx_is_invalid_k_reg[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[36]\,
      I1 => \txd_pipe_reg_n_0_[35]\,
      I2 => \txd_pipe_reg_n_0_[34]\,
      I3 => \txd_pipe_reg_n_0_[32]\,
      I4 => \txd_pipe_reg_n_0_[33]\,
      O => \tx_is_invalid_k_reg[4]_i_3_n_0\
    );
\tx_is_invalid_k_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c(1),
      I1 => \tx_is_invalid_k_reg[5]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[41]\,
      I3 => \txd_pipe_reg_n_0_[40]\,
      I4 => \tx_is_invalid_k_reg[5]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[5]_i_1_n_0\
    );
\tx_is_invalid_k_reg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[46]\,
      I1 => \txd_pipe_reg_n_0_[47]\,
      I2 => \txd_pipe_reg_n_0_[45]\,
      O => \tx_is_invalid_k_reg[5]_i_2_n_0\
    );
\tx_is_invalid_k_reg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[44]\,
      I1 => \txd_pipe_reg_n_0_[43]\,
      I2 => \txd_pipe_reg_n_0_[42]\,
      I3 => \txd_pipe_reg_n_0_[40]\,
      I4 => \txd_pipe_reg_n_0_[41]\,
      O => \tx_is_invalid_k_reg[5]_i_3_n_0\
    );
\tx_is_invalid_k_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c(2),
      I1 => \tx_is_invalid_k_reg[6]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[49]\,
      I3 => \txd_pipe_reg_n_0_[48]\,
      I4 => \tx_is_invalid_k_reg[6]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[6]_i_1_n_0\
    );
\tx_is_invalid_k_reg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[54]\,
      I1 => \txd_pipe_reg_n_0_[55]\,
      I2 => \txd_pipe_reg_n_0_[53]\,
      O => \tx_is_invalid_k_reg[6]_i_2_n_0\
    );
\tx_is_invalid_k_reg[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[52]\,
      I1 => \txd_pipe_reg_n_0_[51]\,
      I2 => \txd_pipe_reg_n_0_[50]\,
      I3 => \txd_pipe_reg_n_0_[48]\,
      I4 => \txd_pipe_reg_n_0_[49]\,
      O => \tx_is_invalid_k_reg[6]_i_3_n_0\
    );
\tx_is_invalid_k_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => c(3),
      I1 => \tx_is_invalid_k_reg[7]_i_2_n_0\,
      I2 => \txd_pipe_reg_n_0_[57]\,
      I3 => \txd_pipe_reg_n_0_[56]\,
      I4 => \tx_is_invalid_k_reg[7]_i_3_n_0\,
      O => \tx_is_invalid_k_reg[7]_i_1_n_0\
    );
\tx_is_invalid_k_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[62]\,
      I1 => \txd_pipe_reg_n_0_[63]\,
      I2 => \txd_pipe_reg_n_0_[61]\,
      O => \tx_is_invalid_k_reg[7]_i_2_n_0\
    );
\tx_is_invalid_k_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77F7F7F"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[60]\,
      I1 => \txd_pipe_reg_n_0_[59]\,
      I2 => \txd_pipe_reg_n_0_[58]\,
      I3 => \txd_pipe_reg_n_0_[56]\,
      I4 => \txd_pipe_reg_n_0_[57]\,
      O => \tx_is_invalid_k_reg[7]_i_3_n_0\
    );
\tx_is_invalid_k_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[0]_i_1_n_0\,
      Q => is_invalid_k(0),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[1]_i_1_n_0\,
      Q => is_invalid_k(1),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[2]_i_1_n_0\,
      Q => is_invalid_k(2),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[3]_i_1_n_0\,
      Q => is_invalid_k(3),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[4]_i_1_n_0\,
      Q => is_invalid_k(4),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[5]_i_1_n_0\,
      Q => is_invalid_k(5),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[6]_i_1_n_0\,
      Q => is_invalid_k(6),
      R => '0'
    );
\tx_is_invalid_k_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \tx_is_invalid_k_reg[7]_i_1_n_0\,
      Q => is_invalid_k(7),
      R => '0'
    );
\tx_is_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \tx_is_q[0]_i_2_n_0\,
      I1 => \txd_pipe_reg_n_0_[6]\,
      I2 => \txd_pipe_reg_n_0_[7]\,
      I3 => \txd_pipe_reg_n_0_[5]\,
      I4 => \txd_pipe_reg_n_0_[4]\,
      I5 => \tx_is_q[0]_i_3_n_0\,
      O => tx_is_q_comb(0)
    );
\tx_is_q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[3]\,
      I1 => \txd_pipe_reg_n_0_[2]\,
      I2 => \txd_pipe_reg_n_0_[1]\,
      I3 => \txd_pipe_reg_n_0_[0]\,
      O => \tx_is_q[0]_i_2_n_0\
    );
\tx_is_q[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => c15_in,
      I1 => \txc_pipe_reg_n_0_[0]\,
      I2 => c9_in,
      I3 => c12_in,
      O => \tx_is_q[0]_i_3_n_0\
    );
\tx_is_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \tx_is_q[1]_i_2_n_0\,
      I1 => \txd_pipe_reg_n_0_[38]\,
      I2 => \txd_pipe_reg_n_0_[39]\,
      I3 => \txd_pipe_reg_n_0_[37]\,
      I4 => \txd_pipe_reg_n_0_[36]\,
      I5 => \tx_is_q[1]_i_3_n_0\,
      O => tx_is_q_comb(1)
    );
\tx_is_q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[35]\,
      I1 => \txd_pipe_reg_n_0_[34]\,
      I2 => \txd_pipe_reg_n_0_[33]\,
      I3 => \txd_pipe_reg_n_0_[32]\,
      O => \tx_is_q[1]_i_2_n_0\
    );
\tx_is_q[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => c(1),
      I1 => c(0),
      I2 => c(3),
      I3 => c(2),
      O => \tx_is_q[1]_i_3_n_0\
    );
\tx_is_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => tx_is_q_comb(0),
      Q => is_q(0),
      R => '0'
    );
\tx_is_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => tx_is_q_comb(1),
      Q => is_q(1),
      R => '0'
    );
\txc_pipe_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txc_pipe_reg_n_0_[0]\,
      Q => \txc_pipe_2_reg_n_0_[0]\,
      R => '0'
    );
\txc_pipe_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c15_in,
      Q => txc_in,
      R => '0'
    );
\txc_pipe_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c12_in,
      Q => \txc_pipe_2_reg_n_0_[2]\,
      R => '0'
    );
\txc_pipe_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c9_in,
      Q => \txc_pipe_2_reg_n_0_[3]\,
      R => '0'
    );
\txc_pipe_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c(0),
      Q => \txc_pipe_2_reg_n_0_[4]\,
      R => '0'
    );
\txc_pipe_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c(1),
      Q => \txc_pipe_2_reg_n_0_[5]\,
      R => '0'
    );
\txc_pipe_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c(2),
      Q => \txc_pipe_2_reg_n_0_[6]\,
      R => '0'
    );
\txc_pipe_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => c(3),
      Q => \txc_pipe_2_reg_n_0_[7]\,
      R => '0'
    );
\txc_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(0),
      Q => \txc_pipe_reg_n_0_[0]\,
      R => '0'
    );
\txc_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(1),
      Q => c15_in,
      R => '0'
    );
\txc_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(2),
      Q => c12_in,
      R => '0'
    );
\txc_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(3),
      Q => c9_in,
      R => '0'
    );
\txc_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(4),
      Q => c(0),
      R => '0'
    );
\txc_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(5),
      Q => c(1),
      R => '0'
    );
\txc_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(6),
      Q => c(2),
      R => '0'
    );
\txc_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txc(7),
      Q => c(3),
      R => '0'
    );
\txd_is_IDLE_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[4]\,
      I1 => \txd_pipe_reg_n_0_[5]\,
      I2 => \txd_pipe_reg_n_0_[6]\,
      I3 => \txd_pipe_reg_n_0_[7]\,
      I4 => \txd_is_IDLE_reg[0]_i_2_n_0\,
      O => \txd_is_IDLE_reg[0]_i_1_n_0\
    );
\txd_is_IDLE_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[1]\,
      I1 => \txd_pipe_reg_n_0_[0]\,
      I2 => \txd_pipe_reg_n_0_[3]\,
      I3 => \txd_pipe_reg_n_0_[2]\,
      O => \txd_is_IDLE_reg[0]_i_2_n_0\
    );
\txd_is_IDLE_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => d(4),
      I1 => d(5),
      I2 => d(6),
      I3 => d(7),
      I4 => \txd_is_IDLE_reg[1]_i_2_n_0\,
      O => \txd_is_IDLE_reg[1]_i_1_n_0\
    );
\txd_is_IDLE_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(3),
      I3 => d(2),
      O => \txd_is_IDLE_reg[1]_i_2_n_0\
    );
\txd_is_IDLE_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[20]\,
      I1 => \txd_pipe_reg_n_0_[21]\,
      I2 => \txd_pipe_reg_n_0_[22]\,
      I3 => \txd_pipe_reg_n_0_[23]\,
      I4 => \txd_is_IDLE_reg[2]_i_2_n_0\,
      O => \txd_is_IDLE_reg[2]_i_1_n_0\
    );
\txd_is_IDLE_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[17]\,
      I1 => \txd_pipe_reg_n_0_[16]\,
      I2 => \txd_pipe_reg_n_0_[19]\,
      I3 => \txd_pipe_reg_n_0_[18]\,
      O => \txd_is_IDLE_reg[2]_i_2_n_0\
    );
\txd_is_IDLE_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[28]\,
      I1 => \txd_pipe_reg_n_0_[29]\,
      I2 => \txd_pipe_reg_n_0_[30]\,
      I3 => \txd_pipe_reg_n_0_[31]\,
      I4 => \txd_is_IDLE_reg[3]_i_2_n_0\,
      O => \txd_is_IDLE_reg[3]_i_1_n_0\
    );
\txd_is_IDLE_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[25]\,
      I1 => \txd_pipe_reg_n_0_[24]\,
      I2 => \txd_pipe_reg_n_0_[27]\,
      I3 => \txd_pipe_reg_n_0_[26]\,
      O => \txd_is_IDLE_reg[3]_i_2_n_0\
    );
\txd_is_IDLE_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[36]\,
      I1 => \txd_pipe_reg_n_0_[37]\,
      I2 => \txd_pipe_reg_n_0_[38]\,
      I3 => \txd_pipe_reg_n_0_[39]\,
      I4 => \txd_is_IDLE_reg[4]_i_2_n_0\,
      O => \txd_is_IDLE_reg[4]_i_1_n_0\
    );
\txd_is_IDLE_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[33]\,
      I1 => \txd_pipe_reg_n_0_[32]\,
      I2 => \txd_pipe_reg_n_0_[35]\,
      I3 => \txd_pipe_reg_n_0_[34]\,
      O => \txd_is_IDLE_reg[4]_i_2_n_0\
    );
\txd_is_IDLE_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[44]\,
      I1 => \txd_pipe_reg_n_0_[45]\,
      I2 => \txd_pipe_reg_n_0_[46]\,
      I3 => \txd_pipe_reg_n_0_[47]\,
      I4 => \txd_is_IDLE_reg[5]_i_2_n_0\,
      O => \txd_is_IDLE_reg[5]_i_1_n_0\
    );
\txd_is_IDLE_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[41]\,
      I1 => \txd_pipe_reg_n_0_[40]\,
      I2 => \txd_pipe_reg_n_0_[43]\,
      I3 => \txd_pipe_reg_n_0_[42]\,
      O => \txd_is_IDLE_reg[5]_i_2_n_0\
    );
\txd_is_IDLE_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[52]\,
      I1 => \txd_pipe_reg_n_0_[53]\,
      I2 => \txd_pipe_reg_n_0_[54]\,
      I3 => \txd_pipe_reg_n_0_[55]\,
      I4 => \txd_is_IDLE_reg[6]_i_2_n_0\,
      O => \txd_is_IDLE_reg[6]_i_1_n_0\
    );
\txd_is_IDLE_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[49]\,
      I1 => \txd_pipe_reg_n_0_[48]\,
      I2 => \txd_pipe_reg_n_0_[51]\,
      I3 => \txd_pipe_reg_n_0_[50]\,
      O => \txd_is_IDLE_reg[6]_i_2_n_0\
    );
\txd_is_IDLE_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[60]\,
      I1 => \txd_pipe_reg_n_0_[61]\,
      I2 => \txd_pipe_reg_n_0_[62]\,
      I3 => \txd_pipe_reg_n_0_[63]\,
      I4 => \txd_is_IDLE_reg[7]_i_2_n_0\,
      O => txd_is_IDLE
    );
\txd_is_IDLE_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \txd_pipe_reg_n_0_[57]\,
      I1 => \txd_pipe_reg_n_0_[56]\,
      I2 => \txd_pipe_reg_n_0_[59]\,
      I3 => \txd_pipe_reg_n_0_[58]\,
      O => \txd_is_IDLE_reg[7]_i_2_n_0\
    );
\txd_is_IDLE_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[0]_i_1_n_0\,
      Q => \txd_is_IDLE_reg_reg_n_0_[0]\,
      R => '0'
    );
\txd_is_IDLE_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[1]_i_1_n_0\,
      Q => is_txd_IDLE,
      R => '0'
    );
\txd_is_IDLE_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[2]_i_1_n_0\,
      Q => \txd_is_IDLE_reg_reg_n_0_[2]\,
      R => '0'
    );
\txd_is_IDLE_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[3]_i_1_n_0\,
      Q => \txd_is_IDLE_reg_reg_n_0_[3]\,
      R => '0'
    );
\txd_is_IDLE_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[4]_i_1_n_0\,
      Q => \txd_is_IDLE_reg_reg_n_0_[4]\,
      R => '0'
    );
\txd_is_IDLE_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[5]_i_1_n_0\,
      Q => \txd_is_IDLE_reg_reg_n_0_[5]\,
      R => '0'
    );
\txd_is_IDLE_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => \txd_is_IDLE_reg[6]_i_1_n_0\,
      Q => \txd_is_IDLE_reg_reg_n_0_[6]\,
      R => '0'
    );
\txd_is_IDLE_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => txd_is_IDLE,
      Q => \txd_is_IDLE_reg_reg_n_0_[7]\,
      R => '0'
    );
\txd_pipe_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[0]\,
      Q => \txd_pipe_2_reg_n_0_[0]\,
      R => '0'
    );
\txd_pipe_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(2),
      Q => txd_in(2),
      R => '0'
    );
\txd_pipe_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(3),
      Q => txd_in(3),
      R => '0'
    );
\txd_pipe_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(4),
      Q => txd_in(4),
      R => '0'
    );
\txd_pipe_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(5),
      Q => txd_in(5),
      R => '0'
    );
\txd_pipe_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(6),
      Q => txd_in(6),
      R => '0'
    );
\txd_pipe_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(7),
      Q => txd_in(7),
      R => '0'
    );
\txd_pipe_2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[16]\,
      Q => \txd_pipe_2_reg_n_0_[16]\,
      R => '0'
    );
\txd_pipe_2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[17]\,
      Q => \txd_pipe_2_reg_n_0_[17]\,
      R => '0'
    );
\txd_pipe_2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[18]\,
      Q => \txd_pipe_2_reg_n_0_[18]\,
      R => '0'
    );
\txd_pipe_2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[19]\,
      Q => \txd_pipe_2_reg_n_0_[19]\,
      R => '0'
    );
\txd_pipe_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[1]\,
      Q => \txd_pipe_2_reg_n_0_[1]\,
      R => '0'
    );
\txd_pipe_2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[20]\,
      Q => \txd_pipe_2_reg_n_0_[20]\,
      R => '0'
    );
\txd_pipe_2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[21]\,
      Q => \txd_pipe_2_reg_n_0_[21]\,
      R => '0'
    );
\txd_pipe_2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[22]\,
      Q => \txd_pipe_2_reg_n_0_[22]\,
      R => '0'
    );
\txd_pipe_2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[23]\,
      Q => \txd_pipe_2_reg_n_0_[23]\,
      R => '0'
    );
\txd_pipe_2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[24]\,
      Q => \txd_pipe_2_reg_n_0_[24]\,
      R => '0'
    );
\txd_pipe_2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[25]\,
      Q => \txd_pipe_2_reg_n_0_[25]\,
      R => '0'
    );
\txd_pipe_2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[26]\,
      Q => \txd_pipe_2_reg_n_0_[26]\,
      R => '0'
    );
\txd_pipe_2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[27]\,
      Q => \txd_pipe_2_reg_n_0_[27]\,
      R => '0'
    );
\txd_pipe_2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[28]\,
      Q => \txd_pipe_2_reg_n_0_[28]\,
      R => '0'
    );
\txd_pipe_2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[29]\,
      Q => \txd_pipe_2_reg_n_0_[29]\,
      R => '0'
    );
\txd_pipe_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[2]\,
      Q => \txd_pipe_2_reg_n_0_[2]\,
      R => '0'
    );
\txd_pipe_2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[30]\,
      Q => \txd_pipe_2_reg_n_0_[30]\,
      R => '0'
    );
\txd_pipe_2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[31]\,
      Q => \txd_pipe_2_reg_n_0_[31]\,
      R => '0'
    );
\txd_pipe_2_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[32]\,
      Q => \txd_pipe_2_reg_n_0_[32]\,
      R => '0'
    );
\txd_pipe_2_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[33]\,
      Q => \txd_pipe_2_reg_n_0_[33]\,
      R => '0'
    );
\txd_pipe_2_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[34]\,
      Q => \txd_pipe_2_reg_n_0_[34]\,
      R => '0'
    );
\txd_pipe_2_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[35]\,
      Q => \txd_pipe_2_reg_n_0_[35]\,
      R => '0'
    );
\txd_pipe_2_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[36]\,
      Q => \txd_pipe_2_reg_n_0_[36]\,
      R => '0'
    );
\txd_pipe_2_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[37]\,
      Q => \txd_pipe_2_reg_n_0_[37]\,
      R => '0'
    );
\txd_pipe_2_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[38]\,
      Q => \txd_pipe_2_reg_n_0_[38]\,
      R => '0'
    );
\txd_pipe_2_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[39]\,
      Q => \txd_pipe_2_reg_n_0_[39]\,
      R => '0'
    );
\txd_pipe_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[3]\,
      Q => \txd_pipe_2_reg_n_0_[3]\,
      R => '0'
    );
\txd_pipe_2_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[40]\,
      Q => \txd_pipe_2_reg_n_0_[40]\,
      R => '0'
    );
\txd_pipe_2_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[41]\,
      Q => \txd_pipe_2_reg_n_0_[41]\,
      R => '0'
    );
\txd_pipe_2_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[42]\,
      Q => \txd_pipe_2_reg_n_0_[42]\,
      R => '0'
    );
\txd_pipe_2_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[43]\,
      Q => \txd_pipe_2_reg_n_0_[43]\,
      R => '0'
    );
\txd_pipe_2_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[44]\,
      Q => \txd_pipe_2_reg_n_0_[44]\,
      R => '0'
    );
\txd_pipe_2_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[45]\,
      Q => \txd_pipe_2_reg_n_0_[45]\,
      R => '0'
    );
\txd_pipe_2_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[46]\,
      Q => \txd_pipe_2_reg_n_0_[46]\,
      R => '0'
    );
\txd_pipe_2_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[47]\,
      Q => \txd_pipe_2_reg_n_0_[47]\,
      R => '0'
    );
\txd_pipe_2_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[48]\,
      Q => \txd_pipe_2_reg_n_0_[48]\,
      R => '0'
    );
\txd_pipe_2_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[49]\,
      Q => \txd_pipe_2_reg_n_0_[49]\,
      R => '0'
    );
\txd_pipe_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[4]\,
      Q => \txd_pipe_2_reg_n_0_[4]\,
      R => '0'
    );
\txd_pipe_2_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[50]\,
      Q => \txd_pipe_2_reg_n_0_[50]\,
      R => '0'
    );
\txd_pipe_2_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[51]\,
      Q => \txd_pipe_2_reg_n_0_[51]\,
      R => '0'
    );
\txd_pipe_2_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[52]\,
      Q => \txd_pipe_2_reg_n_0_[52]\,
      R => '0'
    );
\txd_pipe_2_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[53]\,
      Q => \txd_pipe_2_reg_n_0_[53]\,
      R => '0'
    );
\txd_pipe_2_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[54]\,
      Q => \txd_pipe_2_reg_n_0_[54]\,
      R => '0'
    );
\txd_pipe_2_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[55]\,
      Q => \txd_pipe_2_reg_n_0_[55]\,
      R => '0'
    );
\txd_pipe_2_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[56]\,
      Q => \txd_pipe_2_reg_n_0_[56]\,
      R => '0'
    );
\txd_pipe_2_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[57]\,
      Q => \txd_pipe_2_reg_n_0_[57]\,
      R => '0'
    );
\txd_pipe_2_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[58]\,
      Q => \txd_pipe_2_reg_n_0_[58]\,
      R => '0'
    );
\txd_pipe_2_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[59]\,
      Q => \txd_pipe_2_reg_n_0_[59]\,
      R => '0'
    );
\txd_pipe_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[5]\,
      Q => \txd_pipe_2_reg_n_0_[5]\,
      R => '0'
    );
\txd_pipe_2_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[60]\,
      Q => \txd_pipe_2_reg_n_0_[60]\,
      R => '0'
    );
\txd_pipe_2_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[61]\,
      Q => \txd_pipe_2_reg_n_0_[61]\,
      R => '0'
    );
\txd_pipe_2_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[62]\,
      Q => \txd_pipe_2_reg_n_0_[62]\,
      R => '0'
    );
\txd_pipe_2_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[63]\,
      Q => \txd_pipe_2_reg_n_0_[63]\,
      R => '0'
    );
\txd_pipe_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[6]\,
      Q => \txd_pipe_2_reg_n_0_[6]\,
      R => '0'
    );
\txd_pipe_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => \txd_pipe_reg_n_0_[7]\,
      Q => \txd_pipe_2_reg_n_0_[7]\,
      R => '0'
    );
\txd_pipe_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(0),
      Q => txd_in(0),
      R => '0'
    );
\txd_pipe_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => d(1),
      Q => txd_in(1),
      R => '0'
    );
\txd_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(0),
      Q => \txd_pipe_reg_n_0_[0]\,
      R => '0'
    );
\txd_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(10),
      Q => d(2),
      R => '0'
    );
\txd_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(11),
      Q => d(3),
      R => '0'
    );
\txd_pipe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(12),
      Q => d(4),
      R => '0'
    );
\txd_pipe_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(13),
      Q => d(5),
      R => '0'
    );
\txd_pipe_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(14),
      Q => d(6),
      R => '0'
    );
\txd_pipe_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(15),
      Q => d(7),
      R => '0'
    );
\txd_pipe_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(16),
      Q => \txd_pipe_reg_n_0_[16]\,
      R => '0'
    );
\txd_pipe_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(17),
      Q => \txd_pipe_reg_n_0_[17]\,
      R => '0'
    );
\txd_pipe_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(18),
      Q => \txd_pipe_reg_n_0_[18]\,
      R => '0'
    );
\txd_pipe_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(19),
      Q => \txd_pipe_reg_n_0_[19]\,
      R => '0'
    );
\txd_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(1),
      Q => \txd_pipe_reg_n_0_[1]\,
      R => '0'
    );
\txd_pipe_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(20),
      Q => \txd_pipe_reg_n_0_[20]\,
      R => '0'
    );
\txd_pipe_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(21),
      Q => \txd_pipe_reg_n_0_[21]\,
      R => '0'
    );
\txd_pipe_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(22),
      Q => \txd_pipe_reg_n_0_[22]\,
      R => '0'
    );
\txd_pipe_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(23),
      Q => \txd_pipe_reg_n_0_[23]\,
      R => '0'
    );
\txd_pipe_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(24),
      Q => \txd_pipe_reg_n_0_[24]\,
      R => '0'
    );
\txd_pipe_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(25),
      Q => \txd_pipe_reg_n_0_[25]\,
      R => '0'
    );
\txd_pipe_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(26),
      Q => \txd_pipe_reg_n_0_[26]\,
      R => '0'
    );
\txd_pipe_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(27),
      Q => \txd_pipe_reg_n_0_[27]\,
      R => '0'
    );
\txd_pipe_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(28),
      Q => \txd_pipe_reg_n_0_[28]\,
      R => '0'
    );
\txd_pipe_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(29),
      Q => \txd_pipe_reg_n_0_[29]\,
      R => '0'
    );
\txd_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(2),
      Q => \txd_pipe_reg_n_0_[2]\,
      R => '0'
    );
\txd_pipe_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(30),
      Q => \txd_pipe_reg_n_0_[30]\,
      R => '0'
    );
\txd_pipe_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(31),
      Q => \txd_pipe_reg_n_0_[31]\,
      R => '0'
    );
\txd_pipe_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(32),
      Q => \txd_pipe_reg_n_0_[32]\,
      R => '0'
    );
\txd_pipe_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(33),
      Q => \txd_pipe_reg_n_0_[33]\,
      R => '0'
    );
\txd_pipe_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(34),
      Q => \txd_pipe_reg_n_0_[34]\,
      R => '0'
    );
\txd_pipe_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(35),
      Q => \txd_pipe_reg_n_0_[35]\,
      R => '0'
    );
\txd_pipe_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(36),
      Q => \txd_pipe_reg_n_0_[36]\,
      R => '0'
    );
\txd_pipe_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(37),
      Q => \txd_pipe_reg_n_0_[37]\,
      R => '0'
    );
\txd_pipe_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(38),
      Q => \txd_pipe_reg_n_0_[38]\,
      R => '0'
    );
\txd_pipe_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(39),
      Q => \txd_pipe_reg_n_0_[39]\,
      R => '0'
    );
\txd_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(3),
      Q => \txd_pipe_reg_n_0_[3]\,
      R => '0'
    );
\txd_pipe_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(40),
      Q => \txd_pipe_reg_n_0_[40]\,
      R => '0'
    );
\txd_pipe_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(41),
      Q => \txd_pipe_reg_n_0_[41]\,
      R => '0'
    );
\txd_pipe_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(42),
      Q => \txd_pipe_reg_n_0_[42]\,
      R => '0'
    );
\txd_pipe_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(43),
      Q => \txd_pipe_reg_n_0_[43]\,
      R => '0'
    );
\txd_pipe_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(44),
      Q => \txd_pipe_reg_n_0_[44]\,
      R => '0'
    );
\txd_pipe_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(45),
      Q => \txd_pipe_reg_n_0_[45]\,
      R => '0'
    );
\txd_pipe_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(46),
      Q => \txd_pipe_reg_n_0_[46]\,
      R => '0'
    );
\txd_pipe_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(47),
      Q => \txd_pipe_reg_n_0_[47]\,
      R => '0'
    );
\txd_pipe_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(48),
      Q => \txd_pipe_reg_n_0_[48]\,
      R => '0'
    );
\txd_pipe_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(49),
      Q => \txd_pipe_reg_n_0_[49]\,
      R => '0'
    );
\txd_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(4),
      Q => \txd_pipe_reg_n_0_[4]\,
      R => '0'
    );
\txd_pipe_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(50),
      Q => \txd_pipe_reg_n_0_[50]\,
      R => '0'
    );
\txd_pipe_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(51),
      Q => \txd_pipe_reg_n_0_[51]\,
      R => '0'
    );
\txd_pipe_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(52),
      Q => \txd_pipe_reg_n_0_[52]\,
      R => '0'
    );
\txd_pipe_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(53),
      Q => \txd_pipe_reg_n_0_[53]\,
      R => '0'
    );
\txd_pipe_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(54),
      Q => \txd_pipe_reg_n_0_[54]\,
      R => '0'
    );
\txd_pipe_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(55),
      Q => \txd_pipe_reg_n_0_[55]\,
      R => '0'
    );
\txd_pipe_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(56),
      Q => \txd_pipe_reg_n_0_[56]\,
      R => '0'
    );
\txd_pipe_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(57),
      Q => \txd_pipe_reg_n_0_[57]\,
      R => '0'
    );
\txd_pipe_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(58),
      Q => \txd_pipe_reg_n_0_[58]\,
      R => '0'
    );
\txd_pipe_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(59),
      Q => \txd_pipe_reg_n_0_[59]\,
      R => '0'
    );
\txd_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(5),
      Q => \txd_pipe_reg_n_0_[5]\,
      R => '0'
    );
\txd_pipe_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(60),
      Q => \txd_pipe_reg_n_0_[60]\,
      R => '0'
    );
\txd_pipe_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(61),
      Q => \txd_pipe_reg_n_0_[61]\,
      R => '0'
    );
\txd_pipe_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(62),
      Q => \txd_pipe_reg_n_0_[62]\,
      R => '0'
    );
\txd_pipe_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(63),
      Q => \txd_pipe_reg_n_0_[63]\,
      R => '0'
    );
\txd_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(6),
      Q => \txd_pipe_reg_n_0_[6]\,
      R => '0'
    );
\txd_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(7),
      Q => \txd_pipe_reg_n_0_[7]\,
      R => '0'
    );
\txd_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(8),
      Q => d(0),
      R => '0'
    );
\txd_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => xgmii_txd(9),
      Q => d(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_gen is
  port (
    in0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_txdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    mgt_txcharisk : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_enchansync : out STD_LOGIC;
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_enable_align : out STD_LOGIC_VECTOR ( 3 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mgt_rxdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    usrclk : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    mgt_rxcharisk : in STD_LOGIC_VECTOR ( 7 downto 0 );
    signal_detect : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_rxlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_tx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_gen : entity is "xaui_gen";
end xaui_0_xaui_gen;

architecture STRUCTURE of xaui_0_xaui_gen is
  signal align_status_int : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of align_status_int : signal is "true";
  signal aligned_sticky_i_1_n_0 : STD_LOGIC;
  signal clear_aligned : STD_LOGIC;
  signal clear_aligned_edge : STD_LOGIC;
  signal clear_aligned_edge_i_1_n_0 : STD_LOGIC;
  signal clear_local_fault : STD_LOGIC;
  signal clear_local_fault_edge : STD_LOGIC;
  signal clear_local_fault_edge_i_1_n_0 : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal last_value : STD_LOGIC;
  signal \last_value_reg__0_n_0\ : STD_LOGIC;
  signal rx_local_fault_i_1_n_0 : STD_LOGIC;
  signal rx_local_fault_i_2_n_0 : STD_LOGIC;
  signal \signal_detect_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \signal_detect_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \signal_detect_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \signal_detect_int_reg_n_0_[3]\ : STD_LOGIC;
  signal sync : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of sync : signal is "true";
  signal tx_local_fault_i_1_n_0 : STD_LOGIC;
  signal usrclk_reset : STD_LOGIC;
  signal usrclk_reset_i_1_n_0 : STD_LOGIC;
  signal usrclk_reset_pipe : STD_LOGIC;
begin
  in0(7) <= \^in0\(7);
  in0(6) <= align_status_int;
  in0(5 downto 2) <= sync(3 downto 0);
  in0(1 downto 0) <= \^in0\(1 downto 0);
\G_NO_MDIO.clear_aligned_reg\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => configuration_vector(1),
      Q => clear_aligned,
      R => '0'
    );
\G_NO_MDIO.clear_local_fault_reg\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => configuration_vector(0),
      Q => clear_local_fault,
      R => '0'
    );
aligned_sticky_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^in0\(7),
      I1 => clear_aligned_edge,
      I2 => align_status_int,
      I3 => usrclk_reset,
      O => aligned_sticky_i_1_n_0
    );
aligned_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => aligned_sticky_i_1_n_0,
      Q => \^in0\(7),
      R => '0'
    );
clear_aligned_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clear_aligned,
      I1 => \last_value_reg__0_n_0\,
      O => clear_aligned_edge_i_1_n_0
    );
clear_aligned_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => clear_aligned_edge_i_1_n_0,
      Q => clear_aligned_edge,
      R => usrclk_reset
    );
clear_local_fault_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clear_local_fault,
      I1 => last_value,
      O => clear_local_fault_edge_i_1_n_0
    );
clear_local_fault_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => clear_local_fault_edge_i_1_n_0,
      Q => clear_local_fault_edge,
      R => usrclk_reset
    );
last_value_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => clear_local_fault,
      Q => last_value,
      R => usrclk_reset
    );
\last_value_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => clear_aligned,
      Q => \last_value_reg__0_n_0\,
      R => usrclk_reset
    );
receiver: entity work.xaui_0_rx
     port map (
      Q(3) => \signal_detect_int_reg_n_0_[3]\,
      Q(2) => \signal_detect_int_reg_n_0_[2]\,
      Q(1) => \signal_detect_int_reg_n_0_[1]\,
      Q(0) => \signal_detect_int_reg_n_0_[0]\,
      align_status_int => align_status_int,
      in0(3 downto 0) => sync(3 downto 0),
      mgt_codecomma(7 downto 0) => mgt_codecomma(7 downto 0),
      mgt_codevalid(7 downto 0) => mgt_codevalid(7 downto 0),
      mgt_enable_align(3 downto 0) => mgt_enable_align(3 downto 0),
      mgt_enchansync => mgt_enchansync,
      mgt_rx_reset(3 downto 0) => mgt_rx_reset(3 downto 0),
      mgt_rxcharisk(7 downto 0) => mgt_rxcharisk(7 downto 0),
      mgt_rxdata(63 downto 0) => mgt_rxdata(63 downto 0),
      mgt_rxlock(3 downto 0) => mgt_rxlock(3 downto 0),
      usrclk => usrclk,
      usrclk_reset => usrclk_reset,
      xgmii_rxc(7 downto 0) => xgmii_rxc(7 downto 0),
      xgmii_rxd(63 downto 0) => xgmii_rxd(63 downto 0)
    );
rx_local_fault_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => clear_local_fault_edge,
      I1 => rx_local_fault_i_2_n_0,
      I2 => \^in0\(1),
      O => rx_local_fault_i_1_n_0
    );
rx_local_fault_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => align_status_int,
      I1 => mgt_rx_reset(0),
      I2 => mgt_rx_reset(2),
      I3 => mgt_rx_reset(3),
      I4 => mgt_rx_reset(1),
      O => rx_local_fault_i_2_n_0
    );
rx_local_fault_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => rx_local_fault_i_1_n_0,
      Q => \^in0\(1),
      R => usrclk_reset
    );
\signal_detect_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => signal_detect(0),
      Q => \signal_detect_int_reg_n_0_[0]\,
      R => '0'
    );
\signal_detect_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => signal_detect(1),
      Q => \signal_detect_int_reg_n_0_[1]\,
      R => '0'
    );
\signal_detect_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => signal_detect(2),
      Q => \signal_detect_int_reg_n_0_[2]\,
      R => '0'
    );
\signal_detect_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => signal_detect(3),
      Q => \signal_detect_int_reg_n_0_[3]\,
      R => '0'
    );
transmitter: entity work.xaui_0_tx
     port map (
      configuration_vector(2 downto 0) => configuration_vector(4 downto 2),
      mgt_txcharisk(7 downto 0) => mgt_txcharisk(7 downto 0),
      mgt_txdata(63 downto 0) => mgt_txdata(63 downto 0),
      usrclk => usrclk,
      usrclk_reset => usrclk_reset,
      xgmii_txc(7 downto 0) => xgmii_txc(7 downto 0),
      xgmii_txd(63 downto 0) => xgmii_txd(63 downto 0)
    );
tx_local_fault_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFC"
    )
        port map (
      I0 => clear_local_fault_edge,
      I1 => mgt_tx_reset(3),
      I2 => mgt_tx_reset(1),
      I3 => mgt_tx_reset(2),
      I4 => mgt_tx_reset(0),
      I5 => \^in0\(0),
      O => tx_local_fault_i_1_n_0
    );
tx_local_fault_reg: unisim.vcomponents.FDRE
     port map (
      C => usrclk,
      CE => '1',
      D => tx_local_fault_i_1_n_0,
      Q => \^in0\(0),
      R => usrclk_reset
    );
usrclk_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => usrclk_reset_pipe,
      I1 => reset,
      O => usrclk_reset_i_1_n_0
    );
usrclk_reset_pipe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => reset,
      Q => usrclk_reset_pipe,
      R => '0'
    );
usrclk_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => usrclk,
      CE => '1',
      D => usrclk_reset_i_1_n_0,
      Q => usrclk_reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_v12_2_5_top is
  port (
    reset : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usrclk : in STD_LOGIC;
    mgt_txdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    mgt_txcharisk : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_rxdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    mgt_rxcharisk : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_codevalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_codecomma : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mgt_enable_align : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_enchansync : out STD_LOGIC;
    mgt_rxlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_loopback : out STD_LOGIC;
    mgt_powerdown : out STD_LOGIC;
    mgt_tx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 );
    soft_reset : out STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 3 downto 0 );
    align_status : out STD_LOGIC;
    sync_status : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mdc : in STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    type_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    prtad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 6 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_v12_2_5_top : entity is "xaui_v12_2_5_top";
  attribute c_family : string;
  attribute c_family of xaui_0_xaui_v12_2_5_top : entity is "kintex7";
  attribute c_has_mdio : string;
  attribute c_has_mdio of xaui_0_xaui_v12_2_5_top : entity is "FALSE";
  attribute c_is_dxaui : string;
  attribute c_is_dxaui of xaui_0_xaui_v12_2_5_top : entity is "FALSE";
end xaui_0_xaui_v12_2_5_top;

architecture STRUCTURE of xaui_0_xaui_v12_2_5_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^configuration_vector\ : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal mgt_loopback_keep : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of mgt_loopback_keep : signal is "true";
  signal mgt_powerdown_keep : STD_LOGIC;
  attribute RTL_KEEP of mgt_powerdown_keep : signal is "true";
  signal status_vector_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of status_vector_int : signal is "true";
begin
  \^configuration_vector\(6 downto 2) <= configuration_vector(6 downto 2);
  align_status <= status_vector_int(6);
  mdio_out <= \<const0>\;
  mdio_tri <= \<const0>\;
  mgt_loopback <= mgt_loopback_keep;
  mgt_loopback_keep <= configuration_vector(0);
  mgt_powerdown <= mgt_powerdown_keep;
  mgt_powerdown_keep <= configuration_vector(1);
  soft_reset <= \<const0>\;
  sync_status(3 downto 0) <= status_vector_int(5 downto 2);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(7),
      O => status_vector(7)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(6),
      O => status_vector(6)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(5),
      O => status_vector(5)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(4),
      O => status_vector(4)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(3),
      O => status_vector(3)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(2),
      O => status_vector(2)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(1),
      O => status_vector(1)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => status_vector_int(0),
      O => status_vector(0)
    );
xaui_inst: entity work.xaui_0_xaui_gen
     port map (
      configuration_vector(4 downto 0) => \^configuration_vector\(6 downto 2),
      in0(7 downto 0) => status_vector_int(7 downto 0),
      mgt_codecomma(7 downto 0) => mgt_codecomma(7 downto 0),
      mgt_codevalid(7 downto 0) => mgt_codevalid(7 downto 0),
      mgt_enable_align(3 downto 0) => mgt_enable_align(3 downto 0),
      mgt_enchansync => mgt_enchansync,
      mgt_rx_reset(3 downto 0) => mgt_rx_reset(3 downto 0),
      mgt_rxcharisk(7 downto 0) => mgt_rxcharisk(7 downto 0),
      mgt_rxdata(63 downto 0) => mgt_rxdata(63 downto 0),
      mgt_rxlock(3 downto 0) => mgt_rxlock(3 downto 0),
      mgt_tx_reset(3 downto 0) => mgt_tx_reset(3 downto 0),
      mgt_txcharisk(7 downto 0) => mgt_txcharisk(7 downto 0),
      mgt_txdata(63 downto 0) => mgt_txdata(63 downto 0),
      reset => reset,
      signal_detect(3 downto 0) => signal_detect(3 downto 0),
      usrclk => usrclk,
      xgmii_rxc(7 downto 0) => xgmii_rxc(7 downto 0),
      xgmii_rxd(63 downto 0) => xgmii_rxd(63 downto 0),
      xgmii_txc(7 downto 0) => xgmii_txc(7 downto 0),
      xgmii_txd(63 downto 0) => xgmii_txd(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0_xaui_0_block is
  port (
    dclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk156_out : out STD_LOGIC;
    clk156_lock : out STD_LOGIC;
    refclk : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    xaui_tx_l0_p : out STD_LOGIC;
    xaui_tx_l0_n : out STD_LOGIC;
    xaui_tx_l1_p : out STD_LOGIC;
    xaui_tx_l1_n : out STD_LOGIC;
    xaui_tx_l2_p : out STD_LOGIC;
    xaui_tx_l2_n : out STD_LOGIC;
    xaui_tx_l3_p : out STD_LOGIC;
    xaui_tx_l3_n : out STD_LOGIC;
    xaui_rx_l0_p : in STD_LOGIC;
    xaui_rx_l0_n : in STD_LOGIC;
    xaui_rx_l1_p : in STD_LOGIC;
    xaui_rx_l1_n : in STD_LOGIC;
    xaui_rx_l2_p : in STD_LOGIC;
    xaui_rx_l2_n : in STD_LOGIC;
    xaui_rx_l3_p : in STD_LOGIC;
    xaui_rx_l3_n : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 5 downto 0 );
    gt0_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpen : in STD_LOGIC;
    gt0_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drprdy : out STD_LOGIC;
    gt0_drpwe : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txphaligndone_out : out STD_LOGIC;
    gt0_txphinitdone_out : out STD_LOGIC;
    gt0_txdlysresetdone_out : out STD_LOGIC;
    gt_qplllock_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txinhibit_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxcommadet_out : out STD_LOGIC;
    gt1_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt1_drpen : in STD_LOGIC;
    gt1_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt1_drprdy : out STD_LOGIC;
    gt1_drpwe : in STD_LOGIC;
    gt1_txpmareset_in : in STD_LOGIC;
    gt1_txpcsreset_in : in STD_LOGIC;
    gt1_txresetdone_out : out STD_LOGIC;
    gt1_rxpmareset_in : in STD_LOGIC;
    gt1_rxpcsreset_in : in STD_LOGIC;
    gt1_rxresetdone_out : out STD_LOGIC;
    gt1_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txphaligndone_out : out STD_LOGIC;
    gt1_txphinitdone_out : out STD_LOGIC;
    gt1_txdlysresetdone_out : out STD_LOGIC;
    gt1_eyescantrigger_in : in STD_LOGIC;
    gt1_eyescanreset_in : in STD_LOGIC;
    gt1_eyescandataerror_out : out STD_LOGIC;
    gt1_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_rxpolarity_in : in STD_LOGIC;
    gt1_txpolarity_in : in STD_LOGIC;
    gt1_rxlpmen_in : in STD_LOGIC;
    gt1_rxdfelpmreset_in : in STD_LOGIC;
    gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt1_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt1_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt1_txinhibit_in : in STD_LOGIC;
    gt1_rxprbscntreset_in : in STD_LOGIC;
    gt1_rxprbserr_out : out STD_LOGIC;
    gt1_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt1_txprbsforceerr_in : in STD_LOGIC;
    gt1_rxcdrhold_in : in STD_LOGIC;
    gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt1_rxdisperr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxnotintable_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt1_rxcommadet_out : out STD_LOGIC;
    gt2_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt2_drpen : in STD_LOGIC;
    gt2_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt2_drprdy : out STD_LOGIC;
    gt2_drpwe : in STD_LOGIC;
    gt2_txpmareset_in : in STD_LOGIC;
    gt2_txpcsreset_in : in STD_LOGIC;
    gt2_txresetdone_out : out STD_LOGIC;
    gt2_rxpmareset_in : in STD_LOGIC;
    gt2_rxpcsreset_in : in STD_LOGIC;
    gt2_rxresetdone_out : out STD_LOGIC;
    gt2_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txphaligndone_out : out STD_LOGIC;
    gt2_txphinitdone_out : out STD_LOGIC;
    gt2_txdlysresetdone_out : out STD_LOGIC;
    gt2_eyescantrigger_in : in STD_LOGIC;
    gt2_eyescanreset_in : in STD_LOGIC;
    gt2_eyescandataerror_out : out STD_LOGIC;
    gt2_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_rxpolarity_in : in STD_LOGIC;
    gt2_txpolarity_in : in STD_LOGIC;
    gt2_rxlpmen_in : in STD_LOGIC;
    gt2_rxdfelpmreset_in : in STD_LOGIC;
    gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt2_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt2_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt2_txinhibit_in : in STD_LOGIC;
    gt2_rxprbscntreset_in : in STD_LOGIC;
    gt2_rxprbserr_out : out STD_LOGIC;
    gt2_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt2_txprbsforceerr_in : in STD_LOGIC;
    gt2_rxcdrhold_in : in STD_LOGIC;
    gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt2_rxdisperr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxnotintable_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt2_rxcommadet_out : out STD_LOGIC;
    gt3_drpaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt3_drpen : in STD_LOGIC;
    gt3_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt3_drprdy : out STD_LOGIC;
    gt3_drpwe : in STD_LOGIC;
    gt3_txpmareset_in : in STD_LOGIC;
    gt3_txpcsreset_in : in STD_LOGIC;
    gt3_txresetdone_out : out STD_LOGIC;
    gt3_rxpmareset_in : in STD_LOGIC;
    gt3_rxpcsreset_in : in STD_LOGIC;
    gt3_rxresetdone_out : out STD_LOGIC;
    gt3_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txphaligndone_out : out STD_LOGIC;
    gt3_txphinitdone_out : out STD_LOGIC;
    gt3_txdlysresetdone_out : out STD_LOGIC;
    gt3_eyescantrigger_in : in STD_LOGIC;
    gt3_eyescanreset_in : in STD_LOGIC;
    gt3_eyescandataerror_out : out STD_LOGIC;
    gt3_rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_rxpolarity_in : in STD_LOGIC;
    gt3_txpolarity_in : in STD_LOGIC;
    gt3_rxlpmen_in : in STD_LOGIC;
    gt3_rxdfelpmreset_in : in STD_LOGIC;
    gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt3_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt3_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt3_txinhibit_in : in STD_LOGIC;
    gt3_rxprbscntreset_in : in STD_LOGIC;
    gt3_rxprbserr_out : out STD_LOGIC;
    gt3_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt3_txprbsforceerr_in : in STD_LOGIC;
    gt3_rxcdrhold_in : in STD_LOGIC;
    gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt3_rxdisperr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxnotintable_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt3_rxcommadet_out : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 6 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xaui_0_xaui_0_block : entity is "xaui_0_block";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xaui_0_xaui_0_block : entity is "yes";
end xaui_0_xaui_0_block;

architecture STRUCTURE of xaui_0_xaui_0_block is
  signal bufStatus : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^clk156_lock\ : STD_LOGIC;
  signal \^clk156_out\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal \^debug\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal done : STD_LOGIC;
  signal gt0_qpllreset_in : STD_LOGIC;
  signal \^gt0_rxbufstatus_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gt0_rxchariscomma_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxcharisk_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxdata_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^gt0_rxdisperr_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gt0_rxnotintable_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxpmareset : STD_LOGIC;
  signal \^gt0_txdlysresetdone_out\ : STD_LOGIC;
  signal gt0_txoutclk_i : STD_LOGIC;
  signal \^gt0_txphaligndone_out\ : STD_LOGIC;
  signal \^gt0_txphinitdone_out\ : STD_LOGIC;
  signal \^gt0_txresetdone_out\ : STD_LOGIC;
  signal \^gt1_rxbufstatus_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gt1_rxchariscomma_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt1_rxcharisk_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt1_rxdata_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^gt1_rxdisperr_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt1_rxmcommaalignen_in : STD_LOGIC;
  signal \^gt1_rxnotintable_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt1_rxpmareset : STD_LOGIC;
  signal gt1_txcharisk_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt1_txdata_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gt1_txdlysreset_in : STD_LOGIC;
  signal \^gt1_txdlysresetdone_out\ : STD_LOGIC;
  signal gt1_txphalign_in : STD_LOGIC;
  signal \^gt1_txphaligndone_out\ : STD_LOGIC;
  signal gt1_txphinit_in : STD_LOGIC;
  signal \^gt1_txphinitdone_out\ : STD_LOGIC;
  signal \^gt1_txresetdone_out\ : STD_LOGIC;
  signal \^gt2_rxbufstatus_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gt2_rxchariscomma_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt2_rxcharisk_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt2_rxdata_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^gt2_rxdisperr_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt2_rxmcommaalignen_in : STD_LOGIC;
  signal \^gt2_rxnotintable_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt2_rxpmareset : STD_LOGIC;
  signal gt2_txcharisk_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt2_txdata_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gt2_txdlysreset_in : STD_LOGIC;
  signal \^gt2_txdlysresetdone_out\ : STD_LOGIC;
  signal gt2_txphalign_in : STD_LOGIC;
  signal \^gt2_txphaligndone_out\ : STD_LOGIC;
  signal gt2_txphinit_in : STD_LOGIC;
  signal \^gt2_txphinitdone_out\ : STD_LOGIC;
  signal \^gt2_txresetdone_out\ : STD_LOGIC;
  signal \^gt3_rxbufstatus_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gt3_rxchariscomma_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt3_rxcharisk_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt3_rxdata_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^gt3_rxdisperr_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt3_rxmcommaalignen_in : STD_LOGIC;
  signal \^gt3_rxnotintable_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt3_rxpmareset : STD_LOGIC;
  signal gt3_txcharisk_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt3_txdata_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gt3_txdlysreset_in : STD_LOGIC;
  signal \^gt3_txdlysresetdone_out\ : STD_LOGIC;
  signal gt3_txphalign_in : STD_LOGIC;
  signal \^gt3_txphaligndone_out\ : STD_LOGIC;
  signal gt3_txphinit_in : STD_LOGIC;
  signal \^gt3_txphinitdone_out\ : STD_LOGIC;
  signal \^gt3_txresetdone_out\ : STD_LOGIC;
  signal \^gt_qplllock_out\ : STD_LOGIC;
  signal mgt_codecomma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mgt_codevalid : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mgt_rx_reset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mgt_rxcharisk_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \mgt_rxcharisk_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[32]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[33]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[34]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[35]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[36]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[37]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[38]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[39]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[40]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[41]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[42]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[43]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[44]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[45]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[46]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[47]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[48]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[49]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[50]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[51]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[52]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[53]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[54]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[55]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[56]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[57]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[58]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[59]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[60]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[61]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[62]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[63]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \mgt_rxdata_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal mgt_rxdisperr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mgt_rxnotintable_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset156 : STD_LOGIC;
  signal reset_count_done_sync_i_n_2 : STD_LOGIC;
  signal rxprbs_in_use : STD_LOGIC;
  signal rxprbs_in_use0 : STD_LOGIC;
  signal rxprbs_in_use_i_2_n_0 : STD_LOGIC;
  signal rxprbs_in_use_i_3_n_0 : STD_LOGIC;
  signal txsync_i_n_1 : STD_LOGIC;
  signal txsync_i_n_11 : STD_LOGIC;
  signal txsync_i_n_2 : STD_LOGIC;
  signal txsync_i_n_6 : STD_LOGIC;
  signal txsync_i_n_7 : STD_LOGIC;
  signal uclk_cbm_rx_reset : STD_LOGIC;
  signal uclk_chbond_counter : STD_LOGIC;
  signal \uclk_chbond_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \uclk_chbond_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \uclk_chbond_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal uclk_loopback_int : STD_LOGIC_VECTOR ( 1 to 1 );
  signal uclk_loopback_reset : STD_LOGIC;
  signal uclk_loopback_reset_i_1_n_0 : STD_LOGIC;
  signal uclk_mgt_enchansync : STD_LOGIC;
  signal uclk_mgt_enchansync_reg : STD_LOGIC;
  signal uclk_mgt_loopback : STD_LOGIC;
  signal uclk_mgt_powerdown : STD_LOGIC;
  signal uclk_mgt_powerdown_falling : STD_LOGIC;
  signal uclk_mgt_powerdown_falling0 : STD_LOGIC;
  signal uclk_mgt_powerdown_r : STD_LOGIC;
  signal uclk_mgt_rx_reset : STD_LOGIC;
  signal uclk_mgt_rx_reset0 : STD_LOGIC;
  signal uclk_mgt_rx_reset5 : STD_LOGIC;
  signal uclk_mgt_rxbuf_reset0 : STD_LOGIC;
  signal \uclk_mgt_rxbuf_reset[0]_i_2_n_0\ : STD_LOGIC;
  signal \uclk_mgt_rxbuf_reset[0]_i_3_n_0\ : STD_LOGIC;
  signal \uclk_mgt_rxbuf_reset_reg_n_0_[0]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \uclk_mgt_rxbufstatus_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal uclk_mgt_tx_reset : STD_LOGIC;
  signal uclk_mgt_tx_reset0 : STD_LOGIC;
  signal uclk_mgt_txresetdone_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal uclk_signal_detect : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \uclk_sync_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \uclk_sync_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \uclk_sync_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \uclk_sync_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal uclk_txsync_start_phase_align_reg_n_0 : STD_LOGIC;
  signal xaui_0_core_n_120 : STD_LOGIC;
  signal xaui_0_core_n_121 : STD_LOGIC;
  signal xaui_0_core_n_122 : STD_LOGIC;
  signal xaui_0_core_n_123 : STD_LOGIC;
  signal xaui_0_core_n_124 : STD_LOGIC;
  signal xaui_0_core_n_125 : STD_LOGIC;
  signal xaui_0_core_n_126 : STD_LOGIC;
  signal xaui_0_core_n_127 : STD_LOGIC;
  signal xaui_0_core_n_128 : STD_LOGIC;
  signal xaui_0_core_n_129 : STD_LOGIC;
  signal xaui_0_core_n_130 : STD_LOGIC;
  signal xaui_0_core_n_131 : STD_LOGIC;
  signal xaui_0_core_n_132 : STD_LOGIC;
  signal xaui_0_core_n_133 : STD_LOGIC;
  signal xaui_0_core_n_134 : STD_LOGIC;
  signal xaui_0_core_n_135 : STD_LOGIC;
  signal xaui_0_core_n_142 : STD_LOGIC;
  signal xaui_0_core_n_143 : STD_LOGIC;
  signal xaui_0_core_n_147 : STD_LOGIC;
  signal \NLW_uclk_chbond_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uclk_sync_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xaui_0_core_mdio_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xaui_0_core_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_xaui_0_core_soft_reset_UNCONNECTED : STD_LOGIC;
  attribute C_FAMILY : string;
  attribute C_FAMILY of xaui_0_core : label is "kintex7";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of xaui_0_core : label is "FALSE";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xaui_0_core : label is "true";
  attribute c_is_dxaui : string;
  attribute c_is_dxaui of xaui_0_core : label is "FALSE";
begin
  clk156_lock <= \^clk156_lock\;
  clk156_out <= \^clk156_out\;
  debug(5 downto 0) <= \^debug\(5 downto 0);
  gt0_rxbufstatus_out(2 downto 0) <= \^gt0_rxbufstatus_out\(2 downto 0);
  gt0_rxdisperr_out(1 downto 0) <= \^gt0_rxdisperr_out\(1 downto 0);
  gt0_rxnotintable_out(1 downto 0) <= \^gt0_rxnotintable_out\(1 downto 0);
  gt0_txdlysresetdone_out <= \^gt0_txdlysresetdone_out\;
  gt0_txphaligndone_out <= \^gt0_txphaligndone_out\;
  gt0_txphinitdone_out <= \^gt0_txphinitdone_out\;
  gt0_txresetdone_out <= \^gt0_txresetdone_out\;
  gt1_rxbufstatus_out(2 downto 0) <= \^gt1_rxbufstatus_out\(2 downto 0);
  gt1_rxdisperr_out(1 downto 0) <= \^gt1_rxdisperr_out\(1 downto 0);
  gt1_rxnotintable_out(1 downto 0) <= \^gt1_rxnotintable_out\(1 downto 0);
  gt1_txdlysresetdone_out <= \^gt1_txdlysresetdone_out\;
  gt1_txphaligndone_out <= \^gt1_txphaligndone_out\;
  gt1_txphinitdone_out <= \^gt1_txphinitdone_out\;
  gt1_txresetdone_out <= \^gt1_txresetdone_out\;
  gt2_rxbufstatus_out(2 downto 0) <= \^gt2_rxbufstatus_out\(2 downto 0);
  gt2_rxdisperr_out(1 downto 0) <= \^gt2_rxdisperr_out\(1 downto 0);
  gt2_rxnotintable_out(1 downto 0) <= \^gt2_rxnotintable_out\(1 downto 0);
  gt2_txdlysresetdone_out <= \^gt2_txdlysresetdone_out\;
  gt2_txphaligndone_out <= \^gt2_txphaligndone_out\;
  gt2_txphinitdone_out <= \^gt2_txphinitdone_out\;
  gt2_txresetdone_out <= \^gt2_txresetdone_out\;
  gt3_rxbufstatus_out(2 downto 0) <= \^gt3_rxbufstatus_out\(2 downto 0);
  gt3_rxdisperr_out(1 downto 0) <= \^gt3_rxdisperr_out\(1 downto 0);
  gt3_rxnotintable_out(1 downto 0) <= \^gt3_rxnotintable_out\(1 downto 0);
  gt3_txdlysresetdone_out <= \^gt3_txdlysresetdone_out\;
  gt3_txphaligndone_out <= \^gt3_txphaligndone_out\;
  gt3_txphinitdone_out <= \^gt3_txphinitdone_out\;
  gt3_txresetdone_out <= \^gt3_txresetdone_out\;
  gt_qplllock_out <= \^gt_qplllock_out\;
\core_mgt_rx_reset_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => p_0_out(0),
      Q => mgt_rx_reset(0),
      R => '0'
    );
\core_mgt_rx_reset_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => p_0_out(1),
      Q => mgt_rx_reset(1),
      R => '0'
    );
\core_mgt_rx_reset_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => p_0_out(2),
      Q => mgt_rx_reset(2),
      R => '0'
    );
\core_mgt_rx_reset_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => p_0_out(3),
      Q => mgt_rx_reset(3),
      R => '0'
    );
gt_wrapper_i: entity work.xaui_0_xaui_0_gt_wrapper
     port map (
      CLK => \^clk156_out\,
      D(3) => \^gt0_txresetdone_out\,
      D(2) => \^gt1_txresetdone_out\,
      D(1) => \^gt2_txresetdone_out\,
      D(0) => \^gt3_txresetdone_out\,
      \core_mgt_rx_reset_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      dclk => dclk,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr(8 downto 0) => gt0_drpaddr(8 downto 0),
      gt0_drpdi(15 downto 0) => gt0_drpdi(15 downto 0),
      gt0_drpdo(15 downto 0) => gt0_drpdo(15 downto 0),
      gt0_drpen => gt0_drpen,
      gt0_drprdy => gt0_drprdy,
      gt0_drpwe => gt0_drpwe,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qpllreset_in => gt0_qpllreset_in,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxrate_in(2 downto 0) => gt0_rxrate_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txdlyen_in => txsync_i_n_1,
      gt0_txdlysreset_in => txsync_i_n_6,
      gt0_txdlysresetdone_out => \^gt0_txdlysresetdone_out\,
      gt0_txinhibit_in => gt0_txinhibit_in,
      gt0_txoutclk_out => gt0_txoutclk_i,
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txphalign_in => txsync_i_n_11,
      gt0_txphaligndone_out => \^gt0_txphaligndone_out\,
      gt0_txphinit_in => txsync_i_n_7,
      gt0_txphinitdone_out => \^gt0_txphinitdone_out\,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt1_dmonitorout_out(7 downto 0) => gt1_dmonitorout_out(7 downto 0),
      gt1_drpaddr(8 downto 0) => gt1_drpaddr(8 downto 0),
      gt1_drpdi(15 downto 0) => gt1_drpdi(15 downto 0),
      gt1_drpdo(15 downto 0) => gt1_drpdo(15 downto 0),
      gt1_drpen => gt1_drpen,
      gt1_drprdy => gt1_drprdy,
      gt1_drpwe => gt1_drpwe,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_eyescanreset_in => gt1_eyescanreset_in,
      gt1_eyescantrigger_in => gt1_eyescantrigger_in,
      gt1_loopback_in(2 downto 0) => gt1_loopback_in(2 downto 0),
      gt1_rxbufreset_in => \uclk_mgt_rxbuf_reset_reg_n_0_[0]\,
      gt1_rxcdrhold_in => gt1_rxcdrhold_in,
      gt1_rxcommadet_out => gt1_rxcommadet_out,
      gt1_rxdfelpmreset_in => gt1_rxdfelpmreset_in,
      gt1_rxlpmen_in => gt1_rxlpmen_in,
      gt1_rxmonitorout_out(6 downto 0) => gt1_rxmonitorout_out(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => gt1_rxmonitorsel_in(1 downto 0),
      gt1_rxpcsreset_in => gt1_rxpcsreset_in,
      gt1_rxpmareset_in => gt1_rxpmareset,
      gt1_rxpolarity_in => gt1_rxpolarity_in,
      gt1_rxprbscntreset_in => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out => gt1_rxprbserr_out,
      gt1_rxprbssel_in(2 downto 0) => gt1_rxprbssel_in(2 downto 0),
      gt1_rxrate_in(2 downto 0) => gt1_rxrate_in(2 downto 0),
      gt1_rxresetdone_out => gt1_rxresetdone_out,
      gt1_txdiffctrl_in(3 downto 0) => gt1_txdiffctrl_in(3 downto 0),
      gt1_txdlysreset_in => gt1_txdlysreset_in,
      gt1_txdlysresetdone_out => \^gt1_txdlysresetdone_out\,
      gt1_txinhibit_in => gt1_txinhibit_in,
      gt1_txpcsreset_in => gt1_txpcsreset_in,
      gt1_txphalign_in => gt1_txphalign_in,
      gt1_txphaligndone_out => \^gt1_txphaligndone_out\,
      gt1_txphinit_in => gt1_txphinit_in,
      gt1_txphinitdone_out => \^gt1_txphinitdone_out\,
      gt1_txpmareset_in => gt1_txpmareset_in,
      gt1_txpolarity_in => gt1_txpolarity_in,
      gt1_txpostcursor_in(4 downto 0) => gt1_txpostcursor_in(4 downto 0),
      gt1_txprbsforceerr_in => gt1_txprbsforceerr_in,
      gt1_txprbssel_in(2 downto 0) => gt1_txprbssel_in(2 downto 0),
      gt1_txprecursor_in(4 downto 0) => gt1_txprecursor_in(4 downto 0),
      gt2_dmonitorout_out(7 downto 0) => gt2_dmonitorout_out(7 downto 0),
      gt2_drpaddr(8 downto 0) => gt2_drpaddr(8 downto 0),
      gt2_drpdi(15 downto 0) => gt2_drpdi(15 downto 0),
      gt2_drpdo(15 downto 0) => gt2_drpdo(15 downto 0),
      gt2_drpen => gt2_drpen,
      gt2_drprdy => gt2_drprdy,
      gt2_drpwe => gt2_drpwe,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_eyescanreset_in => gt2_eyescanreset_in,
      gt2_eyescantrigger_in => gt2_eyescantrigger_in,
      gt2_loopback_in(2 downto 0) => gt2_loopback_in(2 downto 0),
      gt2_rxcdrhold_in => gt2_rxcdrhold_in,
      gt2_rxcommadet_out => gt2_rxcommadet_out,
      gt2_rxdfelpmreset_in => gt2_rxdfelpmreset_in,
      gt2_rxlpmen_in => gt2_rxlpmen_in,
      gt2_rxmonitorout_out(6 downto 0) => gt2_rxmonitorout_out(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => gt2_rxmonitorsel_in(1 downto 0),
      gt2_rxpcsreset_in => gt2_rxpcsreset_in,
      gt2_rxpmareset_in => gt2_rxpmareset,
      gt2_rxpolarity_in => gt2_rxpolarity_in,
      gt2_rxprbscntreset_in => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out => gt2_rxprbserr_out,
      gt2_rxprbssel_in(2 downto 0) => gt2_rxprbssel_in(2 downto 0),
      gt2_rxrate_in(2 downto 0) => gt2_rxrate_in(2 downto 0),
      gt2_rxresetdone_out => gt2_rxresetdone_out,
      gt2_txdiffctrl_in(3 downto 0) => gt2_txdiffctrl_in(3 downto 0),
      gt2_txdlysreset_in => gt2_txdlysreset_in,
      gt2_txdlysresetdone_out => \^gt2_txdlysresetdone_out\,
      gt2_txinhibit_in => gt2_txinhibit_in,
      gt2_txpcsreset_in => gt2_txpcsreset_in,
      gt2_txphalign_in => gt2_txphalign_in,
      gt2_txphaligndone_out => \^gt2_txphaligndone_out\,
      gt2_txphinit_in => gt2_txphinit_in,
      gt2_txphinitdone_out => \^gt2_txphinitdone_out\,
      gt2_txpmareset_in => gt2_txpmareset_in,
      gt2_txpolarity_in => gt2_txpolarity_in,
      gt2_txpostcursor_in(4 downto 0) => gt2_txpostcursor_in(4 downto 0),
      gt2_txprbsforceerr_in => gt2_txprbsforceerr_in,
      gt2_txprbssel_in(2 downto 0) => gt2_txprbssel_in(2 downto 0),
      gt2_txprecursor_in(4 downto 0) => gt2_txprecursor_in(4 downto 0),
      gt3_dmonitorout_out(7 downto 0) => gt3_dmonitorout_out(7 downto 0),
      gt3_drpaddr(8 downto 0) => gt3_drpaddr(8 downto 0),
      gt3_drpdi(15 downto 0) => gt3_drpdi(15 downto 0),
      gt3_drpdo(15 downto 0) => gt3_drpdo(15 downto 0),
      gt3_drpen => gt3_drpen,
      gt3_drprdy => gt3_drprdy,
      gt3_drpwe => gt3_drpwe,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_eyescanreset_in => gt3_eyescanreset_in,
      gt3_eyescantrigger_in => gt3_eyescantrigger_in,
      gt3_gtrxreset_in => uclk_mgt_rx_reset,
      gt3_loopback_in(2 downto 0) => gt3_loopback_in(2 downto 0),
      gt3_rxcdrhold_in => gt3_rxcdrhold_in,
      gt3_rxchbonden_in => uclk_mgt_enchansync_reg,
      gt3_rxcommadet_out => gt3_rxcommadet_out,
      gt3_rxdfelpmreset_in => gt3_rxdfelpmreset_in,
      gt3_rxlpmen_in => gt3_rxlpmen_in,
      gt3_rxmonitorout_out(6 downto 0) => gt3_rxmonitorout_out(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => gt3_rxmonitorsel_in(1 downto 0),
      gt3_rxpcsreset_in => gt3_rxpcsreset_in,
      gt3_rxpmareset_in => gt3_rxpmareset,
      gt3_rxpolarity_in => gt3_rxpolarity_in,
      gt3_rxprbscntreset_in => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out => gt3_rxprbserr_out,
      gt3_rxprbssel_in(2 downto 0) => gt3_rxprbssel_in(2 downto 0),
      gt3_rxrate_in(2 downto 0) => gt3_rxrate_in(2 downto 0),
      gt3_rxresetdone_out => gt3_rxresetdone_out,
      gt3_txdiffctrl_in(3 downto 0) => gt3_txdiffctrl_in(3 downto 0),
      gt3_txdlysreset_in => gt3_txdlysreset_in,
      gt3_txdlysresetdone_out => \^gt3_txdlysresetdone_out\,
      gt3_txelecidle_in => uclk_mgt_powerdown_r,
      gt3_txinhibit_in => gt3_txinhibit_in,
      gt3_txpcsreset_in => gt3_txpcsreset_in,
      gt3_txphalign_in => gt3_txphalign_in,
      gt3_txphaligndone_out => \^gt3_txphaligndone_out\,
      gt3_txphinit_in => gt3_txphinit_in,
      gt3_txphinitdone_out => \^gt3_txphinitdone_out\,
      gt3_txpmareset_in => gt3_txpmareset_in,
      gt3_txpolarity_in => gt3_txpolarity_in,
      gt3_txpostcursor_in(4 downto 0) => gt3_txpostcursor_in(4 downto 0),
      gt3_txprbsforceerr_in => gt3_txprbsforceerr_in,
      gt3_txprbssel_in(2 downto 0) => gt3_txprbssel_in(2 downto 0),
      gt3_txprecursor_in(4 downto 0) => gt3_txprecursor_in(4 downto 0),
      gt3_txuserrdy_in => \^clk156_lock\,
      gt_qplllock_out => \^gt_qplllock_out\,
      \mgt_codecomma_reg_reg[7]\(7 downto 6) => gt3_rxchariscomma_out(1 downto 0),
      \mgt_codecomma_reg_reg[7]\(5 downto 4) => gt2_rxchariscomma_out(1 downto 0),
      \mgt_codecomma_reg_reg[7]\(3 downto 2) => gt1_rxchariscomma_out(1 downto 0),
      \mgt_codecomma_reg_reg[7]\(1 downto 0) => gt0_rxchariscomma_out(1 downto 0),
      mgt_enable_align(3) => gt3_rxmcommaalignen_in,
      mgt_enable_align(2) => gt2_rxmcommaalignen_in,
      mgt_enable_align(1) => gt1_rxmcommaalignen_in,
      mgt_enable_align(0) => xaui_0_core_n_147,
      \mgt_rxcharisk_reg_reg[7]\(7 downto 6) => gt3_rxcharisk_out(1 downto 0),
      \mgt_rxcharisk_reg_reg[7]\(5 downto 4) => gt2_rxcharisk_out(1 downto 0),
      \mgt_rxcharisk_reg_reg[7]\(3 downto 2) => gt1_rxcharisk_out(1 downto 0),
      \mgt_rxcharisk_reg_reg[7]\(1 downto 0) => gt0_rxcharisk_out(1 downto 0),
      \mgt_rxdata_reg_reg[63]\(63 downto 48) => gt3_rxdata_out(15 downto 0),
      \mgt_rxdata_reg_reg[63]\(47 downto 32) => gt2_rxdata_out(15 downto 0),
      \mgt_rxdata_reg_reg[63]\(31 downto 16) => gt1_rxdata_out(15 downto 0),
      \mgt_rxdata_reg_reg[63]\(15 downto 0) => gt0_rxdata_out(15 downto 0),
      \mgt_rxdisperr_reg_reg[7]\(7 downto 6) => \^gt3_rxdisperr_out\(1 downto 0),
      \mgt_rxdisperr_reg_reg[7]\(5 downto 4) => \^gt2_rxdisperr_out\(1 downto 0),
      \mgt_rxdisperr_reg_reg[7]\(3 downto 2) => \^gt1_rxdisperr_out\(1 downto 0),
      \mgt_rxdisperr_reg_reg[7]\(1 downto 0) => \^gt0_rxdisperr_out\(1 downto 0),
      \mgt_rxnotintable_reg_reg[7]\(7 downto 6) => \^gt3_rxnotintable_out\(1 downto 0),
      \mgt_rxnotintable_reg_reg[7]\(5 downto 4) => \^gt2_rxnotintable_out\(1 downto 0),
      \mgt_rxnotintable_reg_reg[7]\(3 downto 2) => \^gt1_rxnotintable_out\(1 downto 0),
      \mgt_rxnotintable_reg_reg[7]\(1 downto 0) => \^gt0_rxnotintable_out\(1 downto 0),
      mgt_txcharisk(7 downto 6) => gt3_txcharisk_in(1 downto 0),
      mgt_txcharisk(5 downto 4) => gt2_txcharisk_in(1 downto 0),
      mgt_txcharisk(3 downto 2) => gt1_txcharisk_in(1 downto 0),
      mgt_txcharisk(1) => xaui_0_core_n_142,
      mgt_txcharisk(0) => xaui_0_core_n_143,
      mgt_txdata(63 downto 48) => gt3_txdata_in(15 downto 0),
      mgt_txdata(47 downto 32) => gt2_txdata_in(15 downto 0),
      mgt_txdata(31 downto 16) => gt1_txdata_in(15 downto 0),
      mgt_txdata(15) => xaui_0_core_n_120,
      mgt_txdata(14) => xaui_0_core_n_121,
      mgt_txdata(13) => xaui_0_core_n_122,
      mgt_txdata(12) => xaui_0_core_n_123,
      mgt_txdata(11) => xaui_0_core_n_124,
      mgt_txdata(10) => xaui_0_core_n_125,
      mgt_txdata(9) => xaui_0_core_n_126,
      mgt_txdata(8) => xaui_0_core_n_127,
      mgt_txdata(7) => xaui_0_core_n_128,
      mgt_txdata(6) => xaui_0_core_n_129,
      mgt_txdata(5) => xaui_0_core_n_130,
      mgt_txdata(4) => xaui_0_core_n_131,
      mgt_txdata(3) => xaui_0_core_n_132,
      mgt_txdata(2) => xaui_0_core_n_133,
      mgt_txdata(1) => xaui_0_core_n_134,
      mgt_txdata(0) => xaui_0_core_n_135,
      refclk => refclk,
      uclk_loopback_int(0) => uclk_loopback_int(1),
      \uclk_mgt_rxbufstatus_reg_reg[11]\(11 downto 9) => \^gt3_rxbufstatus_out\(2 downto 0),
      \uclk_mgt_rxbufstatus_reg_reg[11]\(8 downto 6) => \^gt2_rxbufstatus_out\(2 downto 0),
      \uclk_mgt_rxbufstatus_reg_reg[11]\(5 downto 3) => \^gt1_rxbufstatus_out\(2 downto 0),
      \uclk_mgt_rxbufstatus_reg_reg[11]\(2 downto 0) => \^gt0_rxbufstatus_out\(2 downto 0),
      uclk_mgt_tx_reset => uclk_mgt_tx_reset,
      xaui_rx_l0_n => xaui_rx_l0_n,
      xaui_rx_l0_p => xaui_rx_l0_p,
      xaui_rx_l1_n => xaui_rx_l1_n,
      xaui_rx_l1_p => xaui_rx_l1_p,
      xaui_rx_l2_n => xaui_rx_l2_n,
      xaui_rx_l2_p => xaui_rx_l2_p,
      xaui_rx_l3_n => xaui_rx_l3_n,
      xaui_rx_l3_p => xaui_rx_l3_p,
      xaui_tx_l0_n => xaui_tx_l0_n,
      xaui_tx_l0_p => xaui_tx_l0_p,
      xaui_tx_l1_n => xaui_tx_l1_n,
      xaui_tx_l1_p => xaui_tx_l1_p,
      xaui_tx_l2_n => xaui_tx_l2_n,
      xaui_tx_l2_p => xaui_tx_l2_p,
      xaui_tx_l3_n => xaui_tx_l3_n,
      xaui_tx_l3_p => xaui_tx_l3_p
    );
\mgt_codecomma_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxchariscomma_out(0),
      Q => mgt_codecomma(0),
      R => '0'
    );
\mgt_codecomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxchariscomma_out(1),
      Q => mgt_codecomma(1),
      R => '0'
    );
\mgt_codecomma_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxchariscomma_out(0),
      Q => mgt_codecomma(2),
      R => '0'
    );
\mgt_codecomma_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxchariscomma_out(1),
      Q => mgt_codecomma(3),
      R => '0'
    );
\mgt_codecomma_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxchariscomma_out(0),
      Q => mgt_codecomma(4),
      R => '0'
    );
\mgt_codecomma_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxchariscomma_out(1),
      Q => mgt_codecomma(5),
      R => '0'
    );
\mgt_codecomma_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxchariscomma_out(0),
      Q => mgt_codecomma(6),
      R => '0'
    );
\mgt_codecomma_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxchariscomma_out(1),
      Q => mgt_codecomma(7),
      R => '0'
    );
\mgt_rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxcharisk_out(0),
      Q => \mgt_rxcharisk_reg_reg_n_0_[0]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxcharisk_out(1),
      Q => \mgt_rxcharisk_reg_reg_n_0_[1]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxcharisk_out(0),
      Q => \mgt_rxcharisk_reg_reg_n_0_[2]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxcharisk_out(1),
      Q => \mgt_rxcharisk_reg_reg_n_0_[3]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxcharisk_out(0),
      Q => \mgt_rxcharisk_reg_reg_n_0_[4]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxcharisk_out(1),
      Q => \mgt_rxcharisk_reg_reg_n_0_[5]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxcharisk_out(0),
      Q => \mgt_rxcharisk_reg_reg_n_0_[6]\,
      R => '0'
    );
\mgt_rxcharisk_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxcharisk_out(1),
      Q => \mgt_rxcharisk_reg_reg_n_0_[7]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(0),
      Q => \mgt_rxdata_reg_reg_n_0_[0]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(10),
      Q => \mgt_rxdata_reg_reg_n_0_[10]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(11),
      Q => \mgt_rxdata_reg_reg_n_0_[11]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(12),
      Q => \mgt_rxdata_reg_reg_n_0_[12]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(13),
      Q => \mgt_rxdata_reg_reg_n_0_[13]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(14),
      Q => \mgt_rxdata_reg_reg_n_0_[14]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(15),
      Q => \mgt_rxdata_reg_reg_n_0_[15]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(0),
      Q => \mgt_rxdata_reg_reg_n_0_[16]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(1),
      Q => \mgt_rxdata_reg_reg_n_0_[17]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(2),
      Q => \mgt_rxdata_reg_reg_n_0_[18]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(3),
      Q => \mgt_rxdata_reg_reg_n_0_[19]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(1),
      Q => \mgt_rxdata_reg_reg_n_0_[1]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(4),
      Q => \mgt_rxdata_reg_reg_n_0_[20]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(5),
      Q => \mgt_rxdata_reg_reg_n_0_[21]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(6),
      Q => \mgt_rxdata_reg_reg_n_0_[22]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(7),
      Q => \mgt_rxdata_reg_reg_n_0_[23]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(8),
      Q => \mgt_rxdata_reg_reg_n_0_[24]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(9),
      Q => \mgt_rxdata_reg_reg_n_0_[25]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(10),
      Q => \mgt_rxdata_reg_reg_n_0_[26]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(11),
      Q => \mgt_rxdata_reg_reg_n_0_[27]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(12),
      Q => \mgt_rxdata_reg_reg_n_0_[28]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(13),
      Q => \mgt_rxdata_reg_reg_n_0_[29]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(2),
      Q => \mgt_rxdata_reg_reg_n_0_[2]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(14),
      Q => \mgt_rxdata_reg_reg_n_0_[30]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt1_rxdata_out(15),
      Q => \mgt_rxdata_reg_reg_n_0_[31]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(0),
      Q => \mgt_rxdata_reg_reg_n_0_[32]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(1),
      Q => \mgt_rxdata_reg_reg_n_0_[33]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(2),
      Q => \mgt_rxdata_reg_reg_n_0_[34]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(3),
      Q => \mgt_rxdata_reg_reg_n_0_[35]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(4),
      Q => \mgt_rxdata_reg_reg_n_0_[36]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(5),
      Q => \mgt_rxdata_reg_reg_n_0_[37]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(6),
      Q => \mgt_rxdata_reg_reg_n_0_[38]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(7),
      Q => \mgt_rxdata_reg_reg_n_0_[39]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(3),
      Q => \mgt_rxdata_reg_reg_n_0_[3]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(8),
      Q => \mgt_rxdata_reg_reg_n_0_[40]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(9),
      Q => \mgt_rxdata_reg_reg_n_0_[41]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(10),
      Q => \mgt_rxdata_reg_reg_n_0_[42]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(11),
      Q => \mgt_rxdata_reg_reg_n_0_[43]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(12),
      Q => \mgt_rxdata_reg_reg_n_0_[44]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(13),
      Q => \mgt_rxdata_reg_reg_n_0_[45]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(14),
      Q => \mgt_rxdata_reg_reg_n_0_[46]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt2_rxdata_out(15),
      Q => \mgt_rxdata_reg_reg_n_0_[47]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(0),
      Q => \mgt_rxdata_reg_reg_n_0_[48]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(1),
      Q => \mgt_rxdata_reg_reg_n_0_[49]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(4),
      Q => \mgt_rxdata_reg_reg_n_0_[4]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(2),
      Q => \mgt_rxdata_reg_reg_n_0_[50]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(3),
      Q => \mgt_rxdata_reg_reg_n_0_[51]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(4),
      Q => \mgt_rxdata_reg_reg_n_0_[52]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(5),
      Q => \mgt_rxdata_reg_reg_n_0_[53]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(6),
      Q => \mgt_rxdata_reg_reg_n_0_[54]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(7),
      Q => \mgt_rxdata_reg_reg_n_0_[55]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(8),
      Q => \mgt_rxdata_reg_reg_n_0_[56]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(9),
      Q => \mgt_rxdata_reg_reg_n_0_[57]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(10),
      Q => \mgt_rxdata_reg_reg_n_0_[58]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(11),
      Q => \mgt_rxdata_reg_reg_n_0_[59]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(5),
      Q => \mgt_rxdata_reg_reg_n_0_[5]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(12),
      Q => \mgt_rxdata_reg_reg_n_0_[60]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(13),
      Q => \mgt_rxdata_reg_reg_n_0_[61]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(14),
      Q => \mgt_rxdata_reg_reg_n_0_[62]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt3_rxdata_out(15),
      Q => \mgt_rxdata_reg_reg_n_0_[63]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(6),
      Q => \mgt_rxdata_reg_reg_n_0_[6]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(7),
      Q => \mgt_rxdata_reg_reg_n_0_[7]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(8),
      Q => \mgt_rxdata_reg_reg_n_0_[8]\,
      R => '0'
    );
\mgt_rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => gt0_rxdata_out(9),
      Q => \mgt_rxdata_reg_reg_n_0_[9]\,
      R => '0'
    );
\mgt_rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxdisperr_out\(0),
      Q => mgt_rxdisperr_reg(0),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxdisperr_out\(1),
      Q => mgt_rxdisperr_reg(1),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxdisperr_out\(0),
      Q => mgt_rxdisperr_reg(2),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxdisperr_out\(1),
      Q => mgt_rxdisperr_reg(3),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxdisperr_out\(0),
      Q => mgt_rxdisperr_reg(4),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxdisperr_out\(1),
      Q => mgt_rxdisperr_reg(5),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxdisperr_out\(0),
      Q => mgt_rxdisperr_reg(6),
      R => '0'
    );
\mgt_rxdisperr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxdisperr_out\(1),
      Q => mgt_rxdisperr_reg(7),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxnotintable_out\(0),
      Q => mgt_rxnotintable_reg(0),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxnotintable_out\(1),
      Q => mgt_rxnotintable_reg(1),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxnotintable_out\(0),
      Q => mgt_rxnotintable_reg(2),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxnotintable_out\(1),
      Q => mgt_rxnotintable_reg(3),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxnotintable_out\(0),
      Q => mgt_rxnotintable_reg(4),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxnotintable_out\(1),
      Q => mgt_rxnotintable_reg(5),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxnotintable_out\(0),
      Q => mgt_rxnotintable_reg(6),
      R => '0'
    );
\mgt_rxnotintable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxnotintable_out\(1),
      Q => mgt_rxnotintable_reg(7),
      R => '0'
    );
plllocked_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer
     port map (
      CLK => \^clk156_out\,
      gt_qplllock_out => \^gt_qplllock_out\,
      \out\(0) => \^clk156_lock\,
      uclk_mgt_rx_reset5 => uclk_mgt_rx_reset5
    );
reset_count_done_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer_0
     port map (
      CLK => \^clk156_out\,
      Q(3 downto 0) => uclk_mgt_txresetdone_reg(3 downto 0),
      \count_reg[7]\(0) => done,
      \out\(0) => \^clk156_lock\,
      p_0_in => p_0_in,
      reset156_r3_reg => reset156,
      uclk_cbm_rx_reset => uclk_cbm_rx_reset,
      uclk_loopback_reset => uclk_loopback_reset,
      uclk_mgt_powerdown_falling => uclk_mgt_powerdown_falling,
      uclk_mgt_rx_reset0 => uclk_mgt_rx_reset0,
      uclk_mgt_tx_reset0 => uclk_mgt_tx_reset0,
      uclk_txsync_start_phase_align_reg => reset_count_done_sync_i_n_2,
      uclk_txsync_start_phase_align_reg_0 => uclk_txsync_start_phase_align_reg_n_0
    );
reset_counter_i: entity work.xaui_0_xaui_0_reset_counter
     port map (
      D(0) => done,
      dclk => dclk,
      gt0_qpllreset_in => gt0_qpllreset_in,
      \out\(0) => data_out
    );
reset_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer_1
     port map (
      dclk => dclk,
      \out\(0) => data_out,
      reset => reset
    );
rxpmareset_sync0_i: entity work.xaui_0_xaui_0_ff_synchronizer_2
     port map (
      dclk => dclk,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      \out\(0) => gt0_rxpmareset
    );
rxpmareset_sync1_i: entity work.xaui_0_xaui_0_ff_synchronizer_3
     port map (
      dclk => dclk,
      gt1_rxpmareset_in => gt1_rxpmareset_in,
      \out\(0) => gt1_rxpmareset
    );
rxpmareset_sync2_i: entity work.xaui_0_xaui_0_ff_synchronizer_4
     port map (
      dclk => dclk,
      gt2_rxpmareset_in => gt2_rxpmareset_in,
      \out\(0) => gt2_rxpmareset
    );
rxpmareset_sync3_i: entity work.xaui_0_xaui_0_ff_synchronizer_5
     port map (
      dclk => dclk,
      gt3_rxpmareset_in => gt3_rxpmareset_in,
      \out\(0) => gt3_rxpmareset
    );
rxprbs_in_use_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => gt1_rxprbssel_in(0),
      I1 => gt2_rxprbssel_in(2),
      I2 => gt1_rxprbssel_in(1),
      I3 => gt1_rxprbssel_in(2),
      I4 => rxprbs_in_use_i_2_n_0,
      I5 => rxprbs_in_use_i_3_n_0,
      O => rxprbs_in_use0
    );
rxprbs_in_use_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gt0_rxprbssel_in(2),
      I1 => gt3_rxprbssel_in(0),
      I2 => gt0_rxprbssel_in(0),
      I3 => gt0_rxprbssel_in(1),
      O => rxprbs_in_use_i_2_n_0
    );
rxprbs_in_use_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gt2_rxprbssel_in(0),
      I1 => gt2_rxprbssel_in(1),
      I2 => gt3_rxprbssel_in(1),
      I3 => gt3_rxprbssel_in(2),
      O => rxprbs_in_use_i_3_n_0
    );
rxprbs_in_use_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => rxprbs_in_use0,
      Q => rxprbs_in_use,
      R => '0'
    );
signal_detect_0_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer_6
     port map (
      CLK => \^clk156_out\,
      \out\(0) => uclk_signal_detect(0),
      signal_detect(0) => signal_detect(0)
    );
signal_detect_1_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer_7
     port map (
      CLK => \^clk156_out\,
      \out\(0) => uclk_signal_detect(1),
      signal_detect(0) => signal_detect(1)
    );
signal_detect_2_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer_8
     port map (
      CLK => \^clk156_out\,
      \out\(0) => uclk_signal_detect(2),
      signal_detect(0) => signal_detect(2)
    );
signal_detect_3_sync_i: entity work.xaui_0_xaui_0_ff_synchronizer_9
     port map (
      CLK => \^clk156_out\,
      \out\(0) => uclk_signal_detect(3),
      signal_detect(0) => signal_detect(3)
    );
txsync_i: entity work.xaui_0_xaui_0_gt_wrapper_tx_sync_manual
     port map (
      CLK => \^clk156_out\,
      debug(0) => \^debug\(0),
      gt0_txdlyen_in => txsync_i_n_1,
      gt0_txdlysreset_in => txsync_i_n_6,
      gt0_txdlysresetdone_out => \^gt0_txdlysresetdone_out\,
      gt0_txphalign_in => txsync_i_n_11,
      gt0_txphaligndone_out => \^gt0_txphaligndone_out\,
      gt0_txphinit_in => txsync_i_n_7,
      gt0_txphinitdone_out => \^gt0_txphinitdone_out\,
      gt1_txdlysreset_in => gt1_txdlysreset_in,
      gt1_txdlysresetdone_out => \^gt1_txdlysresetdone_out\,
      gt1_txphalign_in => gt1_txphalign_in,
      gt1_txphaligndone_out => \^gt1_txphaligndone_out\,
      gt1_txphinit_in => gt1_txphinit_in,
      gt1_txphinitdone_out => \^gt1_txphinitdone_out\,
      gt2_txdlysreset_in => gt2_txdlysreset_in,
      gt2_txdlysresetdone_out => \^gt2_txdlysresetdone_out\,
      gt2_txphalign_in => gt2_txphalign_in,
      gt2_txphaligndone_out => \^gt2_txphaligndone_out\,
      gt2_txphinit_in => gt2_txphinit_in,
      gt2_txphinitdone_out => \^gt2_txphinitdone_out\,
      gt3_txdlysreset_in => gt3_txdlysreset_in,
      gt3_txdlysresetdone_out => \^gt3_txdlysresetdone_out\,
      gt3_txphalign_in => gt3_txphalign_in,
      gt3_txphaligndone_out => \^gt3_txphaligndone_out\,
      gt3_txphinit_in => gt3_txphinit_in,
      gt3_txphinitdone_out => \^gt3_txphinitdone_out\,
      mgt_tx_reset(0) => txsync_i_n_2,
      uclk_mgt_tx_reset => uclk_mgt_tx_reset,
      uclk_txsync_start_phase_align_reg => uclk_txsync_start_phase_align_reg_n_0
    );
\uclk_chbond_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \uclk_chbond_counter[0]_i_3_n_0\,
      I1 => uclk_cbm_rx_reset,
      I2 => \^debug\(5),
      I3 => rxprbs_in_use,
      O => uclk_chbond_counter
    );
\uclk_chbond_counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^debug\(1),
      I1 => \^debug\(3),
      I2 => \^debug\(4),
      I3 => \^debug\(2),
      O => \uclk_chbond_counter[0]_i_3_n_0\
    );
\uclk_chbond_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uclk_chbond_counter_reg_n_0_[0]\,
      O => \uclk_chbond_counter[0]_i_7_n_0\
    );
\uclk_chbond_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[0]_i_2_n_7\,
      Q => \uclk_chbond_counter_reg_n_0_[0]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uclk_chbond_counter_reg[0]_i_2_n_0\,
      CO(2) => \uclk_chbond_counter_reg[0]_i_2_n_1\,
      CO(1) => \uclk_chbond_counter_reg[0]_i_2_n_2\,
      CO(0) => \uclk_chbond_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \uclk_chbond_counter_reg[0]_i_2_n_4\,
      O(2) => \uclk_chbond_counter_reg[0]_i_2_n_5\,
      O(1) => \uclk_chbond_counter_reg[0]_i_2_n_6\,
      O(0) => \uclk_chbond_counter_reg[0]_i_2_n_7\,
      S(3) => \uclk_chbond_counter_reg_n_0_[3]\,
      S(2) => \uclk_chbond_counter_reg_n_0_[2]\,
      S(1) => \uclk_chbond_counter_reg_n_0_[1]\,
      S(0) => \uclk_chbond_counter[0]_i_7_n_0\
    );
\uclk_chbond_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[8]_i_1_n_5\,
      Q => \uclk_chbond_counter_reg_n_0_[10]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[8]_i_1_n_4\,
      Q => \uclk_chbond_counter_reg_n_0_[11]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[12]_i_1_n_7\,
      Q => \uclk_chbond_counter_reg_n_0_[12]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uclk_chbond_counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_uclk_chbond_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \uclk_chbond_counter_reg[12]_i_1_n_1\,
      CO(1) => \uclk_chbond_counter_reg[12]_i_1_n_2\,
      CO(0) => \uclk_chbond_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \uclk_chbond_counter_reg[12]_i_1_n_4\,
      O(2) => \uclk_chbond_counter_reg[12]_i_1_n_5\,
      O(1) => \uclk_chbond_counter_reg[12]_i_1_n_6\,
      O(0) => \uclk_chbond_counter_reg[12]_i_1_n_7\,
      S(3) => uclk_cbm_rx_reset,
      S(2) => \uclk_chbond_counter_reg_n_0_[14]\,
      S(1) => \uclk_chbond_counter_reg_n_0_[13]\,
      S(0) => \uclk_chbond_counter_reg_n_0_[12]\
    );
\uclk_chbond_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[12]_i_1_n_6\,
      Q => \uclk_chbond_counter_reg_n_0_[13]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[12]_i_1_n_5\,
      Q => \uclk_chbond_counter_reg_n_0_[14]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[12]_i_1_n_4\,
      Q => uclk_cbm_rx_reset,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[0]_i_2_n_6\,
      Q => \uclk_chbond_counter_reg_n_0_[1]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[0]_i_2_n_5\,
      Q => \uclk_chbond_counter_reg_n_0_[2]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[0]_i_2_n_4\,
      Q => \uclk_chbond_counter_reg_n_0_[3]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[4]_i_1_n_7\,
      Q => \uclk_chbond_counter_reg_n_0_[4]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uclk_chbond_counter_reg[0]_i_2_n_0\,
      CO(3) => \uclk_chbond_counter_reg[4]_i_1_n_0\,
      CO(2) => \uclk_chbond_counter_reg[4]_i_1_n_1\,
      CO(1) => \uclk_chbond_counter_reg[4]_i_1_n_2\,
      CO(0) => \uclk_chbond_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \uclk_chbond_counter_reg[4]_i_1_n_4\,
      O(2) => \uclk_chbond_counter_reg[4]_i_1_n_5\,
      O(1) => \uclk_chbond_counter_reg[4]_i_1_n_6\,
      O(0) => \uclk_chbond_counter_reg[4]_i_1_n_7\,
      S(3) => \uclk_chbond_counter_reg_n_0_[7]\,
      S(2) => \uclk_chbond_counter_reg_n_0_[6]\,
      S(1) => \uclk_chbond_counter_reg_n_0_[5]\,
      S(0) => \uclk_chbond_counter_reg_n_0_[4]\
    );
\uclk_chbond_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[4]_i_1_n_6\,
      Q => \uclk_chbond_counter_reg_n_0_[5]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[4]_i_1_n_5\,
      Q => \uclk_chbond_counter_reg_n_0_[6]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[4]_i_1_n_4\,
      Q => \uclk_chbond_counter_reg_n_0_[7]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[8]_i_1_n_7\,
      Q => \uclk_chbond_counter_reg_n_0_[8]\,
      R => uclk_chbond_counter
    );
\uclk_chbond_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uclk_chbond_counter_reg[4]_i_1_n_0\,
      CO(3) => \uclk_chbond_counter_reg[8]_i_1_n_0\,
      CO(2) => \uclk_chbond_counter_reg[8]_i_1_n_1\,
      CO(1) => \uclk_chbond_counter_reg[8]_i_1_n_2\,
      CO(0) => \uclk_chbond_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \uclk_chbond_counter_reg[8]_i_1_n_4\,
      O(2) => \uclk_chbond_counter_reg[8]_i_1_n_5\,
      O(1) => \uclk_chbond_counter_reg[8]_i_1_n_6\,
      O(0) => \uclk_chbond_counter_reg[8]_i_1_n_7\,
      S(3) => \uclk_chbond_counter_reg_n_0_[11]\,
      S(2) => \uclk_chbond_counter_reg_n_0_[10]\,
      S(1) => \uclk_chbond_counter_reg_n_0_[9]\,
      S(0) => \uclk_chbond_counter_reg_n_0_[8]\
    );
\uclk_chbond_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_chbond_counter_reg[8]_i_1_n_6\,
      Q => \uclk_chbond_counter_reg_n_0_[9]\,
      R => uclk_chbond_counter
    );
uclk_loopback_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => uclk_loopback_int(1),
      I1 => uclk_mgt_loopback,
      O => uclk_loopback_reset_i_1_n_0
    );
uclk_loopback_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_loopback_reset_i_1_n_0,
      Q => uclk_loopback_reset,
      R => '0'
    );
uclk_mgt_enchansync_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_mgt_enchansync,
      Q => uclk_mgt_enchansync_reg,
      R => '0'
    );
uclk_mgt_loopback_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_mgt_loopback,
      Q => uclk_loopback_int(1),
      R => '0'
    );
uclk_mgt_powerdown_falling_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => uclk_mgt_powerdown_r,
      I1 => uclk_mgt_powerdown,
      O => uclk_mgt_powerdown_falling0
    );
uclk_mgt_powerdown_falling_reg: unisim.vcomponents.FDCE
     port map (
      C => \^clk156_out\,
      CE => '1',
      CLR => reset156,
      D => uclk_mgt_powerdown_falling0,
      Q => uclk_mgt_powerdown_falling
    );
uclk_mgt_powerdown_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_mgt_powerdown,
      Q => uclk_mgt_powerdown_r,
      R => '0'
    );
uclk_mgt_rx_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_mgt_rx_reset0,
      Q => uclk_mgt_rx_reset,
      R => '0'
    );
\uclk_mgt_rxbuf_reset[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFEFEEE"
    )
        port map (
      I0 => \uclk_mgt_rxbuf_reset[0]_i_2_n_0\,
      I1 => \uclk_mgt_rxbuf_reset[0]_i_3_n_0\,
      I2 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[8]\,
      I3 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[6]\,
      I4 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[7]\,
      O => uclk_mgt_rxbuf_reset0
    );
\uclk_mgt_rxbuf_reset[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BEAA"
    )
        port map (
      I0 => uclk_cbm_rx_reset,
      I1 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[1]\,
      I2 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[0]\,
      I3 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[2]\,
      O => \uclk_mgt_rxbuf_reset[0]_i_2_n_0\
    );
\uclk_mgt_rxbuf_reset[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFF6060606060"
    )
        port map (
      I0 => bufStatus(1),
      I1 => bufStatus(0),
      I2 => bufStatus(2),
      I3 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[10]\,
      I4 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[9]\,
      I5 => \uclk_mgt_rxbufstatus_reg_reg_n_0_[11]\,
      O => \uclk_mgt_rxbuf_reset[0]_i_3_n_0\
    );
\uclk_mgt_rxbuf_reset_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_mgt_rxbuf_reset0,
      Q => \uclk_mgt_rxbuf_reset_reg_n_0_[0]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxbufstatus_out\(0),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[0]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxbufstatus_out\(1),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[10]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxbufstatus_out\(2),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[11]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxbufstatus_out\(1),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[1]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_rxbufstatus_out\(2),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[2]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxbufstatus_out\(0),
      Q => bufStatus(0),
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxbufstatus_out\(1),
      Q => bufStatus(1),
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_rxbufstatus_out\(2),
      Q => bufStatus(2),
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxbufstatus_out\(0),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[6]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxbufstatus_out\(1),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[7]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_rxbufstatus_out\(2),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[8]\,
      R => '0'
    );
\uclk_mgt_rxbufstatus_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_rxbufstatus_out\(0),
      Q => \uclk_mgt_rxbufstatus_reg_reg_n_0_[9]\,
      R => '0'
    );
uclk_mgt_tx_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => uclk_mgt_tx_reset0,
      Q => uclk_mgt_tx_reset,
      R => '0'
    );
\uclk_mgt_txresetdone_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt3_txresetdone_out\,
      Q => uclk_mgt_txresetdone_reg(0),
      R => '0'
    );
\uclk_mgt_txresetdone_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt2_txresetdone_out\,
      Q => uclk_mgt_txresetdone_reg(1),
      R => '0'
    );
\uclk_mgt_txresetdone_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt1_txresetdone_out\,
      Q => uclk_mgt_txresetdone_reg(2),
      R => '0'
    );
\uclk_mgt_txresetdone_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => \^gt0_txresetdone_out\,
      Q => uclk_mgt_txresetdone_reg(3),
      R => '0'
    );
\uclk_sync_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \uclk_chbond_counter[0]_i_3_n_0\,
      I1 => rxprbs_in_use,
      I2 => uclk_mgt_powerdown,
      I3 => p_0_in,
      O => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \uclk_sync_counter_reg_n_0_[0]\,
      O => \uclk_sync_counter[0]_i_6_n_0\
    );
\uclk_sync_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[0]_i_2_n_7\,
      Q => \uclk_sync_counter_reg_n_0_[0]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uclk_sync_counter_reg[0]_i_2_n_0\,
      CO(2) => \uclk_sync_counter_reg[0]_i_2_n_1\,
      CO(1) => \uclk_sync_counter_reg[0]_i_2_n_2\,
      CO(0) => \uclk_sync_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \uclk_sync_counter_reg[0]_i_2_n_4\,
      O(2) => \uclk_sync_counter_reg[0]_i_2_n_5\,
      O(1) => \uclk_sync_counter_reg[0]_i_2_n_6\,
      O(0) => \uclk_sync_counter_reg[0]_i_2_n_7\,
      S(3) => \uclk_sync_counter_reg_n_0_[3]\,
      S(2) => \uclk_sync_counter_reg_n_0_[2]\,
      S(1) => \uclk_sync_counter_reg_n_0_[1]\,
      S(0) => \uclk_sync_counter[0]_i_6_n_0\
    );
\uclk_sync_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[8]_i_1_n_5\,
      Q => \uclk_sync_counter_reg_n_0_[10]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[8]_i_1_n_4\,
      Q => \uclk_sync_counter_reg_n_0_[11]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[12]_i_1_n_7\,
      Q => \uclk_sync_counter_reg_n_0_[12]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uclk_sync_counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_uclk_sync_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \uclk_sync_counter_reg[12]_i_1_n_1\,
      CO(1) => \uclk_sync_counter_reg[12]_i_1_n_2\,
      CO(0) => \uclk_sync_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \uclk_sync_counter_reg[12]_i_1_n_4\,
      O(2) => \uclk_sync_counter_reg[12]_i_1_n_5\,
      O(1) => \uclk_sync_counter_reg[12]_i_1_n_6\,
      O(0) => \uclk_sync_counter_reg[12]_i_1_n_7\,
      S(3) => p_0_in,
      S(2) => \uclk_sync_counter_reg_n_0_[14]\,
      S(1) => \uclk_sync_counter_reg_n_0_[13]\,
      S(0) => \uclk_sync_counter_reg_n_0_[12]\
    );
\uclk_sync_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[12]_i_1_n_6\,
      Q => \uclk_sync_counter_reg_n_0_[13]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[12]_i_1_n_5\,
      Q => \uclk_sync_counter_reg_n_0_[14]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[12]_i_1_n_4\,
      Q => p_0_in,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[0]_i_2_n_6\,
      Q => \uclk_sync_counter_reg_n_0_[1]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[0]_i_2_n_5\,
      Q => \uclk_sync_counter_reg_n_0_[2]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[0]_i_2_n_4\,
      Q => \uclk_sync_counter_reg_n_0_[3]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[4]_i_1_n_7\,
      Q => \uclk_sync_counter_reg_n_0_[4]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uclk_sync_counter_reg[0]_i_2_n_0\,
      CO(3) => \uclk_sync_counter_reg[4]_i_1_n_0\,
      CO(2) => \uclk_sync_counter_reg[4]_i_1_n_1\,
      CO(1) => \uclk_sync_counter_reg[4]_i_1_n_2\,
      CO(0) => \uclk_sync_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \uclk_sync_counter_reg[4]_i_1_n_4\,
      O(2) => \uclk_sync_counter_reg[4]_i_1_n_5\,
      O(1) => \uclk_sync_counter_reg[4]_i_1_n_6\,
      O(0) => \uclk_sync_counter_reg[4]_i_1_n_7\,
      S(3) => \uclk_sync_counter_reg_n_0_[7]\,
      S(2) => \uclk_sync_counter_reg_n_0_[6]\,
      S(1) => \uclk_sync_counter_reg_n_0_[5]\,
      S(0) => \uclk_sync_counter_reg_n_0_[4]\
    );
\uclk_sync_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[4]_i_1_n_6\,
      Q => \uclk_sync_counter_reg_n_0_[5]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[4]_i_1_n_5\,
      Q => \uclk_sync_counter_reg_n_0_[6]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[4]_i_1_n_4\,
      Q => \uclk_sync_counter_reg_n_0_[7]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[8]_i_1_n_7\,
      Q => \uclk_sync_counter_reg_n_0_[8]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
\uclk_sync_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uclk_sync_counter_reg[4]_i_1_n_0\,
      CO(3) => \uclk_sync_counter_reg[8]_i_1_n_0\,
      CO(2) => \uclk_sync_counter_reg[8]_i_1_n_1\,
      CO(1) => \uclk_sync_counter_reg[8]_i_1_n_2\,
      CO(0) => \uclk_sync_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \uclk_sync_counter_reg[8]_i_1_n_4\,
      O(2) => \uclk_sync_counter_reg[8]_i_1_n_5\,
      O(1) => \uclk_sync_counter_reg[8]_i_1_n_6\,
      O(0) => \uclk_sync_counter_reg[8]_i_1_n_7\,
      S(3) => \uclk_sync_counter_reg_n_0_[11]\,
      S(2) => \uclk_sync_counter_reg_n_0_[10]\,
      S(1) => \uclk_sync_counter_reg_n_0_[9]\,
      S(0) => \uclk_sync_counter_reg_n_0_[8]\
    );
\uclk_sync_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk156_out\,
      CE => '1',
      D => \uclk_sync_counter_reg[8]_i_1_n_6\,
      Q => \uclk_sync_counter_reg_n_0_[9]\,
      R => \uclk_sync_counter[0]_i_1_n_0\
    );
uclk_txsync_start_phase_align_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk156_out\,
      CE => '1',
      D => reset_count_done_sync_i_n_2,
      Q => uclk_txsync_start_phase_align_reg_n_0,
      R => '0'
    );
xaui_0_core: entity work.xaui_0_xaui_v12_2_5_top
     port map (
      align_status => \^debug\(5),
      configuration_vector(6 downto 0) => configuration_vector(6 downto 0),
      mdc => '0',
      mdio_in => '0',
      mdio_out => NLW_xaui_0_core_mdio_out_UNCONNECTED,
      mdio_tri => NLW_xaui_0_core_mdio_tri_UNCONNECTED,
      mgt_codecomma(7 downto 0) => mgt_codecomma(7 downto 0),
      mgt_codevalid(7 downto 0) => mgt_codevalid(7 downto 0),
      mgt_enable_align(3) => gt3_rxmcommaalignen_in,
      mgt_enable_align(2) => gt2_rxmcommaalignen_in,
      mgt_enable_align(1) => gt1_rxmcommaalignen_in,
      mgt_enable_align(0) => xaui_0_core_n_147,
      mgt_enchansync => uclk_mgt_enchansync,
      mgt_loopback => uclk_mgt_loopback,
      mgt_powerdown => uclk_mgt_powerdown,
      mgt_rx_reset(3 downto 0) => mgt_rx_reset(3 downto 0),
      mgt_rxcharisk(7) => \mgt_rxcharisk_reg_reg_n_0_[7]\,
      mgt_rxcharisk(6) => \mgt_rxcharisk_reg_reg_n_0_[6]\,
      mgt_rxcharisk(5) => \mgt_rxcharisk_reg_reg_n_0_[5]\,
      mgt_rxcharisk(4) => \mgt_rxcharisk_reg_reg_n_0_[4]\,
      mgt_rxcharisk(3) => \mgt_rxcharisk_reg_reg_n_0_[3]\,
      mgt_rxcharisk(2) => \mgt_rxcharisk_reg_reg_n_0_[2]\,
      mgt_rxcharisk(1) => \mgt_rxcharisk_reg_reg_n_0_[1]\,
      mgt_rxcharisk(0) => \mgt_rxcharisk_reg_reg_n_0_[0]\,
      mgt_rxdata(63) => \mgt_rxdata_reg_reg_n_0_[63]\,
      mgt_rxdata(62) => \mgt_rxdata_reg_reg_n_0_[62]\,
      mgt_rxdata(61) => \mgt_rxdata_reg_reg_n_0_[61]\,
      mgt_rxdata(60) => \mgt_rxdata_reg_reg_n_0_[60]\,
      mgt_rxdata(59) => \mgt_rxdata_reg_reg_n_0_[59]\,
      mgt_rxdata(58) => \mgt_rxdata_reg_reg_n_0_[58]\,
      mgt_rxdata(57) => \mgt_rxdata_reg_reg_n_0_[57]\,
      mgt_rxdata(56) => \mgt_rxdata_reg_reg_n_0_[56]\,
      mgt_rxdata(55) => \mgt_rxdata_reg_reg_n_0_[55]\,
      mgt_rxdata(54) => \mgt_rxdata_reg_reg_n_0_[54]\,
      mgt_rxdata(53) => \mgt_rxdata_reg_reg_n_0_[53]\,
      mgt_rxdata(52) => \mgt_rxdata_reg_reg_n_0_[52]\,
      mgt_rxdata(51) => \mgt_rxdata_reg_reg_n_0_[51]\,
      mgt_rxdata(50) => \mgt_rxdata_reg_reg_n_0_[50]\,
      mgt_rxdata(49) => \mgt_rxdata_reg_reg_n_0_[49]\,
      mgt_rxdata(48) => \mgt_rxdata_reg_reg_n_0_[48]\,
      mgt_rxdata(47) => \mgt_rxdata_reg_reg_n_0_[47]\,
      mgt_rxdata(46) => \mgt_rxdata_reg_reg_n_0_[46]\,
      mgt_rxdata(45) => \mgt_rxdata_reg_reg_n_0_[45]\,
      mgt_rxdata(44) => \mgt_rxdata_reg_reg_n_0_[44]\,
      mgt_rxdata(43) => \mgt_rxdata_reg_reg_n_0_[43]\,
      mgt_rxdata(42) => \mgt_rxdata_reg_reg_n_0_[42]\,
      mgt_rxdata(41) => \mgt_rxdata_reg_reg_n_0_[41]\,
      mgt_rxdata(40) => \mgt_rxdata_reg_reg_n_0_[40]\,
      mgt_rxdata(39) => \mgt_rxdata_reg_reg_n_0_[39]\,
      mgt_rxdata(38) => \mgt_rxdata_reg_reg_n_0_[38]\,
      mgt_rxdata(37) => \mgt_rxdata_reg_reg_n_0_[37]\,
      mgt_rxdata(36) => \mgt_rxdata_reg_reg_n_0_[36]\,
      mgt_rxdata(35) => \mgt_rxdata_reg_reg_n_0_[35]\,
      mgt_rxdata(34) => \mgt_rxdata_reg_reg_n_0_[34]\,
      mgt_rxdata(33) => \mgt_rxdata_reg_reg_n_0_[33]\,
      mgt_rxdata(32) => \mgt_rxdata_reg_reg_n_0_[32]\,
      mgt_rxdata(31) => \mgt_rxdata_reg_reg_n_0_[31]\,
      mgt_rxdata(30) => \mgt_rxdata_reg_reg_n_0_[30]\,
      mgt_rxdata(29) => \mgt_rxdata_reg_reg_n_0_[29]\,
      mgt_rxdata(28) => \mgt_rxdata_reg_reg_n_0_[28]\,
      mgt_rxdata(27) => \mgt_rxdata_reg_reg_n_0_[27]\,
      mgt_rxdata(26) => \mgt_rxdata_reg_reg_n_0_[26]\,
      mgt_rxdata(25) => \mgt_rxdata_reg_reg_n_0_[25]\,
      mgt_rxdata(24) => \mgt_rxdata_reg_reg_n_0_[24]\,
      mgt_rxdata(23) => \mgt_rxdata_reg_reg_n_0_[23]\,
      mgt_rxdata(22) => \mgt_rxdata_reg_reg_n_0_[22]\,
      mgt_rxdata(21) => \mgt_rxdata_reg_reg_n_0_[21]\,
      mgt_rxdata(20) => \mgt_rxdata_reg_reg_n_0_[20]\,
      mgt_rxdata(19) => \mgt_rxdata_reg_reg_n_0_[19]\,
      mgt_rxdata(18) => \mgt_rxdata_reg_reg_n_0_[18]\,
      mgt_rxdata(17) => \mgt_rxdata_reg_reg_n_0_[17]\,
      mgt_rxdata(16) => \mgt_rxdata_reg_reg_n_0_[16]\,
      mgt_rxdata(15) => \mgt_rxdata_reg_reg_n_0_[15]\,
      mgt_rxdata(14) => \mgt_rxdata_reg_reg_n_0_[14]\,
      mgt_rxdata(13) => \mgt_rxdata_reg_reg_n_0_[13]\,
      mgt_rxdata(12) => \mgt_rxdata_reg_reg_n_0_[12]\,
      mgt_rxdata(11) => \mgt_rxdata_reg_reg_n_0_[11]\,
      mgt_rxdata(10) => \mgt_rxdata_reg_reg_n_0_[10]\,
      mgt_rxdata(9) => \mgt_rxdata_reg_reg_n_0_[9]\,
      mgt_rxdata(8) => \mgt_rxdata_reg_reg_n_0_[8]\,
      mgt_rxdata(7) => \mgt_rxdata_reg_reg_n_0_[7]\,
      mgt_rxdata(6) => \mgt_rxdata_reg_reg_n_0_[6]\,
      mgt_rxdata(5) => \mgt_rxdata_reg_reg_n_0_[5]\,
      mgt_rxdata(4) => \mgt_rxdata_reg_reg_n_0_[4]\,
      mgt_rxdata(3) => \mgt_rxdata_reg_reg_n_0_[3]\,
      mgt_rxdata(2) => \mgt_rxdata_reg_reg_n_0_[2]\,
      mgt_rxdata(1) => \mgt_rxdata_reg_reg_n_0_[1]\,
      mgt_rxdata(0) => \mgt_rxdata_reg_reg_n_0_[0]\,
      mgt_rxlock(3) => \^clk156_lock\,
      mgt_rxlock(2) => \^clk156_lock\,
      mgt_rxlock(1) => \^clk156_lock\,
      mgt_rxlock(0) => \^clk156_lock\,
      mgt_tx_reset(3) => txsync_i_n_2,
      mgt_tx_reset(2) => txsync_i_n_2,
      mgt_tx_reset(1) => txsync_i_n_2,
      mgt_tx_reset(0) => txsync_i_n_2,
      mgt_txcharisk(7 downto 6) => gt3_txcharisk_in(1 downto 0),
      mgt_txcharisk(5 downto 4) => gt2_txcharisk_in(1 downto 0),
      mgt_txcharisk(3 downto 2) => gt1_txcharisk_in(1 downto 0),
      mgt_txcharisk(1) => xaui_0_core_n_142,
      mgt_txcharisk(0) => xaui_0_core_n_143,
      mgt_txdata(63 downto 48) => gt3_txdata_in(15 downto 0),
      mgt_txdata(47 downto 32) => gt2_txdata_in(15 downto 0),
      mgt_txdata(31 downto 16) => gt1_txdata_in(15 downto 0),
      mgt_txdata(15) => xaui_0_core_n_120,
      mgt_txdata(14) => xaui_0_core_n_121,
      mgt_txdata(13) => xaui_0_core_n_122,
      mgt_txdata(12) => xaui_0_core_n_123,
      mgt_txdata(11) => xaui_0_core_n_124,
      mgt_txdata(10) => xaui_0_core_n_125,
      mgt_txdata(9) => xaui_0_core_n_126,
      mgt_txdata(8) => xaui_0_core_n_127,
      mgt_txdata(7) => xaui_0_core_n_128,
      mgt_txdata(6) => xaui_0_core_n_129,
      mgt_txdata(5) => xaui_0_core_n_130,
      mgt_txdata(4) => xaui_0_core_n_131,
      mgt_txdata(3) => xaui_0_core_n_132,
      mgt_txdata(2) => xaui_0_core_n_133,
      mgt_txdata(1) => xaui_0_core_n_134,
      mgt_txdata(0) => xaui_0_core_n_135,
      prtad(4 downto 0) => B"00000",
      reset => reset156,
      signal_detect(3 downto 0) => uclk_signal_detect(3 downto 0),
      soft_reset => NLW_xaui_0_core_soft_reset_UNCONNECTED,
      status_vector(7 downto 0) => status_vector(7 downto 0),
      sync_status(3 downto 0) => \^debug\(4 downto 1),
      type_sel(1 downto 0) => B"00",
      usrclk => \^clk156_out\,
      xgmii_rxc(7 downto 0) => xgmii_rxc(7 downto 0),
      xgmii_rxd(63 downto 0) => xgmii_rxd(63 downto 0),
      xgmii_txc(7 downto 0) => xgmii_txc(7 downto 0),
      xgmii_txd(63 downto 0) => xgmii_txd(63 downto 0)
    );
xaui_0_core_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(7),
      I1 => mgt_rxdisperr_reg(7),
      O => mgt_codevalid(7)
    );
xaui_0_core_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(6),
      I1 => mgt_rxdisperr_reg(6),
      O => mgt_codevalid(6)
    );
xaui_0_core_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(5),
      I1 => mgt_rxdisperr_reg(5),
      O => mgt_codevalid(5)
    );
xaui_0_core_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(4),
      I1 => mgt_rxdisperr_reg(4),
      O => mgt_codevalid(4)
    );
xaui_0_core_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(3),
      I1 => mgt_rxdisperr_reg(3),
      O => mgt_codevalid(3)
    );
xaui_0_core_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(2),
      I1 => mgt_rxdisperr_reg(2),
      O => mgt_codevalid(2)
    );
xaui_0_core_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(1),
      I1 => mgt_rxdisperr_reg(1),
      O => mgt_codevalid(1)
    );
xaui_0_core_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mgt_rxnotintable_reg(0),
      I1 => mgt_rxdisperr_reg(0),
      O => mgt_codevalid(0)
    );
xaui_cl_clocking_i: entity work.xaui_0_xaui_0_cl_clocking
     port map (
      CLK => \^clk156_out\,
      gt0_txoutclk_out => gt0_txoutclk_i
    );
xaui_cl_resets_i: entity work.xaui_0_xaui_0_cl_resets
     port map (
      CLK => \^clk156_out\,
      \out\ => reset156,
      reset => reset,
      uclk_mgt_rx_reset5 => uclk_mgt_rx_reset5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xaui_0 is
  port (
    dclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk156_out : out STD_LOGIC;
    clk156_lock : out STD_LOGIC;
    refclk : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    xaui_tx_l0_p : out STD_LOGIC;
    xaui_tx_l0_n : out STD_LOGIC;
    xaui_tx_l1_p : out STD_LOGIC;
    xaui_tx_l1_n : out STD_LOGIC;
    xaui_tx_l2_p : out STD_LOGIC;
    xaui_tx_l2_n : out STD_LOGIC;
    xaui_tx_l3_p : out STD_LOGIC;
    xaui_tx_l3_n : out STD_LOGIC;
    xaui_rx_l0_p : in STD_LOGIC;
    xaui_rx_l0_n : in STD_LOGIC;
    xaui_rx_l1_p : in STD_LOGIC;
    xaui_rx_l1_n : in STD_LOGIC;
    xaui_rx_l2_p : in STD_LOGIC;
    xaui_rx_l2_n : in STD_LOGIC;
    xaui_rx_l3_p : in STD_LOGIC;
    xaui_rx_l3_n : in STD_LOGIC;
    signal_detect : in STD_LOGIC_VECTOR ( 3 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 5 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 6 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xaui_0 : entity is true;
  attribute x_core_info : string;
  attribute x_core_info of xaui_0 : entity is "xaui_v12_2_5,Vivado 2016.2";
end xaui_0;

architecture STRUCTURE of xaui_0 is
  signal NLW_U0_gt0_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_txdlysresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_txphaligndone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_txphinitdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_txdlysresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_txphaligndone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_txphinitdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt1_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_txdlysresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_txphaligndone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_txphinitdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt2_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_eyescandataerror_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_rxcommadet_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_rxprbserr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_rxresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_txdlysresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_txphaligndone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_txphinitdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt3_txresetdone_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt_qplllock_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gt0_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_gt0_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_gt0_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_gt0_rxdisperr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt0_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_gt0_rxnotintable_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt1_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_gt1_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_gt1_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_gt1_rxdisperr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt1_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_gt1_rxnotintable_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt2_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_gt2_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_gt2_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_gt2_rxdisperr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt2_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_gt2_rxnotintable_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt3_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_gt3_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_gt3_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_gt3_rxdisperr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gt3_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_gt3_rxnotintable_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.xaui_0_xaui_0_block
     port map (
      clk156_lock => clk156_lock,
      clk156_out => clk156_out,
      configuration_vector(6 downto 0) => configuration_vector(6 downto 0),
      dclk => dclk,
      debug(5 downto 0) => debug(5 downto 0),
      gt0_dmonitorout_out(7 downto 0) => NLW_U0_gt0_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt0_drpaddr(8 downto 0) => B"000000000",
      gt0_drpdi(15 downto 0) => B"0000000000000000",
      gt0_drpdo(15 downto 0) => NLW_U0_gt0_drpdo_UNCONNECTED(15 downto 0),
      gt0_drpen => '0',
      gt0_drprdy => NLW_U0_gt0_drprdy_UNCONNECTED,
      gt0_drpwe => '0',
      gt0_eyescandataerror_out => NLW_U0_gt0_eyescandataerror_out_UNCONNECTED,
      gt0_eyescanreset_in => '0',
      gt0_eyescantrigger_in => '0',
      gt0_loopback_in(2 downto 0) => B"000",
      gt0_rxbufstatus_out(2 downto 0) => NLW_U0_gt0_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt0_rxcdrhold_in => '0',
      gt0_rxcommadet_out => NLW_U0_gt0_rxcommadet_out_UNCONNECTED,
      gt0_rxdfelpmreset_in => '0',
      gt0_rxdisperr_out(1 downto 0) => NLW_U0_gt0_rxdisperr_out_UNCONNECTED(1 downto 0),
      gt0_rxlpmen_in => '1',
      gt0_rxmonitorout_out(6 downto 0) => NLW_U0_gt0_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => B"00",
      gt0_rxnotintable_out(1 downto 0) => NLW_U0_gt0_rxnotintable_out_UNCONNECTED(1 downto 0),
      gt0_rxpcsreset_in => '0',
      gt0_rxpmareset_in => '0',
      gt0_rxpolarity_in => '0',
      gt0_rxprbscntreset_in => '0',
      gt0_rxprbserr_out => NLW_U0_gt0_rxprbserr_out_UNCONNECTED,
      gt0_rxprbssel_in(2 downto 0) => B"000",
      gt0_rxrate_in(2 downto 0) => B"000",
      gt0_rxresetdone_out => NLW_U0_gt0_rxresetdone_out_UNCONNECTED,
      gt0_txdiffctrl_in(3 downto 0) => B"1000",
      gt0_txdlysresetdone_out => NLW_U0_gt0_txdlysresetdone_out_UNCONNECTED,
      gt0_txinhibit_in => '0',
      gt0_txpcsreset_in => '0',
      gt0_txphaligndone_out => NLW_U0_gt0_txphaligndone_out_UNCONNECTED,
      gt0_txphinitdone_out => NLW_U0_gt0_txphinitdone_out_UNCONNECTED,
      gt0_txpmareset_in => '0',
      gt0_txpolarity_in => '0',
      gt0_txpostcursor_in(4 downto 0) => B"00000",
      gt0_txprbsforceerr_in => '0',
      gt0_txprbssel_in(2 downto 0) => B"000",
      gt0_txprecursor_in(4 downto 0) => B"00000",
      gt0_txresetdone_out => NLW_U0_gt0_txresetdone_out_UNCONNECTED,
      gt1_dmonitorout_out(7 downto 0) => NLW_U0_gt1_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt1_drpaddr(8 downto 0) => B"000000000",
      gt1_drpdi(15 downto 0) => B"0000000000000000",
      gt1_drpdo(15 downto 0) => NLW_U0_gt1_drpdo_UNCONNECTED(15 downto 0),
      gt1_drpen => '0',
      gt1_drprdy => NLW_U0_gt1_drprdy_UNCONNECTED,
      gt1_drpwe => '0',
      gt1_eyescandataerror_out => NLW_U0_gt1_eyescandataerror_out_UNCONNECTED,
      gt1_eyescanreset_in => '0',
      gt1_eyescantrigger_in => '0',
      gt1_loopback_in(2 downto 0) => B"000",
      gt1_rxbufstatus_out(2 downto 0) => NLW_U0_gt1_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt1_rxcdrhold_in => '0',
      gt1_rxcommadet_out => NLW_U0_gt1_rxcommadet_out_UNCONNECTED,
      gt1_rxdfelpmreset_in => '0',
      gt1_rxdisperr_out(1 downto 0) => NLW_U0_gt1_rxdisperr_out_UNCONNECTED(1 downto 0),
      gt1_rxlpmen_in => '1',
      gt1_rxmonitorout_out(6 downto 0) => NLW_U0_gt1_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt1_rxmonitorsel_in(1 downto 0) => B"00",
      gt1_rxnotintable_out(1 downto 0) => NLW_U0_gt1_rxnotintable_out_UNCONNECTED(1 downto 0),
      gt1_rxpcsreset_in => '0',
      gt1_rxpmareset_in => '0',
      gt1_rxpolarity_in => '0',
      gt1_rxprbscntreset_in => '0',
      gt1_rxprbserr_out => NLW_U0_gt1_rxprbserr_out_UNCONNECTED,
      gt1_rxprbssel_in(2 downto 0) => B"000",
      gt1_rxrate_in(2 downto 0) => B"000",
      gt1_rxresetdone_out => NLW_U0_gt1_rxresetdone_out_UNCONNECTED,
      gt1_txdiffctrl_in(3 downto 0) => B"1000",
      gt1_txdlysresetdone_out => NLW_U0_gt1_txdlysresetdone_out_UNCONNECTED,
      gt1_txinhibit_in => '0',
      gt1_txpcsreset_in => '0',
      gt1_txphaligndone_out => NLW_U0_gt1_txphaligndone_out_UNCONNECTED,
      gt1_txphinitdone_out => NLW_U0_gt1_txphinitdone_out_UNCONNECTED,
      gt1_txpmareset_in => '0',
      gt1_txpolarity_in => '0',
      gt1_txpostcursor_in(4 downto 0) => B"00000",
      gt1_txprbsforceerr_in => '0',
      gt1_txprbssel_in(2 downto 0) => B"000",
      gt1_txprecursor_in(4 downto 0) => B"00000",
      gt1_txresetdone_out => NLW_U0_gt1_txresetdone_out_UNCONNECTED,
      gt2_dmonitorout_out(7 downto 0) => NLW_U0_gt2_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt2_drpaddr(8 downto 0) => B"000000000",
      gt2_drpdi(15 downto 0) => B"0000000000000000",
      gt2_drpdo(15 downto 0) => NLW_U0_gt2_drpdo_UNCONNECTED(15 downto 0),
      gt2_drpen => '0',
      gt2_drprdy => NLW_U0_gt2_drprdy_UNCONNECTED,
      gt2_drpwe => '0',
      gt2_eyescandataerror_out => NLW_U0_gt2_eyescandataerror_out_UNCONNECTED,
      gt2_eyescanreset_in => '0',
      gt2_eyescantrigger_in => '0',
      gt2_loopback_in(2 downto 0) => B"000",
      gt2_rxbufstatus_out(2 downto 0) => NLW_U0_gt2_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt2_rxcdrhold_in => '0',
      gt2_rxcommadet_out => NLW_U0_gt2_rxcommadet_out_UNCONNECTED,
      gt2_rxdfelpmreset_in => '0',
      gt2_rxdisperr_out(1 downto 0) => NLW_U0_gt2_rxdisperr_out_UNCONNECTED(1 downto 0),
      gt2_rxlpmen_in => '1',
      gt2_rxmonitorout_out(6 downto 0) => NLW_U0_gt2_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt2_rxmonitorsel_in(1 downto 0) => B"00",
      gt2_rxnotintable_out(1 downto 0) => NLW_U0_gt2_rxnotintable_out_UNCONNECTED(1 downto 0),
      gt2_rxpcsreset_in => '0',
      gt2_rxpmareset_in => '0',
      gt2_rxpolarity_in => '0',
      gt2_rxprbscntreset_in => '0',
      gt2_rxprbserr_out => NLW_U0_gt2_rxprbserr_out_UNCONNECTED,
      gt2_rxprbssel_in(2 downto 0) => B"000",
      gt2_rxrate_in(2 downto 0) => B"000",
      gt2_rxresetdone_out => NLW_U0_gt2_rxresetdone_out_UNCONNECTED,
      gt2_txdiffctrl_in(3 downto 0) => B"1000",
      gt2_txdlysresetdone_out => NLW_U0_gt2_txdlysresetdone_out_UNCONNECTED,
      gt2_txinhibit_in => '0',
      gt2_txpcsreset_in => '0',
      gt2_txphaligndone_out => NLW_U0_gt2_txphaligndone_out_UNCONNECTED,
      gt2_txphinitdone_out => NLW_U0_gt2_txphinitdone_out_UNCONNECTED,
      gt2_txpmareset_in => '0',
      gt2_txpolarity_in => '0',
      gt2_txpostcursor_in(4 downto 0) => B"00000",
      gt2_txprbsforceerr_in => '0',
      gt2_txprbssel_in(2 downto 0) => B"000",
      gt2_txprecursor_in(4 downto 0) => B"00000",
      gt2_txresetdone_out => NLW_U0_gt2_txresetdone_out_UNCONNECTED,
      gt3_dmonitorout_out(7 downto 0) => NLW_U0_gt3_dmonitorout_out_UNCONNECTED(7 downto 0),
      gt3_drpaddr(8 downto 0) => B"000000000",
      gt3_drpdi(15 downto 0) => B"0000000000000000",
      gt3_drpdo(15 downto 0) => NLW_U0_gt3_drpdo_UNCONNECTED(15 downto 0),
      gt3_drpen => '0',
      gt3_drprdy => NLW_U0_gt3_drprdy_UNCONNECTED,
      gt3_drpwe => '0',
      gt3_eyescandataerror_out => NLW_U0_gt3_eyescandataerror_out_UNCONNECTED,
      gt3_eyescanreset_in => '0',
      gt3_eyescantrigger_in => '0',
      gt3_loopback_in(2 downto 0) => B"000",
      gt3_rxbufstatus_out(2 downto 0) => NLW_U0_gt3_rxbufstatus_out_UNCONNECTED(2 downto 0),
      gt3_rxcdrhold_in => '0',
      gt3_rxcommadet_out => NLW_U0_gt3_rxcommadet_out_UNCONNECTED,
      gt3_rxdfelpmreset_in => '0',
      gt3_rxdisperr_out(1 downto 0) => NLW_U0_gt3_rxdisperr_out_UNCONNECTED(1 downto 0),
      gt3_rxlpmen_in => '1',
      gt3_rxmonitorout_out(6 downto 0) => NLW_U0_gt3_rxmonitorout_out_UNCONNECTED(6 downto 0),
      gt3_rxmonitorsel_in(1 downto 0) => B"00",
      gt3_rxnotintable_out(1 downto 0) => NLW_U0_gt3_rxnotintable_out_UNCONNECTED(1 downto 0),
      gt3_rxpcsreset_in => '0',
      gt3_rxpmareset_in => '0',
      gt3_rxpolarity_in => '0',
      gt3_rxprbscntreset_in => '0',
      gt3_rxprbserr_out => NLW_U0_gt3_rxprbserr_out_UNCONNECTED,
      gt3_rxprbssel_in(2 downto 0) => B"000",
      gt3_rxrate_in(2 downto 0) => B"000",
      gt3_rxresetdone_out => NLW_U0_gt3_rxresetdone_out_UNCONNECTED,
      gt3_txdiffctrl_in(3 downto 0) => B"1000",
      gt3_txdlysresetdone_out => NLW_U0_gt3_txdlysresetdone_out_UNCONNECTED,
      gt3_txinhibit_in => '0',
      gt3_txpcsreset_in => '0',
      gt3_txphaligndone_out => NLW_U0_gt3_txphaligndone_out_UNCONNECTED,
      gt3_txphinitdone_out => NLW_U0_gt3_txphinitdone_out_UNCONNECTED,
      gt3_txpmareset_in => '0',
      gt3_txpolarity_in => '0',
      gt3_txpostcursor_in(4 downto 0) => B"00000",
      gt3_txprbsforceerr_in => '0',
      gt3_txprbssel_in(2 downto 0) => B"000",
      gt3_txprecursor_in(4 downto 0) => B"00000",
      gt3_txresetdone_out => NLW_U0_gt3_txresetdone_out_UNCONNECTED,
      gt_qplllock_out => NLW_U0_gt_qplllock_out_UNCONNECTED,
      refclk => refclk,
      reset => reset,
      signal_detect(3 downto 0) => signal_detect(3 downto 0),
      status_vector(7 downto 0) => status_vector(7 downto 0),
      xaui_rx_l0_n => xaui_rx_l0_n,
      xaui_rx_l0_p => xaui_rx_l0_p,
      xaui_rx_l1_n => xaui_rx_l1_n,
      xaui_rx_l1_p => xaui_rx_l1_p,
      xaui_rx_l2_n => xaui_rx_l2_n,
      xaui_rx_l2_p => xaui_rx_l2_p,
      xaui_rx_l3_n => xaui_rx_l3_n,
      xaui_rx_l3_p => xaui_rx_l3_p,
      xaui_tx_l0_n => xaui_tx_l0_n,
      xaui_tx_l0_p => xaui_tx_l0_p,
      xaui_tx_l1_n => xaui_tx_l1_n,
      xaui_tx_l1_p => xaui_tx_l1_p,
      xaui_tx_l2_n => xaui_tx_l2_n,
      xaui_tx_l2_p => xaui_tx_l2_p,
      xaui_tx_l3_n => xaui_tx_l3_n,
      xaui_tx_l3_p => xaui_tx_l3_p,
      xgmii_rxc(7 downto 0) => xgmii_rxc(7 downto 0),
      xgmii_rxd(63 downto 0) => xgmii_rxd(63 downto 0),
      xgmii_txc(7 downto 0) => xgmii_txc(7 downto 0),
      xgmii_txd(63 downto 0) => xgmii_txd(63 downto 0)
    );
end STRUCTURE;
