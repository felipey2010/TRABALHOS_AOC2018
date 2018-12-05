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
-- Generated on "12/05/2018 00:54:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM_16bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_16bits_vhd_vec_tst IS
END ROM_16bits_vhd_vec_tst;
ARCHITECTURE ROM_16bits_arch OF ROM_16bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ROM_16bits
	PORT (
	address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM_16bits
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	data => data
	);
-- address[15]
t_prcs_address_15: PROCESS
BEGIN
	address(15) <= '0';
WAIT;
END PROCESS t_prcs_address_15;
-- address[14]
t_prcs_address_14: PROCESS
BEGIN
	address(14) <= '0';
WAIT;
END PROCESS t_prcs_address_14;
-- address[13]
t_prcs_address_13: PROCESS
BEGIN
	address(13) <= '0';
WAIT;
END PROCESS t_prcs_address_13;
-- address[12]
t_prcs_address_12: PROCESS
BEGIN
	address(12) <= '0';
WAIT;
END PROCESS t_prcs_address_12;
-- address[11]
t_prcs_address_11: PROCESS
BEGIN
	address(11) <= '0';
WAIT;
END PROCESS t_prcs_address_11;
-- address[10]
t_prcs_address_10: PROCESS
BEGIN
	address(10) <= '0';
WAIT;
END PROCESS t_prcs_address_10;
-- address[9]
t_prcs_address_9: PROCESS
BEGIN
	address(9) <= '0';
WAIT;
END PROCESS t_prcs_address_9;
-- address[8]
t_prcs_address_8: PROCESS
BEGIN
	address(8) <= '0';
WAIT;
END PROCESS t_prcs_address_8;
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '0';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '0';
	WAIT FOR 640000 ps;
	address(6) <= '1';
WAIT;
END PROCESS t_prcs_address_6;
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '0';
	WAIT FOR 320000 ps;
	address(5) <= '1';
	WAIT FOR 320000 ps;
	address(5) <= '0';
	WAIT FOR 320000 ps;
	address(5) <= '1';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		address(4) <= '0';
		WAIT FOR 160000 ps;
		address(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		address(3) <= '0';
		WAIT FOR 80000 ps;
		address(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		address(2) <= '0';
		WAIT FOR 40000 ps;
		address(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
LOOP
	address(1) <= '0';
	WAIT FOR 20000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
LOOP
	address(0) <= '0';
	WAIT FOR 10000 ps;
	address(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_0;
END ROM_16bits_arch;
