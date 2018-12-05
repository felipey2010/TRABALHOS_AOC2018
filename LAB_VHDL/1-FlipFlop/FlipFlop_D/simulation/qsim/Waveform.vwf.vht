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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/30/2018 18:30:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flipflop_d
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flipflop_d_vhd_vec_tst IS
END flipflop_d_vhd_vec_tst;
ARCHITECTURE flipflop_d_arch OF flipflop_d_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL saida : STD_LOGIC;
SIGNAL v : STD_LOGIC;
COMPONENT flipflop_d
	PORT (
	clock : IN STD_LOGIC;
	saida : OUT STD_LOGIC;
	v : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flipflop_d
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	saida => saida,
	v => v
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- v
t_prcs_v: PROCESS
BEGIN
LOOP
	v <= '0';
	WAIT FOR 20000 ps;
	v <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_v;
END flipflop_d_arch;
