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

-- DATE "11/29/2018 18:50:20"

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

ENTITY 	multiplex IS
    PORT (
	p1 : IN std_logic_vector(1 DOWNTO 0);
	p2 : IN std_logic_vector(1 DOWNTO 0);
	p3 : IN std_logic_vector(1 DOWNTO 0);
	p4 : IN std_logic_vector(1 DOWNTO 0);
	escolha : IN std_logic_vector(1 DOWNTO 0);
	saida : OUT std_logic_vector(1 DOWNTO 0)
	);
END multiplex;

ARCHITECTURE structure OF multiplex IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_p1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_p2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_p3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_p4 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_escolha : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(1 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \p1[0]~input_o\ : std_logic;
SIGNAL \p2[0]~input_o\ : std_logic;
SIGNAL \p3[0]~input_o\ : std_logic;
SIGNAL \p4[0]~input_o\ : std_logic;
SIGNAL \escolha[0]~input_o\ : std_logic;
SIGNAL \escolha[1]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \p1[1]~input_o\ : std_logic;
SIGNAL \p2[1]~input_o\ : std_logic;
SIGNAL \p3[1]~input_o\ : std_logic;
SIGNAL \p4[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_p4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_p3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_p2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_p1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_escolha[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_escolha[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_p4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_p3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_p2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_p1[0]~input_o\ : std_logic;

BEGIN

ww_p1 <= p1;
ww_p2 <= p2;
ww_p3 <= p3;
ww_p4 <= p4;
ww_escolha <= escolha;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_p4[1]~input_o\ <= NOT \p4[1]~input_o\;
\ALT_INV_p3[1]~input_o\ <= NOT \p3[1]~input_o\;
\ALT_INV_p2[1]~input_o\ <= NOT \p2[1]~input_o\;
\ALT_INV_p1[1]~input_o\ <= NOT \p1[1]~input_o\;
\ALT_INV_escolha[1]~input_o\ <= NOT \escolha[1]~input_o\;
\ALT_INV_escolha[0]~input_o\ <= NOT \escolha[0]~input_o\;
\ALT_INV_p4[0]~input_o\ <= NOT \p4[0]~input_o\;
\ALT_INV_p3[0]~input_o\ <= NOT \p3[0]~input_o\;
\ALT_INV_p2[0]~input_o\ <= NOT \p2[0]~input_o\;
\ALT_INV_p1[0]~input_o\ <= NOT \p1[0]~input_o\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\p1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1(0),
	o => \p1[0]~input_o\);

\p2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2(0),
	o => \p2[0]~input_o\);

\p3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p3(0),
	o => \p3[0]~input_o\);

\p4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p4(0),
	o => \p4[0]~input_o\);

\escolha[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escolha(0),
	o => \escolha[0]~input_o\);

\escolha[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escolha(1),
	o => \escolha[1]~input_o\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \escolha[0]~input_o\ & ( \escolha[1]~input_o\ & ( \p4[0]~input_o\ ) ) ) # ( !\escolha[0]~input_o\ & ( \escolha[1]~input_o\ & ( \p3[0]~input_o\ ) ) ) # ( \escolha[0]~input_o\ & ( !\escolha[1]~input_o\ & ( \p2[0]~input_o\ ) ) ) # ( 
-- !\escolha[0]~input_o\ & ( !\escolha[1]~input_o\ & ( \p1[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1[0]~input_o\,
	datab => \ALT_INV_p2[0]~input_o\,
	datac => \ALT_INV_p3[0]~input_o\,
	datad => \ALT_INV_p4[0]~input_o\,
	datae => \ALT_INV_escolha[0]~input_o\,
	dataf => \ALT_INV_escolha[1]~input_o\,
	combout => \Mux1~0_combout\);

\p1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1(1),
	o => \p1[1]~input_o\);

\p2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p2(1),
	o => \p2[1]~input_o\);

\p3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p3(1),
	o => \p3[1]~input_o\);

\p4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p4(1),
	o => \p4[1]~input_o\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \escolha[0]~input_o\ & ( \escolha[1]~input_o\ & ( \p4[1]~input_o\ ) ) ) # ( !\escolha[0]~input_o\ & ( \escolha[1]~input_o\ & ( \p3[1]~input_o\ ) ) ) # ( \escolha[0]~input_o\ & ( !\escolha[1]~input_o\ & ( \p2[1]~input_o\ ) ) ) # ( 
-- !\escolha[0]~input_o\ & ( !\escolha[1]~input_o\ & ( \p1[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p1[1]~input_o\,
	datab => \ALT_INV_p2[1]~input_o\,
	datac => \ALT_INV_p3[1]~input_o\,
	datad => \ALT_INV_p4[1]~input_o\,
	datae => \ALT_INV_escolha[0]~input_o\,
	dataf => \ALT_INV_escolha[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;
END structure;


