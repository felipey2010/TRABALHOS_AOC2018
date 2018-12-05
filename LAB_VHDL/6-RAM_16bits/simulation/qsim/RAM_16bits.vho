-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/05/2018 01:15:05"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM_16bits IS
    PORT (
	I_clk : IN std_logic;
	I_we : IN std_logic;
	I_addr : IN std_logic_vector(15 DOWNTO 0);
	I_data : IN std_logic_vector(15 DOWNTO 0);
	O_data : OUT std_logic_vector(15 DOWNTO 0)
	);
END RAM_16bits;

ARCHITECTURE structure OF RAM_16bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I_clk : std_logic;
SIGNAL ww_I_we : std_logic;
SIGNAL ww_I_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_I_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_O_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I_addr[5]~input_o\ : std_logic;
SIGNAL \I_addr[6]~input_o\ : std_logic;
SIGNAL \I_addr[7]~input_o\ : std_logic;
SIGNAL \I_addr[8]~input_o\ : std_logic;
SIGNAL \I_addr[9]~input_o\ : std_logic;
SIGNAL \I_addr[10]~input_o\ : std_logic;
SIGNAL \I_addr[11]~input_o\ : std_logic;
SIGNAL \I_addr[12]~input_o\ : std_logic;
SIGNAL \I_addr[13]~input_o\ : std_logic;
SIGNAL \I_addr[14]~input_o\ : std_logic;
SIGNAL \I_addr[15]~input_o\ : std_logic;
SIGNAL \O_data[0]~output_o\ : std_logic;
SIGNAL \O_data[1]~output_o\ : std_logic;
SIGNAL \O_data[2]~output_o\ : std_logic;
SIGNAL \O_data[3]~output_o\ : std_logic;
SIGNAL \O_data[4]~output_o\ : std_logic;
SIGNAL \O_data[5]~output_o\ : std_logic;
SIGNAL \O_data[6]~output_o\ : std_logic;
SIGNAL \O_data[7]~output_o\ : std_logic;
SIGNAL \O_data[8]~output_o\ : std_logic;
SIGNAL \O_data[9]~output_o\ : std_logic;
SIGNAL \O_data[10]~output_o\ : std_logic;
SIGNAL \O_data[11]~output_o\ : std_logic;
SIGNAL \O_data[12]~output_o\ : std_logic;
SIGNAL \O_data[13]~output_o\ : std_logic;
SIGNAL \O_data[14]~output_o\ : std_logic;
SIGNAL \O_data[15]~output_o\ : std_logic;
SIGNAL \I_we~input_o\ : std_logic;
SIGNAL \I_clk~input_o\ : std_logic;
SIGNAL \I_data[0]~input_o\ : std_logic;
SIGNAL \I_addr[0]~input_o\ : std_logic;
SIGNAL \I_addr[1]~input_o\ : std_logic;
SIGNAL \I_addr[2]~input_o\ : std_logic;
SIGNAL \I_addr[3]~input_o\ : std_logic;
SIGNAL \I_addr[4]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \I_data[1]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \I_data[2]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \I_data[3]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \I_data[4]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \I_data[5]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \I_data[6]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \I_data[7]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \I_data[8]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \I_data[9]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \I_data[10]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \I_data[11]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \I_data[12]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \I_data[13]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \I_data[14]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \I_data[15]~input_o\ : std_logic;
SIGNAL \ram_16_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \ALT_INV_I_we~input_o\ : std_logic;

BEGIN

ww_I_clk <= I_clk;
ww_I_we <= I_we;
ww_I_addr <= I_addr;
ww_I_data <= I_data;
O_data <= ww_O_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_16_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \I_data[0]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \I_data[1]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \I_data[2]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \I_data[3]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \I_data[4]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \I_data[5]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \I_data[6]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \I_data[7]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \I_data[8]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \I_data[9]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \I_data[10]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \I_data[11]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \I_data[12]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \I_data[13]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \I_data[14]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\ram_16_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \I_data[15]~input_o\;

\ram_16_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\I_addr[4]~input_o\ & \I_addr[3]~input_o\ & \I_addr[2]~input_o\ & \I_addr[1]~input_o\ & \I_addr[0]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \ram_16_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);
\ALT_INV_I_we~input_o\ <= NOT \I_we~input_o\;

\O_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[0]~output_o\);

\O_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[1]~output_o\);

\O_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[2]~output_o\);

\O_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[3]~output_o\);

\O_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[4]~output_o\);

\O_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[5]~output_o\);

\O_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[6]~output_o\);

\O_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[7]~output_o\);

\O_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[8]~output_o\);

\O_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[9]~output_o\);

\O_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[10]~output_o\);

\O_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[11]~output_o\);

\O_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[12]~output_o\);

\O_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[13]~output_o\);

\O_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[14]~output_o\);

\O_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_16_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	devoe => ww_devoe,
	o => \O_data[15]~output_o\);

\I_we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_we,
	o => \I_we~input_o\);

\I_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_clk,
	o => \I_clk~input_o\);

\I_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(0),
	o => \I_data[0]~input_o\);

\I_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(0),
	o => \I_addr[0]~input_o\);

\I_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(1),
	o => \I_addr[1]~input_o\);

\I_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(2),
	o => \I_addr[2]~input_o\);

\I_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(3),
	o => \I_addr[3]~input_o\);

\I_addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(4),
	o => \I_addr[4]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\I_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(1),
	o => \I_data[1]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\I_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(2),
	o => \I_data[2]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\I_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(3),
	o => \I_data[3]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\I_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(4),
	o => \I_data[4]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\I_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(5),
	o => \I_data[5]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\I_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(6),
	o => \I_data[6]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\I_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(7),
	o => \I_data[7]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\I_data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(8),
	o => \I_data[8]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\I_data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(9),
	o => \I_data[9]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\I_data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(10),
	o => \I_data[10]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\I_data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(11),
	o => \I_data[11]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\I_data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(12),
	o => \I_data[12]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\I_data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(13),
	o => \I_data[13]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\I_data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(14),
	o => \I_data[14]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\I_data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_data(15),
	o => \I_data[15]~input_o\);

\ram_16_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RAM_16bits.ram0_RAM_16bits_697d62bd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "altsyncram:ram_16_rtl_0|altsyncram_r0v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \I_we~input_o\,
	portbre => \ALT_INV_I_we~input_o\,
	clk0 => \I_clk~input_o\,
	portadatain => \ram_16_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \ram_16_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \ram_16_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_16_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\I_addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(5),
	o => \I_addr[5]~input_o\);

\I_addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(6),
	o => \I_addr[6]~input_o\);

\I_addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(7),
	o => \I_addr[7]~input_o\);

\I_addr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(8),
	o => \I_addr[8]~input_o\);

\I_addr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(9),
	o => \I_addr[9]~input_o\);

\I_addr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(10),
	o => \I_addr[10]~input_o\);

\I_addr[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(11),
	o => \I_addr[11]~input_o\);

\I_addr[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(12),
	o => \I_addr[12]~input_o\);

\I_addr[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(13),
	o => \I_addr[13]~input_o\);

\I_addr[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(14),
	o => \I_addr[14]~input_o\);

\I_addr[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I_addr(15),
	o => \I_addr[15]~input_o\);

ww_O_data(0) <= \O_data[0]~output_o\;

ww_O_data(1) <= \O_data[1]~output_o\;

ww_O_data(2) <= \O_data[2]~output_o\;

ww_O_data(3) <= \O_data[3]~output_o\;

ww_O_data(4) <= \O_data[4]~output_o\;

ww_O_data(5) <= \O_data[5]~output_o\;

ww_O_data(6) <= \O_data[6]~output_o\;

ww_O_data(7) <= \O_data[7]~output_o\;

ww_O_data(8) <= \O_data[8]~output_o\;

ww_O_data(9) <= \O_data[9]~output_o\;

ww_O_data(10) <= \O_data[10]~output_o\;

ww_O_data(11) <= \O_data[11]~output_o\;

ww_O_data(12) <= \O_data[12]~output_o\;

ww_O_data(13) <= \O_data[13]~output_o\;

ww_O_data(14) <= \O_data[14]~output_o\;

ww_O_data(15) <= \O_data[15]~output_o\;
END structure;


