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
-- Generated on "11/29/2018 18:50:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplex
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplex_vhd_vec_tst IS
END multiplex_vhd_vec_tst;
ARCHITECTURE multiplex_arch OF multiplex_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL escolha : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL p1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL p2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL p3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL p4 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT multiplex
	PORT (
	escolha : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	p1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	p2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	p3 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	p4 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : multiplex
	PORT MAP (
-- list connections between master ports and signals
	escolha => escolha,
	p1 => p1,
	p2 => p2,
	p3 => p3,
	p4 => p4,
	saida => saida
	);
-- escolha[1]
t_prcs_escolha_1: PROCESS
BEGIN
LOOP
	escolha(1) <= '0';
	WAIT FOR 20000 ps;
	escolha(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_escolha_1;
-- escolha[0]
t_prcs_escolha_0: PROCESS
BEGIN
LOOP
	escolha(0) <= '0';
	WAIT FOR 10000 ps;
	escolha(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_escolha_0;
-- p1[1]
t_prcs_p1_1: PROCESS
BEGIN
LOOP
	p1(1) <= '0';
	WAIT FOR 20000 ps;
	p1(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_p1_1;
-- p1[0]
t_prcs_p1_0: PROCESS
BEGIN
LOOP
	p1(0) <= '0';
	WAIT FOR 10000 ps;
	p1(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_p1_0;
-- p2[1]
t_prcs_p2_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		p2(1) <= '0';
		WAIT FOR 40000 ps;
		p2(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	p2(1) <= '0';
WAIT;
END PROCESS t_prcs_p2_1;
-- p2[0]
t_prcs_p2_0: PROCESS
BEGIN
LOOP
	p2(0) <= '0';
	WAIT FOR 20000 ps;
	p2(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_p2_0;
-- p3[1]
t_prcs_p3_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		p3(1) <= '0';
		WAIT FOR 60000 ps;
		p3(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	p3(1) <= '0';
WAIT;
END PROCESS t_prcs_p3_1;
-- p3[0]
t_prcs_p3_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		p3(0) <= '0';
		WAIT FOR 30000 ps;
		p3(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	p3(0) <= '0';
	WAIT FOR 30000 ps;
	p3(0) <= '1';
WAIT;
END PROCESS t_prcs_p3_0;
-- p4[1]
t_prcs_p4_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		p4(1) <= '0';
		WAIT FOR 80000 ps;
		p4(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	p4(1) <= '0';
WAIT;
END PROCESS t_prcs_p4_1;
-- p4[0]
t_prcs_p4_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		p4(0) <= '0';
		WAIT FOR 40000 ps;
		p4(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	p4(0) <= '0';
WAIT;
END PROCESS t_prcs_p4_0;
END multiplex_arch;
