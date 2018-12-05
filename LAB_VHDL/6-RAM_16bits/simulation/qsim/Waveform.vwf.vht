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
-- Generated on "12/05/2018 01:15:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM_16bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_16bits_vhd_vec_tst IS
END RAM_16bits_vhd_vec_tst;
ARCHITECTURE RAM_16bits_arch OF RAM_16bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I_addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL I_clk : STD_LOGIC;
SIGNAL I_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL I_we : STD_LOGIC;
SIGNAL O_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RAM_16bits
	PORT (
	I_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	I_clk : IN STD_LOGIC;
	I_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	I_we : IN STD_LOGIC;
	O_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RAM_16bits
	PORT MAP (
-- list connections between master ports and signals
	I_addr => I_addr,
	I_clk => I_clk,
	I_data => I_data,
	I_we => I_we,
	O_data => O_data
	);
-- I_addr[15]
t_prcs_I_addr_15: PROCESS
BEGIN
	I_addr(15) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_15;
-- I_addr[14]
t_prcs_I_addr_14: PROCESS
BEGIN
	I_addr(14) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_14;
-- I_addr[13]
t_prcs_I_addr_13: PROCESS
BEGIN
	I_addr(13) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_13;
-- I_addr[12]
t_prcs_I_addr_12: PROCESS
BEGIN
	I_addr(12) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_12;
-- I_addr[11]
t_prcs_I_addr_11: PROCESS
BEGIN
	I_addr(11) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_11;
-- I_addr[10]
t_prcs_I_addr_10: PROCESS
BEGIN
	I_addr(10) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_10;
-- I_addr[9]
t_prcs_I_addr_9: PROCESS
BEGIN
	I_addr(9) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_9;
-- I_addr[8]
t_prcs_I_addr_8: PROCESS
BEGIN
	I_addr(8) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_8;
-- I_addr[7]
t_prcs_I_addr_7: PROCESS
BEGIN
	I_addr(7) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_7;
-- I_addr[6]
t_prcs_I_addr_6: PROCESS
BEGIN
	I_addr(6) <= '0';
	WAIT FOR 640000 ps;
	I_addr(6) <= '1';
WAIT;
END PROCESS t_prcs_I_addr_6;
-- I_addr[5]
t_prcs_I_addr_5: PROCESS
BEGIN
	I_addr(5) <= '0';
	WAIT FOR 320000 ps;
	I_addr(5) <= '1';
	WAIT FOR 320000 ps;
	I_addr(5) <= '0';
	WAIT FOR 320000 ps;
	I_addr(5) <= '1';
WAIT;
END PROCESS t_prcs_I_addr_5;
-- I_addr[4]
t_prcs_I_addr_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		I_addr(4) <= '0';
		WAIT FOR 160000 ps;
		I_addr(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	I_addr(4) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_4;
-- I_addr[3]
t_prcs_I_addr_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		I_addr(3) <= '0';
		WAIT FOR 80000 ps;
		I_addr(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	I_addr(3) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_3;
-- I_addr[2]
t_prcs_I_addr_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		I_addr(2) <= '0';
		WAIT FOR 40000 ps;
		I_addr(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	I_addr(2) <= '0';
WAIT;
END PROCESS t_prcs_I_addr_2;
-- I_addr[1]
t_prcs_I_addr_1: PROCESS
BEGIN
LOOP
	I_addr(1) <= '0';
	WAIT FOR 20000 ps;
	I_addr(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I_addr_1;
-- I_addr[0]
t_prcs_I_addr_0: PROCESS
BEGIN
LOOP
	I_addr(0) <= '0';
	WAIT FOR 10000 ps;
	I_addr(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I_addr_0;

-- I_clk
t_prcs_I_clk: PROCESS
BEGIN
LOOP
	I_clk <= '0';
	WAIT FOR 10000 ps;
	I_clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I_clk;
-- I_data[15]
t_prcs_I_data_15: PROCESS
BEGIN
	I_data(15) <= '0';
WAIT;
END PROCESS t_prcs_I_data_15;
-- I_data[14]
t_prcs_I_data_14: PROCESS
BEGIN
	I_data(14) <= '0';
WAIT;
END PROCESS t_prcs_I_data_14;
-- I_data[13]
t_prcs_I_data_13: PROCESS
BEGIN
	I_data(13) <= '0';
WAIT;
END PROCESS t_prcs_I_data_13;
-- I_data[12]
t_prcs_I_data_12: PROCESS
BEGIN
	I_data(12) <= '0';
WAIT;
END PROCESS t_prcs_I_data_12;
-- I_data[11]
t_prcs_I_data_11: PROCESS
BEGIN
	I_data(11) <= '0';
WAIT;
END PROCESS t_prcs_I_data_11;
-- I_data[10]
t_prcs_I_data_10: PROCESS
BEGIN
	I_data(10) <= '0';
WAIT;
END PROCESS t_prcs_I_data_10;
-- I_data[9]
t_prcs_I_data_9: PROCESS
BEGIN
	I_data(9) <= '0';
WAIT;
END PROCESS t_prcs_I_data_9;
-- I_data[8]
t_prcs_I_data_8: PROCESS
BEGIN
	I_data(8) <= '0';
WAIT;
END PROCESS t_prcs_I_data_8;
-- I_data[7]
t_prcs_I_data_7: PROCESS
BEGIN
	I_data(7) <= '0';
WAIT;
END PROCESS t_prcs_I_data_7;
-- I_data[6]
t_prcs_I_data_6: PROCESS
BEGIN
	I_data(6) <= '0';
WAIT;
END PROCESS t_prcs_I_data_6;
-- I_data[5]
t_prcs_I_data_5: PROCESS
BEGIN
	I_data(5) <= '0';
	WAIT FOR 640000 ps;
	I_data(5) <= '1';
WAIT;
END PROCESS t_prcs_I_data_5;
-- I_data[4]
t_prcs_I_data_4: PROCESS
BEGIN
	I_data(4) <= '0';
	WAIT FOR 320000 ps;
	I_data(4) <= '1';
	WAIT FOR 320000 ps;
	I_data(4) <= '0';
	WAIT FOR 320000 ps;
	I_data(4) <= '1';
WAIT;
END PROCESS t_prcs_I_data_4;
-- I_data[3]
t_prcs_I_data_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		I_data(3) <= '0';
		WAIT FOR 160000 ps;
		I_data(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	I_data(3) <= '0';
WAIT;
END PROCESS t_prcs_I_data_3;
-- I_data[2]
t_prcs_I_data_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		I_data(2) <= '0';
		WAIT FOR 80000 ps;
		I_data(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	I_data(2) <= '0';
WAIT;
END PROCESS t_prcs_I_data_2;
-- I_data[1]
t_prcs_I_data_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		I_data(1) <= '0';
		WAIT FOR 40000 ps;
		I_data(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	I_data(1) <= '0';
WAIT;
END PROCESS t_prcs_I_data_1;
-- I_data[0]
t_prcs_I_data_0: PROCESS
BEGIN
LOOP
	I_data(0) <= '0';
	WAIT FOR 20000 ps;
	I_data(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I_data_0;

-- I_we
t_prcs_I_we: PROCESS
BEGIN
LOOP
	I_we <= '0';
	WAIT FOR 20000 ps;
	I_we <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_I_we;
END RAM_16bits_arch;
