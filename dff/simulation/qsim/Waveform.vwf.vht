-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/20/2018 16:27:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dff_u
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dff_u_vhd_vec_tst IS
END dff_u_vhd_vec_tst;
ARCHITECTURE dff_u_arch OF dff_u_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT dff_u
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : dff_u
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- d
t_prcs_d: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		d <= '0';
		WAIT FOR 176000 ps;
		d <= '1';
		WAIT FOR 176000 ps;
	END LOOP;
	d <= '0';
	WAIT FOR 176000 ps;
	d <= '1';
WAIT;
END PROCESS t_prcs_d;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 950000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END dff_u_arch;
