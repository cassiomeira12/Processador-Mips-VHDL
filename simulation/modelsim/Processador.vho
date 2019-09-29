-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/09/2018 21:25:58"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Processador2 IS
    PORT (
	DVI : OUT std_logic;
	clk : IN std_logic;
	endereco : IN std_logic_vector(31 DOWNTO 0);
	DvC : OUT std_logic;
	LerMem : OUT std_logic;
	MemParaReg : OUT std_logic;
	EscMem : OUT std_logic;
	ULAFonte : OUT std_logic;
	EscReg : OUT std_logic;
	extensao : OUT std_logic_vector(15 DOWNTO 0);
	instrucao : OUT std_logic_vector(5 DOWNTO 0);
	PC2 : OUT std_logic_vector(31 DOWNTO 0);
	sempre4 : IN std_logic_vector(31 DOWNTO 0);
	read_register_1 : OUT std_logic_vector(4 DOWNTO 0);
	read_register_2 : OUT std_logic_vector(4 DOWNTO 0);
	shift : OUT std_logic_vector(27 DOWNTO 0);
	ULAOp : OUT std_logic_vector(1 DOWNTO 0);
	write_register : OUT std_logic_vector(4 DOWNTO 0)
	);
END Processador2;

-- Design Ports Information
-- DVI	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DvC	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LerMem	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemParaReg	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscMem	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAFonte	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscReg	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[15]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[14]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[13]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[12]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[11]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[10]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[9]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[8]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[7]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[6]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[5]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[4]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[2]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[1]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- extensao[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instrucao[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instrucao[4]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instrucao[3]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instrucao[2]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instrucao[1]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instrucao[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[31]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[30]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[29]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[28]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[27]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[26]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[25]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[24]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[23]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[22]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[21]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[20]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[19]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[18]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[17]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[16]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[15]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[14]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[13]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[12]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[10]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[9]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[8]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[7]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[6]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[2]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[1]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC2[0]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_1[4]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_1[3]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_1[2]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_1[1]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_1[0]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_2[4]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_2[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_2[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_2[1]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_register_2[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[27]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[26]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[25]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[24]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[23]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[22]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[21]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[20]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[19]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[18]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[17]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[16]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[15]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[14]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[13]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[12]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[11]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[10]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[8]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[5]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[4]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[3]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- shift[0]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAOp[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAOp[0]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_register[4]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_register[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_register[2]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_register[1]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_register[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sempre4[31]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[30]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[29]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[28]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[27]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[26]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[25]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[24]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[23]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[22]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[21]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[20]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[19]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[18]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[17]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[16]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[15]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[14]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[13]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[12]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[11]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[10]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[9]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[8]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[7]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[6]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[4]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[3]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[2]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sempre4[0]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[31]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[30]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[29]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[28]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[27]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[26]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[25]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[24]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[23]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[22]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[21]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[20]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[19]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[18]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[17]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[16]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[15]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[14]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[13]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[12]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[11]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[10]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[9]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[8]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Processador2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DVI : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_endereco : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DvC : std_logic;
SIGNAL ww_LerMem : std_logic;
SIGNAL ww_MemParaReg : std_logic;
SIGNAL ww_EscMem : std_logic;
SIGNAL ww_ULAFonte : std_logic;
SIGNAL ww_EscReg : std_logic;
SIGNAL ww_extensao : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instrucao : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PC2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sempre4 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_register_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_read_register_2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_shift : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_ULAOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_write_register : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|enableInstrucao~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Program_Counter|inst|inst2~1_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst29|inst2~1_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst26|inst2~1_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst27|inst2~1_combout\ : std_logic;
SIGNAL \inst1|Mux11~1_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~2_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.decodificacao_instrucao~regout\ : std_logic;
SIGNAL \inst1|estado_atual.decodificacao_instrucao~regout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst1|Mux15~1_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.fim_desvio_incondicional~regout\ : std_logic;
SIGNAL \inst1|estado_atual.fim_desvio_incondicional~regout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|Mux9~1_combout\ : std_logic;
SIGNAL \inst1|Mux13~1_combout\ : std_logic;
SIGNAL \inst1|Mux13~2_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.execucao~regout\ : std_logic;
SIGNAL \inst1|estado_atual.execucao~regout\ : std_logic;
SIGNAL \inst1|Mux16~0_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.fim_instrucao_r~regout\ : std_logic;
SIGNAL \inst1|estado_atual.fim_instrucao_r~regout\ : std_logic;
SIGNAL \inst1|WideNor0~combout\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux18~0_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.acesso_memoria_escrita~regout\ : std_logic;
SIGNAL \inst1|estado_atual.acesso_memoria_escrita~regout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~1_combout\ : std_logic;
SIGNAL \inst1|Mux10~2_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.busca_instrucao~regout\ : std_logic;
SIGNAL \inst1|estado_atual.busca_instrucao~regout\ : std_logic;
SIGNAL \inst1|enableInstrucao~0_combout\ : std_logic;
SIGNAL \inst1|enableInstrucao~feeder_combout\ : std_logic;
SIGNAL \inst1|enableInstrucao~regout\ : std_logic;
SIGNAL \inst1|enableInstrucao~clkctrl_outclk\ : std_logic;
SIGNAL \Registrador_Instrucao|inst31|inst2~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|Mux1~5_combout\ : std_logic;
SIGNAL \inst1|DVI~regout\ : std_logic;
SIGNAL \inst1|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|proximo_estado.calculo_endereco_memoria~regout\ : std_logic;
SIGNAL \inst1|estado_atual.calculo_endereco_memoria~regout\ : std_logic;
SIGNAL \inst1|WideNor2~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~4_combout\ : std_logic;
SIGNAL \inst1|EscMem~regout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|Mux8~2_combout\ : std_logic;
SIGNAL \inst1|Mux8~3_combout\ : std_logic;
SIGNAL \inst1|Mux8~4_combout\ : std_logic;
SIGNAL \inst1|ULAFonte~regout\ : std_logic;
SIGNAL \inst1|Mux9~2_combout\ : std_logic;
SIGNAL \inst1|Mux9~3_combout\ : std_logic;
SIGNAL \inst1|EscReg~regout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst2|inst2~1_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst31|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst30|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst29|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst26|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst25|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst23|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst21|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst19|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst11|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst9|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst6|inst2~1_combout\ : std_logic;
SIGNAL \Program_Counter|inst3|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[0]~1\ : std_logic;
SIGNAL \somador1|result[1]~3\ : std_logic;
SIGNAL \somador1|result[2]~5\ : std_logic;
SIGNAL \somador1|result[3]~7\ : std_logic;
SIGNAL \somador1|result[4]~9\ : std_logic;
SIGNAL \somador1|result[5]~11\ : std_logic;
SIGNAL \somador1|result[6]~13\ : std_logic;
SIGNAL \somador1|result[7]~15\ : std_logic;
SIGNAL \somador1|result[8]~17\ : std_logic;
SIGNAL \somador1|result[9]~19\ : std_logic;
SIGNAL \somador1|result[10]~21\ : std_logic;
SIGNAL \somador1|result[11]~23\ : std_logic;
SIGNAL \somador1|result[12]~25\ : std_logic;
SIGNAL \somador1|result[13]~27\ : std_logic;
SIGNAL \somador1|result[14]~29\ : std_logic;
SIGNAL \somador1|result[15]~31\ : std_logic;
SIGNAL \somador1|result[16]~33\ : std_logic;
SIGNAL \somador1|result[17]~35\ : std_logic;
SIGNAL \somador1|result[18]~37\ : std_logic;
SIGNAL \somador1|result[19]~39\ : std_logic;
SIGNAL \somador1|result[20]~41\ : std_logic;
SIGNAL \somador1|result[21]~43\ : std_logic;
SIGNAL \somador1|result[22]~45\ : std_logic;
SIGNAL \somador1|result[23]~47\ : std_logic;
SIGNAL \somador1|result[24]~49\ : std_logic;
SIGNAL \somador1|result[25]~51\ : std_logic;
SIGNAL \somador1|result[26]~53\ : std_logic;
SIGNAL \somador1|result[27]~55\ : std_logic;
SIGNAL \somador1|result[28]~57\ : std_logic;
SIGNAL \somador1|result[29]~59\ : std_logic;
SIGNAL \somador1|result[30]~61\ : std_logic;
SIGNAL \somador1|result[31]~62_combout\ : std_logic;
SIGNAL \somador1|result[30]~60_combout\ : std_logic;
SIGNAL \somador1|result[29]~58_combout\ : std_logic;
SIGNAL \Program_Counter|inst28|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[28]~56_combout\ : std_logic;
SIGNAL \Program_Counter|inst27|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[27]~54_combout\ : std_logic;
SIGNAL \somador1|result[26]~52_combout\ : std_logic;
SIGNAL \somador1|result[25]~50_combout\ : std_logic;
SIGNAL \Program_Counter|inst24|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[24]~48_combout\ : std_logic;
SIGNAL \somador1|result[23]~46_combout\ : std_logic;
SIGNAL \Program_Counter|inst22|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[22]~44_combout\ : std_logic;
SIGNAL \somador1|result[21]~42_combout\ : std_logic;
SIGNAL \Program_Counter|inst20|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[20]~40_combout\ : std_logic;
SIGNAL \somador1|result[19]~38_combout\ : std_logic;
SIGNAL \Program_Counter|inst18|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[18]~36_combout\ : std_logic;
SIGNAL \Program_Counter|inst17|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[17]~34_combout\ : std_logic;
SIGNAL \Program_Counter|inst16|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[16]~32_combout\ : std_logic;
SIGNAL \Program_Counter|inst15|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[15]~30_combout\ : std_logic;
SIGNAL \Program_Counter|inst14|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[14]~28_combout\ : std_logic;
SIGNAL \Program_Counter|inst13|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[13]~26_combout\ : std_logic;
SIGNAL \Program_Counter|inst12|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[12]~24_combout\ : std_logic;
SIGNAL \somador1|result[11]~22_combout\ : std_logic;
SIGNAL \Program_Counter|inst10|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[10]~20_combout\ : std_logic;
SIGNAL \somador1|result[9]~18_combout\ : std_logic;
SIGNAL \Program_Counter|inst8|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[8]~16_combout\ : std_logic;
SIGNAL \Program_Counter|inst7|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[7]~14_combout\ : std_logic;
SIGNAL \somador1|result[6]~12_combout\ : std_logic;
SIGNAL \Program_Counter|inst5|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[5]~10_combout\ : std_logic;
SIGNAL \Program_Counter|inst4|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[4]~8_combout\ : std_logic;
SIGNAL \somador1|result[3]~6_combout\ : std_logic;
SIGNAL \Program_Counter|inst2|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[2]~4_combout\ : std_logic;
SIGNAL \Program_Counter|inst1|inst2~1_combout\ : std_logic;
SIGNAL \somador1|result[1]~2_combout\ : std_logic;
SIGNAL \somador1|result[0]~0_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst21|inst2~1_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|ULAOp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sempre4~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \endereco~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Registrador_Instrucao|inst21|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst|ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \Registrador_Instrucao|inst2|ALT_INV_inst2~1_combout\ : std_logic;

BEGIN

DVI <= ww_DVI;
ww_clk <= clk;
ww_endereco <= endereco;
DvC <= ww_DvC;
LerMem <= ww_LerMem;
MemParaReg <= ww_MemParaReg;
EscMem <= ww_EscMem;
ULAFonte <= ww_ULAFonte;
EscReg <= ww_EscReg;
extensao <= ww_extensao;
instrucao <= ww_instrucao;
PC2 <= ww_PC2;
ww_sempre4 <= sempre4;
read_register_1 <= ww_read_register_1;
read_register_2 <= ww_read_register_2;
shift <= ww_shift;
ULAOp <= ww_ULAOp;
write_register <= ww_write_register;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\inst1|enableInstrucao~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|enableInstrucao~regout\);
\Registrador_Instrucao|inst21|ALT_INV_inst2~1_combout\ <= NOT \Registrador_Instrucao|inst21|inst2~1_combout\;
\Registrador_Instrucao|inst|ALT_INV_inst2~1_combout\ <= NOT \Registrador_Instrucao|inst|inst2~1_combout\;
\Registrador_Instrucao|inst2|ALT_INV_inst2~1_combout\ <= NOT \Registrador_Instrucao|inst2|inst2~1_combout\;

-- Location: LCCOMB_X23_Y18_N2
\inst1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|Mux8~0_combout\ & ((\inst1|estado_atual.fim_instrucao_r~regout\) # ((\inst1|EscReg~regout\ & \inst1|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|EscReg~regout\,
	datab => \inst1|WideNor0~combout\,
	datac => \inst1|estado_atual.fim_instrucao_r~regout\,
	datad => \inst1|Mux8~0_combout\,
	combout => \inst1|Mux9~0_combout\);

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(18),
	combout => \endereco~combout\(18));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(16),
	combout => \endereco~combout\(16));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(1),
	combout => \endereco~combout\(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(0),
	combout => \endereco~combout\(0));

-- Location: LCCOMB_X21_Y18_N24
\Program_Counter|inst|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(0)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst|inst2~1_combout\,
	datac => \endereco~combout\(0),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst|inst2~1_combout\);

-- Location: LCCOMB_X22_Y18_N10
\Registrador_Instrucao|inst29|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst29|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst29|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst29|inst2~1_combout\,
	datac => \inst1|enableInstrucao~clkctrl_outclk\,
	datad => \Program_Counter|inst|inst2~1_combout\,
	combout => \Registrador_Instrucao|inst29|inst2~1_combout\);

-- Location: LCCOMB_X22_Y18_N4
\Registrador_Instrucao|inst26|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst26|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst26|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datac => \inst1|enableInstrucao~clkctrl_outclk\,
	datad => \Program_Counter|inst|inst2~1_combout\,
	combout => \Registrador_Instrucao|inst26|inst2~1_combout\);

-- Location: LCCOMB_X22_Y18_N14
\Registrador_Instrucao|inst27|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst27|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst27|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datac => \inst1|enableInstrucao~clkctrl_outclk\,
	datad => \Program_Counter|inst|inst2~1_combout\,
	combout => \Registrador_Instrucao|inst27|inst2~1_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst1|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux11~1_combout\ = (\Registrador_Instrucao|inst26|inst2~1_combout\ & \Registrador_Instrucao|inst31|inst2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst31|inst2~1_combout\,
	combout => \inst1|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst1|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (!\Registrador_Instrucao|inst26|inst2~1_combout\ & (!\Registrador_Instrucao|inst31|inst2~1_combout\ & !\Registrador_Instrucao|inst27|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst27|inst2~1_combout\,
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst1|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux11~2_combout\ = (!\inst1|estado_atual.busca_instrucao~regout\ & ((\Registrador_Instrucao|inst29|inst2~1_combout\ & (\inst1|Mux11~1_combout\)) # (!\Registrador_Instrucao|inst29|inst2~1_combout\ & ((\inst1|Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.busca_instrucao~regout\,
	datab => \Registrador_Instrucao|inst29|inst2~1_combout\,
	datac => \inst1|Mux11~1_combout\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux11~2_combout\);

-- Location: LCFF_X24_Y18_N17
\inst1|proximo_estado.decodificacao_instrucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.decodificacao_instrucao~regout\);

-- Location: LCFF_X23_Y18_N25
\inst1|estado_atual.decodificacao_instrucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.decodificacao_instrucao~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.decodificacao_instrucao~regout\);

-- Location: LCCOMB_X23_Y18_N30
\inst1|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\Registrador_Instrucao|inst29|inst2~1_combout\ & (\Registrador_Instrucao|inst31|inst2~1_combout\ & (\Registrador_Instrucao|inst26|inst2~1_combout\ & \Registrador_Instrucao|inst27|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst29|inst2~1_combout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst27|inst2~1_combout\,
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst1|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = (\inst1|Mux11~1_combout\ & ((\Registrador_Instrucao|inst27|inst2~1_combout\ & (\inst1|estado_atual.fim_desvio_incondicional~regout\)) # (!\Registrador_Instrucao|inst27|inst2~1_combout\ & 
-- ((\inst1|estado_atual.decodificacao_instrucao~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datab => \inst1|estado_atual.fim_desvio_incondicional~regout\,
	datac => \inst1|Mux11~1_combout\,
	datad => \inst1|estado_atual.decodificacao_instrucao~regout\,
	combout => \inst1|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst1|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux15~1_combout\ = (!\inst1|Mux1~3_combout\ & ((\inst1|Mux15~0_combout\) # ((\inst1|estado_atual.fim_desvio_incondicional~regout\ & \inst1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.fim_desvio_incondicional~regout\,
	datab => \inst1|Mux11~0_combout\,
	datac => \inst1|Mux1~3_combout\,
	datad => \inst1|Mux15~0_combout\,
	combout => \inst1|Mux15~1_combout\);

-- Location: LCFF_X22_Y18_N21
\inst1|proximo_estado.fim_desvio_incondicional\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.fim_desvio_incondicional~regout\);

-- Location: LCFF_X23_Y18_N1
\inst1|estado_atual.fim_desvio_incondicional\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.fim_desvio_incondicional~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.fim_desvio_incondicional~regout\);

-- Location: LCCOMB_X23_Y18_N16
\inst1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (!\inst1|estado_atual.decodificacao_instrucao~regout\ & (\inst1|estado_atual.busca_instrucao~regout\ & !\inst1|estado_atual.fim_desvio_incondicional~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.decodificacao_instrucao~regout\,
	datab => \inst1|estado_atual.busca_instrucao~regout\,
	datad => \inst1|estado_atual.fim_desvio_incondicional~regout\,
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst1|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux9~1_combout\ = (\Registrador_Instrucao|inst26|inst2~1_combout\ & (((\Registrador_Instrucao|inst31|inst2~1_combout\ & \inst1|Mux7~1_combout\)))) # (!\Registrador_Instrucao|inst26|inst2~1_combout\ & (\inst1|WideNor2~0_combout\ & 
-- (!\Registrador_Instrucao|inst31|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideNor2~0_combout\,
	datab => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datad => \inst1|Mux7~1_combout\,
	combout => \inst1|Mux9~1_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst1|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux13~1_combout\ = (\inst1|Mux13~0_combout\) # ((!\Registrador_Instrucao|inst27|inst2~1_combout\ & (!\inst1|Mux1~3_combout\ & \inst1|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|Mux13~0_combout\,
	datad => \inst1|Mux9~1_combout\,
	combout => \inst1|Mux13~1_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst1|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux13~2_combout\ = (\inst1|Mux13~1_combout\ & ((\Registrador_Instrucao|inst27|inst2~1_combout\ & ((\inst1|estado_atual.decodificacao_instrucao~regout\))) # (!\Registrador_Instrucao|inst27|inst2~1_combout\ & (\inst1|estado_atual.execucao~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datab => \inst1|estado_atual.execucao~regout\,
	datac => \inst1|estado_atual.decodificacao_instrucao~regout\,
	datad => \inst1|Mux13~1_combout\,
	combout => \inst1|Mux13~2_combout\);

-- Location: LCFF_X24_Y18_N11
\inst1|proximo_estado.execucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.execucao~regout\);

-- Location: LCFF_X23_Y18_N23
\inst1|estado_atual.execucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.execucao~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.execucao~regout\);

-- Location: LCCOMB_X24_Y18_N8
\inst1|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux16~0_combout\ = (\inst1|Mux13~1_combout\ & ((\Registrador_Instrucao|inst27|inst2~1_combout\ & ((\inst1|estado_atual.execucao~regout\))) # (!\Registrador_Instrucao|inst27|inst2~1_combout\ & (\inst1|estado_atual.fim_instrucao_r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datab => \inst1|estado_atual.fim_instrucao_r~regout\,
	datac => \inst1|estado_atual.execucao~regout\,
	datad => \inst1|Mux13~1_combout\,
	combout => \inst1|Mux16~0_combout\);

-- Location: LCFF_X24_Y18_N9
\inst1|proximo_estado.fim_instrucao_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.fim_instrucao_r~regout\);

-- Location: LCFF_X23_Y18_N5
\inst1|estado_atual.fim_instrucao_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.fim_instrucao_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.fim_instrucao_r~regout\);

-- Location: LCCOMB_X23_Y18_N22
\inst1|WideNor0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideNor0~combout\ = (!\inst1|estado_atual.decodificacao_instrucao~regout\ & (!\inst1|estado_atual.fim_instrucao_r~regout\ & (!\inst1|estado_atual.execucao~regout\ & \inst1|estado_atual.busca_instrucao~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.decodificacao_instrucao~regout\,
	datab => \inst1|estado_atual.fim_instrucao_r~regout\,
	datac => \inst1|estado_atual.execucao~regout\,
	datad => \inst1|estado_atual.busca_instrucao~regout\,
	combout => \inst1|WideNor0~combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst1|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (\Registrador_Instrucao|inst27|inst2~1_combout\ & ((\inst1|WideNor0~combout\))) # (!\Registrador_Instrucao|inst27|inst2~1_combout\ & (\inst1|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datac => \inst1|Mux7~1_combout\,
	datad => \inst1|WideNor0~combout\,
	combout => \inst1|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst1|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\Registrador_Instrucao|inst29|inst2~1_combout\ & (\inst1|Mux11~1_combout\ & ((\inst1|Mux7~2_combout\)))) # (!\Registrador_Instrucao|inst29|inst2~1_combout\ & (((\inst1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~1_combout\,
	datab => \inst1|Mux11~0_combout\,
	datac => \inst1|Mux7~2_combout\,
	datad => \Registrador_Instrucao|inst29|inst2~1_combout\,
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst1|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux18~0_combout\ = (\inst1|Mux12~0_combout\ & ((\Registrador_Instrucao|inst31|inst2~1_combout\ & ((\inst1|estado_atual.acesso_memoria_escrita~regout\))) # (!\Registrador_Instrucao|inst31|inst2~1_combout\ & 
-- (\inst1|estado_atual.calculo_endereco_memoria~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.calculo_endereco_memoria~regout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datac => \inst1|estado_atual.acesso_memoria_escrita~regout\,
	datad => \inst1|Mux12~0_combout\,
	combout => \inst1|Mux18~0_combout\);

-- Location: LCFF_X23_Y18_N11
\inst1|proximo_estado.acesso_memoria_escrita\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.acesso_memoria_escrita~regout\);

-- Location: LCFF_X23_Y18_N29
\inst1|estado_atual.acesso_memoria_escrita\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.acesso_memoria_escrita~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.acesso_memoria_escrita~regout\);

-- Location: LCCOMB_X23_Y18_N8
\inst1|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (\Registrador_Instrucao|inst31|inst2~1_combout\ & (\inst1|estado_atual.fim_instrucao_r~regout\)) # (!\Registrador_Instrucao|inst31|inst2~1_combout\ & ((\inst1|estado_atual.acesso_memoria_escrita~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datab => \inst1|estado_atual.fim_instrucao_r~regout\,
	datad => \inst1|estado_atual.acesso_memoria_escrita~regout\,
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst1|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux10~1_combout\ = (\Registrador_Instrucao|inst27|inst2~1_combout\ & (((\inst1|Mux10~0_combout\) # (!\Registrador_Instrucao|inst29|inst2~1_combout\)))) # (!\Registrador_Instrucao|inst27|inst2~1_combout\ & 
-- ((\Registrador_Instrucao|inst29|inst2~1_combout\ & (\inst1|estado_atual.fim_desvio_incondicional~regout\)) # (!\Registrador_Instrucao|inst29|inst2~1_combout\ & ((\inst1|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.fim_desvio_incondicional~regout\,
	datab => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst29|inst2~1_combout\,
	datad => \inst1|Mux10~0_combout\,
	combout => \inst1|Mux10~1_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst1|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux10~2_combout\ = (!\inst1|Mux10~1_combout\ & ((\Registrador_Instrucao|inst31|inst2~1_combout\ & (\Registrador_Instrucao|inst29|inst2~1_combout\ & \Registrador_Instrucao|inst26|inst2~1_combout\)) # (!\Registrador_Instrucao|inst31|inst2~1_combout\ 
-- & (!\Registrador_Instrucao|inst29|inst2~1_combout\ & !\Registrador_Instrucao|inst26|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datab => \Registrador_Instrucao|inst29|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datad => \inst1|Mux10~1_combout\,
	combout => \inst1|Mux10~2_combout\);

-- Location: LCFF_X24_Y18_N27
\inst1|proximo_estado.busca_instrucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.busca_instrucao~regout\);

-- Location: LCFF_X23_Y18_N9
\inst1|estado_atual.busca_instrucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.busca_instrucao~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.busca_instrucao~regout\);

-- Location: LCCOMB_X24_Y18_N22
\inst1|enableInstrucao~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|enableInstrucao~0_combout\ = !\inst1|estado_atual.busca_instrucao~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|estado_atual.busca_instrucao~regout\,
	combout => \inst1|enableInstrucao~0_combout\);

-- Location: LCCOMB_X24_Y26_N0
\inst1|enableInstrucao~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|enableInstrucao~feeder_combout\ = \inst1|enableInstrucao~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|enableInstrucao~0_combout\,
	combout => \inst1|enableInstrucao~feeder_combout\);

-- Location: LCFF_X24_Y26_N1
\inst1|enableInstrucao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|enableInstrucao~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|enableInstrucao~regout\);

-- Location: CLKCTRL_G9
\inst1|enableInstrucao~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|enableInstrucao~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|enableInstrucao~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y18_N18
\Registrador_Instrucao|inst31|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst31|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst31|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datac => \inst1|enableInstrucao~clkctrl_outclk\,
	datad => \Program_Counter|inst|inst2~1_combout\,
	combout => \Registrador_Instrucao|inst31|inst2~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst1|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = \Registrador_Instrucao|inst31|inst2~1_combout\ $ (\Registrador_Instrucao|inst29|inst2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst29|inst2~1_combout\,
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst1|estado_atual.fim_desvio_incondicional~regout\) # ((\inst1|estado_atual.decodificacao_instrucao~regout\) # ((\inst1|estado_atual.busca_instrucao~regout\ & \inst1|DVI~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.busca_instrucao~regout\,
	datab => \inst1|DVI~regout\,
	datac => \inst1|estado_atual.fim_desvio_incondicional~regout\,
	datad => \inst1|estado_atual.decodificacao_instrucao~regout\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\Registrador_Instrucao|inst27|inst2~1_combout\ & (\inst1|DVI~regout\ & ((\inst1|WideNor0~combout\)))) # (!\Registrador_Instrucao|inst27|inst2~1_combout\ & (((\inst1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DVI~regout\,
	datab => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datac => \inst1|Mux1~1_combout\,
	datad => \inst1|WideNor0~combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|WideNor2~0_combout\ & (\inst1|DVI~regout\ & \inst1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideNor2~0_combout\,
	datac => \inst1|DVI~regout\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst1|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (!\inst1|Mux1~3_combout\ & ((\inst1|Mux1~0_combout\) # ((\inst1|Mux11~1_combout\ & \inst1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~1_combout\,
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|Mux1~2_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux1~4_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst1|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~5_combout\ = (\Registrador_Instrucao|inst31|inst2~1_combout\ & (((\Registrador_Instrucao|inst26|inst2~1_combout\ & \Registrador_Instrucao|inst29|inst2~1_combout\)))) # (!\Registrador_Instrucao|inst31|inst2~1_combout\ & 
-- (!\Registrador_Instrucao|inst27|inst2~1_combout\ & (!\Registrador_Instrucao|inst26|inst2~1_combout\ & !\Registrador_Instrucao|inst29|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst29|inst2~1_combout\,
	combout => \inst1|Mux1~5_combout\);

-- Location: LCFF_X24_Y18_N21
\inst1|DVI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux1~4_combout\,
	ena => \inst1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|DVI~regout\);

-- Location: LCCOMB_X23_Y18_N0
\inst1|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~3_combout\ = (\Registrador_Instrucao|inst26|inst2~1_combout\ & (\Registrador_Instrucao|inst31|inst2~1_combout\ & \inst1|EscMem~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datad => \inst1|EscMem~regout\,
	combout => \inst1|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst1|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux12~1_combout\ = (\inst1|Mux12~0_combout\ & ((\Registrador_Instrucao|inst31|inst2~1_combout\ & ((\inst1|estado_atual.calculo_endereco_memoria~regout\))) # (!\Registrador_Instrucao|inst31|inst2~1_combout\ & 
-- (\inst1|estado_atual.decodificacao_instrucao~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.decodificacao_instrucao~regout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datac => \inst1|estado_atual.calculo_endereco_memoria~regout\,
	datad => \inst1|Mux12~0_combout\,
	combout => \inst1|Mux12~1_combout\);

-- Location: LCFF_X23_Y18_N13
\inst1|proximo_estado.calculo_endereco_memoria\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|proximo_estado.calculo_endereco_memoria~regout\);

-- Location: LCFF_X23_Y18_N17
\inst1|estado_atual.calculo_endereco_memoria\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|proximo_estado.calculo_endereco_memoria~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|estado_atual.calculo_endereco_memoria~regout\);

-- Location: LCCOMB_X23_Y18_N14
\inst1|WideNor2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideNor2~0_combout\ = (\inst1|estado_atual.busca_instrucao~regout\ & (!\inst1|estado_atual.calculo_endereco_memoria~regout\ & (!\inst1|estado_atual.decodificacao_instrucao~regout\ & !\inst1|estado_atual.acesso_memoria_escrita~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.busca_instrucao~regout\,
	datab => \inst1|estado_atual.calculo_endereco_memoria~regout\,
	datac => \inst1|estado_atual.decodificacao_instrucao~regout\,
	datad => \inst1|estado_atual.acesso_memoria_escrita~regout\,
	combout => \inst1|WideNor2~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|Mux11~0_combout\ & ((\inst1|estado_atual.acesso_memoria_escrita~regout\) # ((\inst1|EscMem~regout\ & \inst1|WideNor2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|EscMem~regout\,
	datab => \inst1|WideNor2~0_combout\,
	datac => \inst1|estado_atual.acesso_memoria_escrita~regout\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst1|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~4_combout\ = (!\inst1|Mux1~3_combout\ & ((\inst1|Mux7~0_combout\) # ((\inst1|Mux7~2_combout\ & \inst1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~2_combout\,
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|Mux7~3_combout\,
	datad => \inst1|Mux7~0_combout\,
	combout => \inst1|Mux7~4_combout\);

-- Location: LCFF_X23_Y18_N7
\inst1|EscMem\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux7~4_combout\,
	ena => \inst1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|EscMem~regout\);

-- Location: LCCOMB_X22_Y18_N26
\inst1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\Registrador_Instrucao|inst27|inst2~1_combout\ & (\Registrador_Instrucao|inst26|inst2~1_combout\ & \Registrador_Instrucao|inst31|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst31|inst2~1_combout\,
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst1|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux8~1_combout\ = (\inst1|ULAFonte~regout\ & (\inst1|Mux8~0_combout\ & \inst1|WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ULAFonte~regout\,
	datab => \inst1|Mux8~0_combout\,
	datad => \inst1|WideNor0~combout\,
	combout => \inst1|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst1|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux8~2_combout\ = (\inst1|estado_atual.calculo_endereco_memoria~regout\) # ((\inst1|estado_atual.decodificacao_instrucao~regout\) # ((\inst1|ULAFonte~regout\ & \inst1|WideNor2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ULAFonte~regout\,
	datab => \inst1|estado_atual.calculo_endereco_memoria~regout\,
	datac => \inst1|WideNor2~0_combout\,
	datad => \inst1|estado_atual.decodificacao_instrucao~regout\,
	combout => \inst1|Mux8~2_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst1|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux8~3_combout\ = (!\inst1|Mux1~3_combout\ & ((\inst1|Mux8~1_combout\) # ((\inst1|Mux11~0_combout\ & \inst1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|Mux8~1_combout\,
	datad => \inst1|Mux8~2_combout\,
	combout => \inst1|Mux8~3_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst1|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux8~4_combout\ = (\Registrador_Instrucao|inst27|inst2~1_combout\ & (\Registrador_Instrucao|inst31|inst2~1_combout\ & (\Registrador_Instrucao|inst26|inst2~1_combout\ & \Registrador_Instrucao|inst29|inst2~1_combout\))) # 
-- (!\Registrador_Instrucao|inst27|inst2~1_combout\ & (!\Registrador_Instrucao|inst31|inst2~1_combout\ & (!\Registrador_Instrucao|inst26|inst2~1_combout\ & !\Registrador_Instrucao|inst29|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datab => \Registrador_Instrucao|inst31|inst2~1_combout\,
	datac => \Registrador_Instrucao|inst26|inst2~1_combout\,
	datad => \Registrador_Instrucao|inst29|inst2~1_combout\,
	combout => \inst1|Mux8~4_combout\);

-- Location: LCFF_X22_Y18_N13
\inst1|ULAFonte\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux8~3_combout\,
	ena => \inst1|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ULAFonte~regout\);

-- Location: LCCOMB_X24_Y18_N0
\inst1|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux9~2_combout\ = (!\Registrador_Instrucao|inst27|inst2~1_combout\ & \inst1|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Registrador_Instrucao|inst27|inst2~1_combout\,
	datad => \inst1|Mux9~1_combout\,
	combout => \inst1|Mux9~2_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst1|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux9~3_combout\ = (!\inst1|Mux1~3_combout\ & ((\inst1|Mux9~0_combout\) # ((\inst1|EscReg~regout\ & \inst1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux9~0_combout\,
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|EscReg~regout\,
	datad => \inst1|Mux9~2_combout\,
	combout => \inst1|Mux9~3_combout\);

-- Location: LCFF_X24_Y18_N31
\inst1|EscReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux9~3_combout\,
	ena => \inst1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|EscReg~regout\);

-- Location: LCCOMB_X21_Y18_N8
\Registrador_Instrucao|inst2|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst2|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst2|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_Instrucao|inst2|inst2~1_combout\,
	datac => \Program_Counter|inst|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Registrador_Instrucao|inst2|inst2~1_combout\);

-- Location: LCCOMB_X21_Y18_N22
\Registrador_Instrucao|inst|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_Instrucao|inst|inst2~1_combout\,
	datac => \Program_Counter|inst|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Registrador_Instrucao|inst|inst2~1_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(31),
	combout => \endereco~combout\(31));

-- Location: LCCOMB_X47_Y23_N0
\Program_Counter|inst31|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst31|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(31)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst31|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst31|inst2~1_combout\,
	datac => \endereco~combout\(31),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst31|inst2~1_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(31),
	combout => \sempre4~combout\(31));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(30),
	combout => \endereco~combout\(30));

-- Location: LCCOMB_X49_Y11_N28
\Program_Counter|inst30|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst30|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(30)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst30|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst30|inst2~1_combout\,
	datac => \endereco~combout\(30),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst30|inst2~1_combout\);

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(29),
	combout => \endereco~combout\(29));

-- Location: LCCOMB_X49_Y12_N24
\Program_Counter|inst29|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst29|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(29))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst29|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco~combout\(29),
	datac => \Program_Counter|inst29|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst29|inst2~1_combout\);

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(28),
	combout => \sempre4~combout\(28));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(27),
	combout => \sempre4~combout\(27));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(26),
	combout => \endereco~combout\(26));

-- Location: LCCOMB_X48_Y23_N24
\Program_Counter|inst26|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst26|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(26)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst26|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst26|inst2~1_combout\,
	datac => \endereco~combout\(26),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst26|inst2~1_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(25),
	combout => \endereco~combout\(25));

-- Location: LCCOMB_X49_Y23_N20
\Program_Counter|inst25|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst25|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(25)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst25|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst25|inst2~1_combout\,
	datac => \endereco~combout\(25),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst25|inst2~1_combout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(24),
	combout => \sempre4~combout\(24));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(23),
	combout => \endereco~combout\(23));

-- Location: LCCOMB_X45_Y23_N8
\Program_Counter|inst23|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst23|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(23)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst23|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst23|inst2~1_combout\,
	datac => \endereco~combout\(23),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst23|inst2~1_combout\);

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(22),
	combout => \sempre4~combout\(22));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(21),
	combout => \endereco~combout\(21));

-- Location: LCCOMB_X48_Y23_N18
\Program_Counter|inst21|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst21|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(21)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst21|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst21|inst2~1_combout\,
	datac => \endereco~combout\(21),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst21|inst2~1_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(20),
	combout => \sempre4~combout\(20));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(19),
	combout => \endereco~combout\(19));

-- Location: LCCOMB_X49_Y11_N22
\Program_Counter|inst19|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst19|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(19)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst19|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst19|inst2~1_combout\,
	datac => \endereco~combout\(19),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst19|inst2~1_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(18),
	combout => \sempre4~combout\(18));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(17),
	combout => \sempre4~combout\(17));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(16),
	combout => \sempre4~combout\(16));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(15),
	combout => \sempre4~combout\(15));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(14),
	combout => \sempre4~combout\(14));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(13),
	combout => \sempre4~combout\(13));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(12),
	combout => \sempre4~combout\(12));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(11),
	combout => \endereco~combout\(11));

-- Location: LCCOMB_X49_Y24_N20
\Program_Counter|inst11|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst11|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(11))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst11|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco~combout\(11),
	datac => \Program_Counter|inst11|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst11|inst2~1_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(10),
	combout => \sempre4~combout\(10));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(9),
	combout => \endereco~combout\(9));

-- Location: LCCOMB_X48_Y12_N28
\Program_Counter|inst9|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst9|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(9)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst9|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst9|inst2~1_combout\,
	datac => \endereco~combout\(9),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst9|inst2~1_combout\);

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(8),
	combout => \sempre4~combout\(8));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(7),
	combout => \sempre4~combout\(7));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(6),
	combout => \endereco~combout\(6));

-- Location: LCCOMB_X46_Y23_N0
\Program_Counter|inst6|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst6|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(6)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst6|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst6|inst2~1_combout\,
	datac => \endereco~combout\(6),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst6|inst2~1_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(5),
	combout => \sempre4~combout\(5));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(4),
	combout => \sempre4~combout\(4));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(3),
	combout => \endereco~combout\(3));

-- Location: LCCOMB_X48_Y11_N6
\Program_Counter|inst3|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst3|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(3)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst3|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst3|inst2~1_combout\,
	datac => \endereco~combout\(3),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst3|inst2~1_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(2),
	combout => \sempre4~combout\(2));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(1),
	combout => \sempre4~combout\(1));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(0),
	combout => \sempre4~combout\(0));

-- Location: LCCOMB_X49_Y16_N0
\somador1|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[0]~0_combout\ = (\Program_Counter|inst|inst2~1_combout\ & (\sempre4~combout\(0) & VCC)) # (!\Program_Counter|inst|inst2~1_combout\ & (\sempre4~combout\(0) $ (VCC)))
-- \somador1|result[0]~1\ = CARRY((!\Program_Counter|inst|inst2~1_combout\ & \sempre4~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst|inst2~1_combout\,
	datab => \sempre4~combout\(0),
	datad => VCC,
	combout => \somador1|result[0]~0_combout\,
	cout => \somador1|result[0]~1\);

-- Location: LCCOMB_X49_Y16_N2
\somador1|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[1]~2_combout\ = (\Program_Counter|inst1|inst2~1_combout\ & ((\sempre4~combout\(1) & (!\somador1|result[0]~1\)) # (!\sempre4~combout\(1) & ((\somador1|result[0]~1\) # (GND))))) # (!\Program_Counter|inst1|inst2~1_combout\ & 
-- ((\sempre4~combout\(1) & (\somador1|result[0]~1\ & VCC)) # (!\sempre4~combout\(1) & (!\somador1|result[0]~1\))))
-- \somador1|result[1]~3\ = CARRY((\Program_Counter|inst1|inst2~1_combout\ & ((!\somador1|result[0]~1\) # (!\sempre4~combout\(1)))) # (!\Program_Counter|inst1|inst2~1_combout\ & (!\sempre4~combout\(1) & !\somador1|result[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst1|inst2~1_combout\,
	datab => \sempre4~combout\(1),
	datad => VCC,
	cin => \somador1|result[0]~1\,
	combout => \somador1|result[1]~2_combout\,
	cout => \somador1|result[1]~3\);

-- Location: LCCOMB_X49_Y16_N4
\somador1|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[2]~4_combout\ = ((\Program_Counter|inst2|inst2~1_combout\ $ (\sempre4~combout\(2) $ (\somador1|result[1]~3\)))) # (GND)
-- \somador1|result[2]~5\ = CARRY((\Program_Counter|inst2|inst2~1_combout\ & (\sempre4~combout\(2) & !\somador1|result[1]~3\)) # (!\Program_Counter|inst2|inst2~1_combout\ & ((\sempre4~combout\(2)) # (!\somador1|result[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst2|inst2~1_combout\,
	datab => \sempre4~combout\(2),
	datad => VCC,
	cin => \somador1|result[1]~3\,
	combout => \somador1|result[2]~4_combout\,
	cout => \somador1|result[2]~5\);

-- Location: LCCOMB_X49_Y16_N6
\somador1|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[3]~6_combout\ = (\sempre4~combout\(3) & ((\Program_Counter|inst3|inst2~1_combout\ & (!\somador1|result[2]~5\)) # (!\Program_Counter|inst3|inst2~1_combout\ & (\somador1|result[2]~5\ & VCC)))) # (!\sempre4~combout\(3) & 
-- ((\Program_Counter|inst3|inst2~1_combout\ & ((\somador1|result[2]~5\) # (GND))) # (!\Program_Counter|inst3|inst2~1_combout\ & (!\somador1|result[2]~5\))))
-- \somador1|result[3]~7\ = CARRY((\sempre4~combout\(3) & (\Program_Counter|inst3|inst2~1_combout\ & !\somador1|result[2]~5\)) # (!\sempre4~combout\(3) & ((\Program_Counter|inst3|inst2~1_combout\) # (!\somador1|result[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(3),
	datab => \Program_Counter|inst3|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[2]~5\,
	combout => \somador1|result[3]~6_combout\,
	cout => \somador1|result[3]~7\);

-- Location: LCCOMB_X49_Y16_N8
\somador1|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[4]~8_combout\ = ((\Program_Counter|inst4|inst2~1_combout\ $ (\sempre4~combout\(4) $ (\somador1|result[3]~7\)))) # (GND)
-- \somador1|result[4]~9\ = CARRY((\Program_Counter|inst4|inst2~1_combout\ & (\sempre4~combout\(4) & !\somador1|result[3]~7\)) # (!\Program_Counter|inst4|inst2~1_combout\ & ((\sempre4~combout\(4)) # (!\somador1|result[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst4|inst2~1_combout\,
	datab => \sempre4~combout\(4),
	datad => VCC,
	cin => \somador1|result[3]~7\,
	combout => \somador1|result[4]~8_combout\,
	cout => \somador1|result[4]~9\);

-- Location: LCCOMB_X49_Y16_N10
\somador1|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[5]~10_combout\ = (\Program_Counter|inst5|inst2~1_combout\ & ((\sempre4~combout\(5) & (!\somador1|result[4]~9\)) # (!\sempre4~combout\(5) & ((\somador1|result[4]~9\) # (GND))))) # (!\Program_Counter|inst5|inst2~1_combout\ & 
-- ((\sempre4~combout\(5) & (\somador1|result[4]~9\ & VCC)) # (!\sempre4~combout\(5) & (!\somador1|result[4]~9\))))
-- \somador1|result[5]~11\ = CARRY((\Program_Counter|inst5|inst2~1_combout\ & ((!\somador1|result[4]~9\) # (!\sempre4~combout\(5)))) # (!\Program_Counter|inst5|inst2~1_combout\ & (!\sempre4~combout\(5) & !\somador1|result[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst5|inst2~1_combout\,
	datab => \sempre4~combout\(5),
	datad => VCC,
	cin => \somador1|result[4]~9\,
	combout => \somador1|result[5]~10_combout\,
	cout => \somador1|result[5]~11\);

-- Location: LCCOMB_X49_Y16_N12
\somador1|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[6]~12_combout\ = ((\sempre4~combout\(6) $ (\Program_Counter|inst6|inst2~1_combout\ $ (\somador1|result[5]~11\)))) # (GND)
-- \somador1|result[6]~13\ = CARRY((\sempre4~combout\(6) & ((!\somador1|result[5]~11\) # (!\Program_Counter|inst6|inst2~1_combout\))) # (!\sempre4~combout\(6) & (!\Program_Counter|inst6|inst2~1_combout\ & !\somador1|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(6),
	datab => \Program_Counter|inst6|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[5]~11\,
	combout => \somador1|result[6]~12_combout\,
	cout => \somador1|result[6]~13\);

-- Location: LCCOMB_X49_Y16_N14
\somador1|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[7]~14_combout\ = (\Program_Counter|inst7|inst2~1_combout\ & ((\sempre4~combout\(7) & (!\somador1|result[6]~13\)) # (!\sempre4~combout\(7) & ((\somador1|result[6]~13\) # (GND))))) # (!\Program_Counter|inst7|inst2~1_combout\ & 
-- ((\sempre4~combout\(7) & (\somador1|result[6]~13\ & VCC)) # (!\sempre4~combout\(7) & (!\somador1|result[6]~13\))))
-- \somador1|result[7]~15\ = CARRY((\Program_Counter|inst7|inst2~1_combout\ & ((!\somador1|result[6]~13\) # (!\sempre4~combout\(7)))) # (!\Program_Counter|inst7|inst2~1_combout\ & (!\sempre4~combout\(7) & !\somador1|result[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst7|inst2~1_combout\,
	datab => \sempre4~combout\(7),
	datad => VCC,
	cin => \somador1|result[6]~13\,
	combout => \somador1|result[7]~14_combout\,
	cout => \somador1|result[7]~15\);

-- Location: LCCOMB_X49_Y16_N16
\somador1|result[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[8]~16_combout\ = ((\Program_Counter|inst8|inst2~1_combout\ $ (\sempre4~combout\(8) $ (\somador1|result[7]~15\)))) # (GND)
-- \somador1|result[8]~17\ = CARRY((\Program_Counter|inst8|inst2~1_combout\ & (\sempre4~combout\(8) & !\somador1|result[7]~15\)) # (!\Program_Counter|inst8|inst2~1_combout\ & ((\sempre4~combout\(8)) # (!\somador1|result[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst8|inst2~1_combout\,
	datab => \sempre4~combout\(8),
	datad => VCC,
	cin => \somador1|result[7]~15\,
	combout => \somador1|result[8]~16_combout\,
	cout => \somador1|result[8]~17\);

-- Location: LCCOMB_X49_Y16_N18
\somador1|result[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[9]~18_combout\ = (\sempre4~combout\(9) & ((\Program_Counter|inst9|inst2~1_combout\ & (!\somador1|result[8]~17\)) # (!\Program_Counter|inst9|inst2~1_combout\ & (\somador1|result[8]~17\ & VCC)))) # (!\sempre4~combout\(9) & 
-- ((\Program_Counter|inst9|inst2~1_combout\ & ((\somador1|result[8]~17\) # (GND))) # (!\Program_Counter|inst9|inst2~1_combout\ & (!\somador1|result[8]~17\))))
-- \somador1|result[9]~19\ = CARRY((\sempre4~combout\(9) & (\Program_Counter|inst9|inst2~1_combout\ & !\somador1|result[8]~17\)) # (!\sempre4~combout\(9) & ((\Program_Counter|inst9|inst2~1_combout\) # (!\somador1|result[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(9),
	datab => \Program_Counter|inst9|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[8]~17\,
	combout => \somador1|result[9]~18_combout\,
	cout => \somador1|result[9]~19\);

-- Location: LCCOMB_X49_Y16_N20
\somador1|result[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[10]~20_combout\ = ((\Program_Counter|inst10|inst2~1_combout\ $ (\sempre4~combout\(10) $ (\somador1|result[9]~19\)))) # (GND)
-- \somador1|result[10]~21\ = CARRY((\Program_Counter|inst10|inst2~1_combout\ & (\sempre4~combout\(10) & !\somador1|result[9]~19\)) # (!\Program_Counter|inst10|inst2~1_combout\ & ((\sempre4~combout\(10)) # (!\somador1|result[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst10|inst2~1_combout\,
	datab => \sempre4~combout\(10),
	datad => VCC,
	cin => \somador1|result[9]~19\,
	combout => \somador1|result[10]~20_combout\,
	cout => \somador1|result[10]~21\);

-- Location: LCCOMB_X49_Y16_N22
\somador1|result[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[11]~22_combout\ = (\sempre4~combout\(11) & ((\Program_Counter|inst11|inst2~1_combout\ & (!\somador1|result[10]~21\)) # (!\Program_Counter|inst11|inst2~1_combout\ & (\somador1|result[10]~21\ & VCC)))) # (!\sempre4~combout\(11) & 
-- ((\Program_Counter|inst11|inst2~1_combout\ & ((\somador1|result[10]~21\) # (GND))) # (!\Program_Counter|inst11|inst2~1_combout\ & (!\somador1|result[10]~21\))))
-- \somador1|result[11]~23\ = CARRY((\sempre4~combout\(11) & (\Program_Counter|inst11|inst2~1_combout\ & !\somador1|result[10]~21\)) # (!\sempre4~combout\(11) & ((\Program_Counter|inst11|inst2~1_combout\) # (!\somador1|result[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(11),
	datab => \Program_Counter|inst11|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[10]~21\,
	combout => \somador1|result[11]~22_combout\,
	cout => \somador1|result[11]~23\);

-- Location: LCCOMB_X49_Y16_N24
\somador1|result[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[12]~24_combout\ = ((\Program_Counter|inst12|inst2~1_combout\ $ (\sempre4~combout\(12) $ (\somador1|result[11]~23\)))) # (GND)
-- \somador1|result[12]~25\ = CARRY((\Program_Counter|inst12|inst2~1_combout\ & (\sempre4~combout\(12) & !\somador1|result[11]~23\)) # (!\Program_Counter|inst12|inst2~1_combout\ & ((\sempre4~combout\(12)) # (!\somador1|result[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst12|inst2~1_combout\,
	datab => \sempre4~combout\(12),
	datad => VCC,
	cin => \somador1|result[11]~23\,
	combout => \somador1|result[12]~24_combout\,
	cout => \somador1|result[12]~25\);

-- Location: LCCOMB_X49_Y16_N26
\somador1|result[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[13]~26_combout\ = (\Program_Counter|inst13|inst2~1_combout\ & ((\sempre4~combout\(13) & (!\somador1|result[12]~25\)) # (!\sempre4~combout\(13) & ((\somador1|result[12]~25\) # (GND))))) # (!\Program_Counter|inst13|inst2~1_combout\ & 
-- ((\sempre4~combout\(13) & (\somador1|result[12]~25\ & VCC)) # (!\sempre4~combout\(13) & (!\somador1|result[12]~25\))))
-- \somador1|result[13]~27\ = CARRY((\Program_Counter|inst13|inst2~1_combout\ & ((!\somador1|result[12]~25\) # (!\sempre4~combout\(13)))) # (!\Program_Counter|inst13|inst2~1_combout\ & (!\sempre4~combout\(13) & !\somador1|result[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst13|inst2~1_combout\,
	datab => \sempre4~combout\(13),
	datad => VCC,
	cin => \somador1|result[12]~25\,
	combout => \somador1|result[13]~26_combout\,
	cout => \somador1|result[13]~27\);

-- Location: LCCOMB_X49_Y16_N28
\somador1|result[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[14]~28_combout\ = ((\Program_Counter|inst14|inst2~1_combout\ $ (\sempre4~combout\(14) $ (\somador1|result[13]~27\)))) # (GND)
-- \somador1|result[14]~29\ = CARRY((\Program_Counter|inst14|inst2~1_combout\ & (\sempre4~combout\(14) & !\somador1|result[13]~27\)) # (!\Program_Counter|inst14|inst2~1_combout\ & ((\sempre4~combout\(14)) # (!\somador1|result[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst14|inst2~1_combout\,
	datab => \sempre4~combout\(14),
	datad => VCC,
	cin => \somador1|result[13]~27\,
	combout => \somador1|result[14]~28_combout\,
	cout => \somador1|result[14]~29\);

-- Location: LCCOMB_X49_Y16_N30
\somador1|result[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[15]~30_combout\ = (\Program_Counter|inst15|inst2~1_combout\ & ((\sempre4~combout\(15) & (!\somador1|result[14]~29\)) # (!\sempre4~combout\(15) & ((\somador1|result[14]~29\) # (GND))))) # (!\Program_Counter|inst15|inst2~1_combout\ & 
-- ((\sempre4~combout\(15) & (\somador1|result[14]~29\ & VCC)) # (!\sempre4~combout\(15) & (!\somador1|result[14]~29\))))
-- \somador1|result[15]~31\ = CARRY((\Program_Counter|inst15|inst2~1_combout\ & ((!\somador1|result[14]~29\) # (!\sempre4~combout\(15)))) # (!\Program_Counter|inst15|inst2~1_combout\ & (!\sempre4~combout\(15) & !\somador1|result[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst15|inst2~1_combout\,
	datab => \sempre4~combout\(15),
	datad => VCC,
	cin => \somador1|result[14]~29\,
	combout => \somador1|result[15]~30_combout\,
	cout => \somador1|result[15]~31\);

-- Location: LCCOMB_X49_Y15_N0
\somador1|result[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[16]~32_combout\ = ((\Program_Counter|inst16|inst2~1_combout\ $ (\sempre4~combout\(16) $ (\somador1|result[15]~31\)))) # (GND)
-- \somador1|result[16]~33\ = CARRY((\Program_Counter|inst16|inst2~1_combout\ & (\sempre4~combout\(16) & !\somador1|result[15]~31\)) # (!\Program_Counter|inst16|inst2~1_combout\ & ((\sempre4~combout\(16)) # (!\somador1|result[15]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst16|inst2~1_combout\,
	datab => \sempre4~combout\(16),
	datad => VCC,
	cin => \somador1|result[15]~31\,
	combout => \somador1|result[16]~32_combout\,
	cout => \somador1|result[16]~33\);

-- Location: LCCOMB_X49_Y15_N2
\somador1|result[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[17]~34_combout\ = (\Program_Counter|inst17|inst2~1_combout\ & ((\sempre4~combout\(17) & (!\somador1|result[16]~33\)) # (!\sempre4~combout\(17) & ((\somador1|result[16]~33\) # (GND))))) # (!\Program_Counter|inst17|inst2~1_combout\ & 
-- ((\sempre4~combout\(17) & (\somador1|result[16]~33\ & VCC)) # (!\sempre4~combout\(17) & (!\somador1|result[16]~33\))))
-- \somador1|result[17]~35\ = CARRY((\Program_Counter|inst17|inst2~1_combout\ & ((!\somador1|result[16]~33\) # (!\sempre4~combout\(17)))) # (!\Program_Counter|inst17|inst2~1_combout\ & (!\sempre4~combout\(17) & !\somador1|result[16]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst17|inst2~1_combout\,
	datab => \sempre4~combout\(17),
	datad => VCC,
	cin => \somador1|result[16]~33\,
	combout => \somador1|result[17]~34_combout\,
	cout => \somador1|result[17]~35\);

-- Location: LCCOMB_X49_Y15_N4
\somador1|result[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[18]~36_combout\ = ((\Program_Counter|inst18|inst2~1_combout\ $ (\sempre4~combout\(18) $ (\somador1|result[17]~35\)))) # (GND)
-- \somador1|result[18]~37\ = CARRY((\Program_Counter|inst18|inst2~1_combout\ & (\sempre4~combout\(18) & !\somador1|result[17]~35\)) # (!\Program_Counter|inst18|inst2~1_combout\ & ((\sempre4~combout\(18)) # (!\somador1|result[17]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst18|inst2~1_combout\,
	datab => \sempre4~combout\(18),
	datad => VCC,
	cin => \somador1|result[17]~35\,
	combout => \somador1|result[18]~36_combout\,
	cout => \somador1|result[18]~37\);

-- Location: LCCOMB_X49_Y15_N6
\somador1|result[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[19]~38_combout\ = (\sempre4~combout\(19) & ((\Program_Counter|inst19|inst2~1_combout\ & (!\somador1|result[18]~37\)) # (!\Program_Counter|inst19|inst2~1_combout\ & (\somador1|result[18]~37\ & VCC)))) # (!\sempre4~combout\(19) & 
-- ((\Program_Counter|inst19|inst2~1_combout\ & ((\somador1|result[18]~37\) # (GND))) # (!\Program_Counter|inst19|inst2~1_combout\ & (!\somador1|result[18]~37\))))
-- \somador1|result[19]~39\ = CARRY((\sempre4~combout\(19) & (\Program_Counter|inst19|inst2~1_combout\ & !\somador1|result[18]~37\)) # (!\sempre4~combout\(19) & ((\Program_Counter|inst19|inst2~1_combout\) # (!\somador1|result[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(19),
	datab => \Program_Counter|inst19|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[18]~37\,
	combout => \somador1|result[19]~38_combout\,
	cout => \somador1|result[19]~39\);

-- Location: LCCOMB_X49_Y15_N8
\somador1|result[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[20]~40_combout\ = ((\Program_Counter|inst20|inst2~1_combout\ $ (\sempre4~combout\(20) $ (\somador1|result[19]~39\)))) # (GND)
-- \somador1|result[20]~41\ = CARRY((\Program_Counter|inst20|inst2~1_combout\ & (\sempre4~combout\(20) & !\somador1|result[19]~39\)) # (!\Program_Counter|inst20|inst2~1_combout\ & ((\sempre4~combout\(20)) # (!\somador1|result[19]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst20|inst2~1_combout\,
	datab => \sempre4~combout\(20),
	datad => VCC,
	cin => \somador1|result[19]~39\,
	combout => \somador1|result[20]~40_combout\,
	cout => \somador1|result[20]~41\);

-- Location: LCCOMB_X49_Y15_N10
\somador1|result[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[21]~42_combout\ = (\sempre4~combout\(21) & ((\Program_Counter|inst21|inst2~1_combout\ & (!\somador1|result[20]~41\)) # (!\Program_Counter|inst21|inst2~1_combout\ & (\somador1|result[20]~41\ & VCC)))) # (!\sempre4~combout\(21) & 
-- ((\Program_Counter|inst21|inst2~1_combout\ & ((\somador1|result[20]~41\) # (GND))) # (!\Program_Counter|inst21|inst2~1_combout\ & (!\somador1|result[20]~41\))))
-- \somador1|result[21]~43\ = CARRY((\sempre4~combout\(21) & (\Program_Counter|inst21|inst2~1_combout\ & !\somador1|result[20]~41\)) # (!\sempre4~combout\(21) & ((\Program_Counter|inst21|inst2~1_combout\) # (!\somador1|result[20]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(21),
	datab => \Program_Counter|inst21|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[20]~41\,
	combout => \somador1|result[21]~42_combout\,
	cout => \somador1|result[21]~43\);

-- Location: LCCOMB_X49_Y15_N12
\somador1|result[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[22]~44_combout\ = ((\Program_Counter|inst22|inst2~1_combout\ $ (\sempre4~combout\(22) $ (\somador1|result[21]~43\)))) # (GND)
-- \somador1|result[22]~45\ = CARRY((\Program_Counter|inst22|inst2~1_combout\ & (\sempre4~combout\(22) & !\somador1|result[21]~43\)) # (!\Program_Counter|inst22|inst2~1_combout\ & ((\sempre4~combout\(22)) # (!\somador1|result[21]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst22|inst2~1_combout\,
	datab => \sempre4~combout\(22),
	datad => VCC,
	cin => \somador1|result[21]~43\,
	combout => \somador1|result[22]~44_combout\,
	cout => \somador1|result[22]~45\);

-- Location: LCCOMB_X49_Y15_N14
\somador1|result[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[23]~46_combout\ = (\sempre4~combout\(23) & ((\Program_Counter|inst23|inst2~1_combout\ & (!\somador1|result[22]~45\)) # (!\Program_Counter|inst23|inst2~1_combout\ & (\somador1|result[22]~45\ & VCC)))) # (!\sempre4~combout\(23) & 
-- ((\Program_Counter|inst23|inst2~1_combout\ & ((\somador1|result[22]~45\) # (GND))) # (!\Program_Counter|inst23|inst2~1_combout\ & (!\somador1|result[22]~45\))))
-- \somador1|result[23]~47\ = CARRY((\sempre4~combout\(23) & (\Program_Counter|inst23|inst2~1_combout\ & !\somador1|result[22]~45\)) # (!\sempre4~combout\(23) & ((\Program_Counter|inst23|inst2~1_combout\) # (!\somador1|result[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(23),
	datab => \Program_Counter|inst23|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[22]~45\,
	combout => \somador1|result[23]~46_combout\,
	cout => \somador1|result[23]~47\);

-- Location: LCCOMB_X49_Y15_N16
\somador1|result[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[24]~48_combout\ = ((\Program_Counter|inst24|inst2~1_combout\ $ (\sempre4~combout\(24) $ (\somador1|result[23]~47\)))) # (GND)
-- \somador1|result[24]~49\ = CARRY((\Program_Counter|inst24|inst2~1_combout\ & (\sempre4~combout\(24) & !\somador1|result[23]~47\)) # (!\Program_Counter|inst24|inst2~1_combout\ & ((\sempre4~combout\(24)) # (!\somador1|result[23]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst24|inst2~1_combout\,
	datab => \sempre4~combout\(24),
	datad => VCC,
	cin => \somador1|result[23]~47\,
	combout => \somador1|result[24]~48_combout\,
	cout => \somador1|result[24]~49\);

-- Location: LCCOMB_X49_Y15_N18
\somador1|result[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[25]~50_combout\ = (\sempre4~combout\(25) & ((\Program_Counter|inst25|inst2~1_combout\ & (!\somador1|result[24]~49\)) # (!\Program_Counter|inst25|inst2~1_combout\ & (\somador1|result[24]~49\ & VCC)))) # (!\sempre4~combout\(25) & 
-- ((\Program_Counter|inst25|inst2~1_combout\ & ((\somador1|result[24]~49\) # (GND))) # (!\Program_Counter|inst25|inst2~1_combout\ & (!\somador1|result[24]~49\))))
-- \somador1|result[25]~51\ = CARRY((\sempre4~combout\(25) & (\Program_Counter|inst25|inst2~1_combout\ & !\somador1|result[24]~49\)) # (!\sempre4~combout\(25) & ((\Program_Counter|inst25|inst2~1_combout\) # (!\somador1|result[24]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(25),
	datab => \Program_Counter|inst25|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[24]~49\,
	combout => \somador1|result[25]~50_combout\,
	cout => \somador1|result[25]~51\);

-- Location: LCCOMB_X49_Y15_N20
\somador1|result[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[26]~52_combout\ = ((\sempre4~combout\(26) $ (\Program_Counter|inst26|inst2~1_combout\ $ (\somador1|result[25]~51\)))) # (GND)
-- \somador1|result[26]~53\ = CARRY((\sempre4~combout\(26) & ((!\somador1|result[25]~51\) # (!\Program_Counter|inst26|inst2~1_combout\))) # (!\sempre4~combout\(26) & (!\Program_Counter|inst26|inst2~1_combout\ & !\somador1|result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(26),
	datab => \Program_Counter|inst26|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[25]~51\,
	combout => \somador1|result[26]~52_combout\,
	cout => \somador1|result[26]~53\);

-- Location: LCCOMB_X49_Y15_N22
\somador1|result[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[27]~54_combout\ = (\Program_Counter|inst27|inst2~1_combout\ & ((\sempre4~combout\(27) & (!\somador1|result[26]~53\)) # (!\sempre4~combout\(27) & ((\somador1|result[26]~53\) # (GND))))) # (!\Program_Counter|inst27|inst2~1_combout\ & 
-- ((\sempre4~combout\(27) & (\somador1|result[26]~53\ & VCC)) # (!\sempre4~combout\(27) & (!\somador1|result[26]~53\))))
-- \somador1|result[27]~55\ = CARRY((\Program_Counter|inst27|inst2~1_combout\ & ((!\somador1|result[26]~53\) # (!\sempre4~combout\(27)))) # (!\Program_Counter|inst27|inst2~1_combout\ & (!\sempre4~combout\(27) & !\somador1|result[26]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst27|inst2~1_combout\,
	datab => \sempre4~combout\(27),
	datad => VCC,
	cin => \somador1|result[26]~53\,
	combout => \somador1|result[27]~54_combout\,
	cout => \somador1|result[27]~55\);

-- Location: LCCOMB_X49_Y15_N24
\somador1|result[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[28]~56_combout\ = ((\Program_Counter|inst28|inst2~1_combout\ $ (\sempre4~combout\(28) $ (\somador1|result[27]~55\)))) # (GND)
-- \somador1|result[28]~57\ = CARRY((\Program_Counter|inst28|inst2~1_combout\ & (\sempre4~combout\(28) & !\somador1|result[27]~55\)) # (!\Program_Counter|inst28|inst2~1_combout\ & ((\sempre4~combout\(28)) # (!\somador1|result[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst28|inst2~1_combout\,
	datab => \sempre4~combout\(28),
	datad => VCC,
	cin => \somador1|result[27]~55\,
	combout => \somador1|result[28]~56_combout\,
	cout => \somador1|result[28]~57\);

-- Location: LCCOMB_X49_Y15_N26
\somador1|result[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[29]~58_combout\ = (\sempre4~combout\(29) & ((\Program_Counter|inst29|inst2~1_combout\ & (!\somador1|result[28]~57\)) # (!\Program_Counter|inst29|inst2~1_combout\ & (\somador1|result[28]~57\ & VCC)))) # (!\sempre4~combout\(29) & 
-- ((\Program_Counter|inst29|inst2~1_combout\ & ((\somador1|result[28]~57\) # (GND))) # (!\Program_Counter|inst29|inst2~1_combout\ & (!\somador1|result[28]~57\))))
-- \somador1|result[29]~59\ = CARRY((\sempre4~combout\(29) & (\Program_Counter|inst29|inst2~1_combout\ & !\somador1|result[28]~57\)) # (!\sempre4~combout\(29) & ((\Program_Counter|inst29|inst2~1_combout\) # (!\somador1|result[28]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(29),
	datab => \Program_Counter|inst29|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[28]~57\,
	combout => \somador1|result[29]~58_combout\,
	cout => \somador1|result[29]~59\);

-- Location: LCCOMB_X49_Y15_N28
\somador1|result[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[30]~60_combout\ = ((\sempre4~combout\(30) $ (\Program_Counter|inst30|inst2~1_combout\ $ (\somador1|result[29]~59\)))) # (GND)
-- \somador1|result[30]~61\ = CARRY((\sempre4~combout\(30) & ((!\somador1|result[29]~59\) # (!\Program_Counter|inst30|inst2~1_combout\))) # (!\sempre4~combout\(30) & (!\Program_Counter|inst30|inst2~1_combout\ & !\somador1|result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sempre4~combout\(30),
	datab => \Program_Counter|inst30|inst2~1_combout\,
	datad => VCC,
	cin => \somador1|result[29]~59\,
	combout => \somador1|result[30]~60_combout\,
	cout => \somador1|result[30]~61\);

-- Location: LCCOMB_X49_Y15_N30
\somador1|result[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador1|result[31]~62_combout\ = \Program_Counter|inst31|inst2~1_combout\ $ (\somador1|result[30]~61\ $ (!\sempre4~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst31|inst2~1_combout\,
	datad => \sempre4~combout\(31),
	cin => \somador1|result[30]~61\,
	combout => \somador1|result[31]~62_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(30),
	combout => \sempre4~combout\(30));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(29),
	combout => \sempre4~combout\(29));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(28),
	combout => \endereco~combout\(28));

-- Location: LCCOMB_X49_Y11_N30
\Program_Counter|inst28|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst28|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(28))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst28|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco~combout\(28),
	datac => \Program_Counter|inst28|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst28|inst2~1_combout\);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(27),
	combout => \endereco~combout\(27));

-- Location: LCCOMB_X49_Y11_N0
\Program_Counter|inst27|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst27|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(27)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst27|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst27|inst2~1_combout\,
	datac => \endereco~combout\(27),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst27|inst2~1_combout\);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(26),
	combout => \sempre4~combout\(26));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(25),
	combout => \sempre4~combout\(25));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(24),
	combout => \endereco~combout\(24));

-- Location: LCCOMB_X46_Y23_N12
\Program_Counter|inst24|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst24|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(24)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst24|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst24|inst2~1_combout\,
	datac => \endereco~combout\(24),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst24|inst2~1_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(23),
	combout => \sempre4~combout\(23));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(22),
	combout => \endereco~combout\(22));

-- Location: LCCOMB_X46_Y11_N4
\Program_Counter|inst22|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst22|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(22)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst22|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst22|inst2~1_combout\,
	datac => \endereco~combout\(22),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst22|inst2~1_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(21),
	combout => \sempre4~combout\(21));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(20),
	combout => \endereco~combout\(20));

-- Location: LCCOMB_X48_Y11_N20
\Program_Counter|inst20|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst20|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(20)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst20|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst20|inst2~1_combout\,
	datac => \endereco~combout\(20),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst20|inst2~1_combout\);

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(19),
	combout => \sempre4~combout\(19));

-- Location: LCCOMB_X49_Y12_N18
\Program_Counter|inst18|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst18|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(18))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst18|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco~combout\(18),
	datab => \Program_Counter|inst18|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst18|inst2~1_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(17),
	combout => \endereco~combout\(17));

-- Location: LCCOMB_X49_Y20_N16
\Program_Counter|inst17|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst17|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(17)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst17|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst17|inst2~1_combout\,
	datac => \endereco~combout\(17),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst17|inst2~1_combout\);

-- Location: LCCOMB_X49_Y11_N12
\Program_Counter|inst16|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst16|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(16))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst16|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco~combout\(16),
	datac => \Program_Counter|inst16|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst16|inst2~1_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(15),
	combout => \endereco~combout\(15));

-- Location: LCCOMB_X39_Y23_N16
\Program_Counter|inst15|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst15|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(15))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst15|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco~combout\(15),
	datac => \Program_Counter|inst15|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst15|inst2~1_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(14),
	combout => \endereco~combout\(14));

-- Location: LCCOMB_X45_Y20_N8
\Program_Counter|inst14|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst14|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(14)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst14|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst14|inst2~1_combout\,
	datac => \endereco~combout\(14),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst14|inst2~1_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(13),
	combout => \endereco~combout\(13));

-- Location: LCCOMB_X49_Y23_N22
\Program_Counter|inst13|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst13|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(13)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst13|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst13|inst2~1_combout\,
	datac => \endereco~combout\(13),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst13|inst2~1_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(12),
	combout => \endereco~combout\(12));

-- Location: LCCOMB_X46_Y23_N22
\Program_Counter|inst12|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst12|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(12)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst12|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst12|inst2~1_combout\,
	datac => \endereco~combout\(12),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst12|inst2~1_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(11),
	combout => \sempre4~combout\(11));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(10),
	combout => \endereco~combout\(10));

-- Location: LCCOMB_X49_Y12_N12
\Program_Counter|inst10|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst10|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(10)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst10|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst10|inst2~1_combout\,
	datac => \endereco~combout\(10),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst10|inst2~1_combout\);

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(9),
	combout => \sempre4~combout\(9));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(8),
	combout => \endereco~combout\(8));

-- Location: LCCOMB_X48_Y23_N28
\Program_Counter|inst8|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst8|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(8))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst8|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco~combout\(8),
	datac => \Program_Counter|inst8|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst8|inst2~1_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(7),
	combout => \endereco~combout\(7));

-- Location: LCCOMB_X46_Y20_N20
\Program_Counter|inst7|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst7|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(7))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst7|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endereco~combout\(7),
	datac => \Program_Counter|inst7|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst7|inst2~1_combout\);

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(6),
	combout => \sempre4~combout\(6));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(5),
	combout => \endereco~combout\(5));

-- Location: LCCOMB_X42_Y23_N16
\Program_Counter|inst5|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst5|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(5)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst5|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst5|inst2~1_combout\,
	datac => \endereco~combout\(5),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst5|inst2~1_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(4),
	combout => \endereco~combout\(4));

-- Location: LCCOMB_X46_Y23_N6
\Program_Counter|inst4|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst4|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(4)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst4|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Program_Counter|inst4|inst2~1_combout\,
	datac => \endereco~combout\(4),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst4|inst2~1_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sempre4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sempre4(3),
	combout => \sempre4~combout\(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\endereco[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_endereco(2),
	combout => \endereco~combout\(2));

-- Location: LCCOMB_X45_Y23_N2
\Program_Counter|inst2|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst2|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((!\endereco~combout\(2)))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Program_Counter|inst2|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Program_Counter|inst2|inst2~1_combout\,
	datac => \endereco~combout\(2),
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst2|inst2~1_combout\);

-- Location: LCCOMB_X49_Y12_N6
\Program_Counter|inst1|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Program_Counter|inst1|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (!\endereco~combout\(1))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst1|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco~combout\(1),
	datac => \Program_Counter|inst1|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Program_Counter|inst1|inst2~1_combout\);

-- Location: LCCOMB_X21_Y18_N26
\Registrador_Instrucao|inst21|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Registrador_Instrucao|inst21|inst2~1_combout\ = (GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & ((\Program_Counter|inst|inst2~1_combout\))) # (!GLOBAL(\inst1|enableInstrucao~clkctrl_outclk\) & (\Registrador_Instrucao|inst21|inst2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Registrador_Instrucao|inst21|inst2~1_combout\,
	datac => \Program_Counter|inst|inst2~1_combout\,
	datad => \inst1|enableInstrucao~clkctrl_outclk\,
	combout => \Registrador_Instrucao|inst21|inst2~1_combout\);

-- Location: LCCOMB_X22_Y18_N8
\inst1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst1|estado_atual.fim_instrucao_r~regout\) # ((\inst1|estado_atual.execucao~regout\) # ((\inst1|ULAOp\(1) & \inst1|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|estado_atual.fim_instrucao_r~regout\,
	datab => \inst1|ULAOp\(1),
	datac => \inst1|estado_atual.execucao~regout\,
	datad => \inst1|WideNor0~combout\,
	combout => \inst1|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|ULAOp\(1) & (\inst1|WideNor2~0_combout\ & \inst1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ULAOp\(1),
	datac => \inst1|WideNor2~0_combout\,
	datad => \inst1|Mux11~0_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst1|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (!\inst1|Mux1~3_combout\ & ((\inst1|Mux5~0_combout\) # ((\inst1|Mux8~0_combout\ & \inst1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~0_combout\,
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|Mux5~1_combout\,
	datad => \inst1|Mux5~0_combout\,
	combout => \inst1|Mux5~2_combout\);

-- Location: LCFF_X22_Y18_N23
\inst1|ULAOp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|Mux5~2_combout\,
	ena => \inst1|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ULAOp\(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DVI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|DVI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DVI);

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DvC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DvC);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LerMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LerMem);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemParaReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemParaReg);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|EscMem~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscMem);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAFonte~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ULAFonte~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAFonte);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|EscReg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscReg);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(15));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(14));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(13));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(12));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(11));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(10));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(9));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(8));

-- Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(7));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(6));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(5));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(4));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst2|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(2));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\extensao[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_extensao(0));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instrucao[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instrucao(5));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instrucao[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instrucao(4));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instrucao[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instrucao(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instrucao[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst2|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instrucao(2));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instrucao[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instrucao(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instrucao[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_instrucao(0));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[31]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(31));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[30]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(30));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[29]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(29));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[28]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(28));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[27]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(27));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[26]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(26));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[25]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(25));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[24]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(24));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[23]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(23));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[22]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(22));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[21]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(21));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[20]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(20));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[19]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(19));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(18));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[17]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(17));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[16]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(16));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(15));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[14]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(14));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(13));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(12));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(11));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(10));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(9));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(8));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(7));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(6));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(5));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(4));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(3));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(1));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \somador1|result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC2(0));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_1(4));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_1(3));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_1(2));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_1(1));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst21|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_1(0));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_2(4));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_2(3));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_2(2));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_2(1));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_register_2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_read_register_2(0));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(27));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(26));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(25));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(24));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst21|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(23));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(22));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(21));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(20));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(19));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(18));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(17));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(16));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(15));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(14));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(13));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(12));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(11));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(10));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(9));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(8));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(7));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(6));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(5));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst2|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(4));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Registrador_Instrucao|inst|ALT_INV_inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\shift[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_shift(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAOp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ULAOp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAOp(1));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAOp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAOp(0));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_register[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_register(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_register[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_register(3));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_register[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_register(2));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_register[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_register(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_register[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_write_register(0));
END structure;


