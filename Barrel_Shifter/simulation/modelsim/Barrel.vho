-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 222 10/21/2009 SJ Web Edition"

-- DATE "05/04/2021 11:01:08"

-- 
-- Device: Altera EPM3064ALC44-10 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	barrels IS
    PORT (
	din : IN std_logic_vector(7 DOWNTO 0);
	shift : IN std_logic_vector(2 DOWNTO 0);
	con : IN std_logic_vector(1 DOWNTO 0);
	dout : OUT std_logic_vector(7 DOWNTO 0)
	);
END barrels;

-- Design Ports Information
-- din[0]	=>  Location: PIN_11
-- din[1]	=>  Location: PIN_34
-- din[2]	=>  Location: PIN_40
-- din[3]	=>  Location: PIN_27
-- din[4]	=>  Location: PIN_41
-- din[5]	=>  Location: PIN_4
-- din[6]	=>  Location: PIN_39
-- din[7]	=>  Location: PIN_37
-- shift[0]	=>  Location: PIN_18
-- shift[1]	=>  Location: PIN_26
-- shift[2]	=>  Location: PIN_19
-- con[0]	=>  Location: PIN_1
-- con[1]	=>  Location: PIN_8
-- dout[0]	=>  Location: PIN_5
-- dout[1]	=>  Location: PIN_28
-- dout[2]	=>  Location: PIN_31
-- dout[3]	=>  Location: PIN_9
-- dout[4]	=>  Location: PIN_16
-- dout[5]	=>  Location: PIN_6
-- dout[6]	=>  Location: PIN_20
-- dout[7]	=>  Location: PIN_25

ARCHITECTURE structure OF barrels IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_din : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_shift : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_con : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux4~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~17_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux4~28_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux3~32_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux2~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~25_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux0~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux6~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux1~29_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux5~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Mux7~19_pexpout\ : std_logic;
SIGNAL \Mux7~25_pexpout\ : std_logic;
SIGNAL \Mux7~18_dataout\ : std_logic;
SIGNAL \Mux6~23_pexpout\ : std_logic;
SIGNAL \Mux6~29_pexpout\ : std_logic;
SIGNAL \Mux6~22_dataout\ : std_logic;
SIGNAL \Mux5~21_pexpout\ : std_logic;
SIGNAL \Mux5~27_pexpout\ : std_logic;
SIGNAL \Mux5~20_dataout\ : std_logic;
SIGNAL \Mux4~19_pexpout\ : std_logic;
SIGNAL \Mux4~22_pexpout\ : std_logic;
SIGNAL \Mux4~28_pexpout\ : std_logic;
SIGNAL \Mux4~18_dataout\ : std_logic;
SIGNAL \Mux3~23_pexpout\ : std_logic;
SIGNAL \Mux3~26_pexpout\ : std_logic;
SIGNAL \Mux3~32_pexpout\ : std_logic;
SIGNAL \Mux3~22_dataout\ : std_logic;
SIGNAL \Mux2~20_pexpout\ : std_logic;
SIGNAL \Mux2~23_pexpout\ : std_logic;
SIGNAL \Mux2~29_pexpout\ : std_logic;
SIGNAL \Mux2~19_dataout\ : std_logic;
SIGNAL \Mux1~23_pexpout\ : std_logic;
SIGNAL \Mux1~29_pexpout\ : std_logic;
SIGNAL \Mux1~22_dataout\ : std_logic;
SIGNAL \Mux0~18_pexpout\ : std_logic;
SIGNAL \Mux0~24_pexpout\ : std_logic;
SIGNAL \Mux0~17_dataout\ : std_logic;
SIGNAL \con~dataout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \din~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \shift~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_shift~dataout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_con~dataout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_din <= din;
ww_shift <= shift;
ww_con <= con;
dout <= ww_dout;

\Mux4~18_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1));

\Mux4~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux4~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \con~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux4~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \con~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1));

\Mux4~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux4~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux4~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1));

\Mux3~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0));

\Mux3~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \con~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux3~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \con~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1));

\Mux3~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux3~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux3~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~19_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & NOT \shift~dataout\(0) & NOT \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \con~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1));

\Mux2~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1));

\Mux2~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \con~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~19_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \con~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux2~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~18_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1));

\Mux7~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & \din~dataout\(2));

\Mux7~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux7~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux7~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux7~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux7~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~17_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1));

\Mux0~17_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & \din~dataout\(5));

\Mux0~17_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux0~17_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux0~17_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux0~17_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~17_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~17_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~17_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~17_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~17_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & \din~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux6~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \con~dataout\(0) & \din~dataout\(6));

\Mux6~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & NOT \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux6~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux6~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & NOT \shift~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux6~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux6~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & \din~dataout\(7) & \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & \con~dataout\(0));

\Mux1~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & \con~dataout\(0) & \din~dataout\(1));

\Mux1~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \con~dataout\(0));

\Mux1~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & NOT \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \con~dataout\(0));

\Mux1~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \shift~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux1~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux1~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~20_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \shift~dataout\(0) & NOT \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux5~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(0) & \din~dataout\(6));

\Mux5~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \shift~dataout\(0) & NOT \shift~dataout\(1) & NOT \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux5~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2) & \con~dataout\(0));

\Mux5~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(1) & NOT \shift~dataout\(2) & \con~dataout\(0));

\Mux5~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux5~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0) & \din~dataout\(7));

\Mux4~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & \din~dataout\(5) & NOT \con~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(1));

\Mux4~19_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux4~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & NOT \shift~dataout\(0));

\Mux4~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & \din~dataout\(6) & \din~dataout\(0) & NOT \con~dataout\(1) & \din~dataout\(4) & \shift~dataout\(0));

\Mux4~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & NOT \con~dataout\(1) & \din~dataout\(4) & \shift~dataout\(0));

\Mux4~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & \din~dataout\(0) & \shift~dataout\(0));

\Mux4~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & NOT \con~dataout\(1) & NOT \shift~dataout\(0));

\Mux4~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux4~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~28_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & NOT \con~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux4~28_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \con~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux4~28_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux4~28_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \con~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux4~28_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux4~28_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~28_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~28_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~28_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux4~28_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux4~28_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & \din~dataout\(2) & NOT \shift~dataout\(0) & \shift~dataout\(1) & NOT \con~dataout\(1));

\Mux3~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(2) & NOT \con~dataout\(0) & \din~dataout\(3) & \shift~dataout\(0) & \shift~dataout\(1) & NOT \con~dataout\(1));

\Mux3~23_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux3~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~26_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0) & \din~dataout\(1) & \shift~dataout\(0) & NOT \con~dataout\(1));

\Mux3~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & \din~dataout\(1) & \din~dataout\(7) & \shift~dataout\(0) & NOT \con~dataout\(1) & \din~dataout\(3));

\Mux3~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & \din~dataout\(7) & \shift~dataout\(0));

\Mux3~26_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & NOT \shift~dataout\(0) & NOT \con~dataout\(1));

\Mux3~26_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & NOT \shift~dataout\(0));

\Mux3~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux3~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~32_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \con~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0));

\Mux3~32_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0));

\Mux3~32_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0));

\Mux3~32_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & \din~dataout\(5) & \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0));

\Mux3~32_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0));

\Mux3~32_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~32_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~32_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~32_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux3~32_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux3~32_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \din~dataout\(7) & NOT \shift~dataout\(0) & \shift~dataout\(1) & NOT \con~dataout\(1));

\Mux2~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & \din~dataout\(0) & \din~dataout\(2) & \din~dataout\(6) & \shift~dataout\(0) & NOT \con~dataout\(1));

\Mux2~20_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux2~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~23_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & \con~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2));

\Mux2~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \con~dataout\(0) & \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1) & \din~dataout\(6));

\Mux2~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & \con~dataout\(0) & \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & \con~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1));

\Mux2~23_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \con~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux2~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~29_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \con~dataout\(1) & NOT \con~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2));

\Mux2~29_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & \con~dataout\(0) & NOT \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2));

\Mux2~29_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & \con~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~29_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & \din~dataout\(4) & NOT \con~dataout\(0) & \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2));

\Mux2~29_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \con~dataout\(1) & NOT \con~dataout\(0) & \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2));

\Mux2~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~29_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux2~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux2~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~19_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \con~dataout\(0) & NOT \con~dataout\(1));

\Mux7~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & \din~dataout\(1) & NOT \con~dataout\(1));

\Mux7~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & NOT \con~dataout\(1));

\Mux7~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & NOT \con~dataout\(1));

\Mux7~19_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & \con~dataout\(0) & NOT \con~dataout\(1));

\Mux7~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux7~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~25_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \con~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1));

\Mux7~25_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \din~dataout\(4) & NOT \con~dataout\(1));

\Mux7~25_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \con~dataout\(0) & \din~dataout\(7) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(1));

\Mux7~25_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(0) & \din~dataout\(7) & \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1));

\Mux7~25_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \con~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1));

\Mux7~25_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~25_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~25_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~25_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux7~25_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux7~25_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~18_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(0) & NOT \con~dataout\(1));

\Mux0~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & \din~dataout\(6) & NOT \con~dataout\(1));

\Mux0~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(2) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & NOT \con~dataout\(1));

\Mux0~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(5) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & NOT \con~dataout\(1));

\Mux0~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1) & NOT \con~dataout\(0) & NOT \con~dataout\(1));

\Mux0~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~24_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & \con~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1));

\Mux0~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \shift~dataout\(1) & \din~dataout\(3) & NOT \con~dataout\(1));

\Mux0~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(0) & \din~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \shift~dataout\(1) & NOT \con~dataout\(1));

\Mux0~24_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \con~dataout\(0) & \din~dataout\(0) & \shift~dataout\(0) & \shift~dataout\(2) & \shift~dataout\(1));

\Mux0~24_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & \con~dataout\(0) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \shift~dataout\(1));

\Mux0~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux0~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux0~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~23_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \con~dataout\(1) & NOT \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & \con~dataout\(0));

\Mux6~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & \con~dataout\(0) & \din~dataout\(2));

\Mux6~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \con~dataout\(1) & \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2) & \con~dataout\(0));

\Mux6~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \con~dataout\(1) & \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \con~dataout\(0));

\Mux6~23_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \con~dataout\(1) & \shift~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & \con~dataout\(0));

\Mux6~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux6~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~29_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \con~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux6~29_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & NOT \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \din~dataout\(5));

\Mux6~29_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & \con~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux6~29_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \con~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux6~29_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \con~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2));

\Mux6~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~29_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux6~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux6~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~23_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & NOT \con~dataout\(1) & NOT \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux1~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & \shift~dataout\(1) & \shift~dataout\(0) & \shift~dataout\(2) & NOT \con~dataout\(0) & \din~dataout\(5));

\Mux1~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(1) & NOT \con~dataout\(1) & \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux1~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \con~dataout\(1) & \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux1~23_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \con~dataout\(1) & \shift~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux1~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux1~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~29_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & \con~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux1~29_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \con~dataout\(1) & NOT \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2) & \din~dataout\(2));

\Mux1~29_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & NOT \con~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux1~29_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \con~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(0) & NOT \shift~dataout\(2));

\Mux1~29_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & \con~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(0) & \shift~dataout\(2));

\Mux1~29_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~29_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~29_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~29_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux1~29_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux1~29_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~21_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1) & \con~dataout\(0));

\Mux5~21_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1) & NOT \con~dataout\(0) & \din~dataout\(1));

\Mux5~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(0) & NOT \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1) & NOT \con~dataout\(0));

\Mux5~21_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(3) & \shift~dataout\(0) & \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1) & \con~dataout\(0));

\Mux5~21_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2) & NOT \con~dataout\(1) & \con~dataout\(0));

\Mux5~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~21_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux5~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~27_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(7) & \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux5~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1) & \con~dataout\(0) & \din~dataout\(5));

\Mux5~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(6) & NOT \shift~dataout\(0) & NOT \shift~dataout\(1) & \shift~dataout\(2) & NOT \con~dataout\(1));

\Mux5~27_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2) & NOT \con~dataout\(0) & \din~dataout\(5));

\Mux5~27_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \din~dataout\(4) & NOT \shift~dataout\(0) & \shift~dataout\(1) & NOT \shift~dataout\(2) & NOT \con~dataout\(0));

\Mux5~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Mux5~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mux5~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\ALT_INV_shift~dataout\(1) <= NOT \shift~dataout\(1);
\ALT_INV_shift~dataout\(0) <= NOT \shift~dataout\(0);
\ALT_INV_shift~dataout\(2) <= NOT \shift~dataout\(2);
\ALT_INV_con~dataout\(1) <= NOT \con~dataout\(1);
\ALT_INV_con~dataout\(0) <= NOT \con~dataout\(0);

-- Location: PIN_8
\con[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_con(1),
	dataout => \con~dataout\(1));

-- Location: PIN_34
\din[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(1),
	dataout => \din~dataout\(1));

-- Location: PIN_1
\con[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_con(0),
	dataout => \con~dataout\(0));

-- Location: PIN_26
\shift[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_shift(1),
	dataout => \shift~dataout\(1));

-- Location: PIN_19
\shift[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_shift(2),
	dataout => \shift~dataout\(2));

-- Location: PIN_18
\shift[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_shift(0),
	dataout => \shift~dataout\(0));

-- Location: PIN_4
\din[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(5),
	dataout => \din~dataout\(5));

-- Location: PIN_40
\din[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(2),
	dataout => \din~dataout\(2));

-- Location: PIN_39
\din[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(6),
	dataout => \din~dataout\(6));

-- Location: PIN_27
\din[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(3),
	dataout => \din~dataout\(3));

-- Location: LC12
\Mux7~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux7~19_pterm0_bus\,
	pterm1 => \Mux7~19_pterm1_bus\,
	pterm2 => \Mux7~19_pterm2_bus\,
	pterm3 => \Mux7~19_pterm3_bus\,
	pterm4 => \Mux7~19_pterm4_bus\,
	pterm5 => \Mux7~19_pterm5_bus\,
	pxor => \Mux7~19_pxor_bus\,
	pclk => \Mux7~19_pclk_bus\,
	papre => \Mux7~19_papre_bus\,
	paclr => \Mux7~19_paclr_bus\,
	pena => \Mux7~19_pena_bus\,
	pexpout => \Mux7~19_pexpout\);

-- Location: PIN_41
\din[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(4),
	dataout => \din~dataout\(4));

-- Location: PIN_37
\din[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(7),
	dataout => \din~dataout\(7));

-- Location: LC13
\Mux7~25\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux7~19_pexpout\,
	pterm0 => \Mux7~25_pterm0_bus\,
	pterm1 => \Mux7~25_pterm1_bus\,
	pterm2 => \Mux7~25_pterm2_bus\,
	pterm3 => \Mux7~25_pterm3_bus\,
	pterm4 => \Mux7~25_pterm4_bus\,
	pterm5 => \Mux7~25_pterm5_bus\,
	pxor => \Mux7~25_pxor_bus\,
	pclk => \Mux7~25_pclk_bus\,
	papre => \Mux7~25_papre_bus\,
	paclr => \Mux7~25_paclr_bus\,
	pena => \Mux7~25_pena_bus\,
	pexpout => \Mux7~25_pexpout\);

-- Location: PIN_11
\din[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din(0),
	dataout => \din~dataout\(0));

-- Location: LC14
\Mux7~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux7~25_pexpout\,
	pterm0 => \Mux7~18_pterm0_bus\,
	pterm1 => \Mux7~18_pterm1_bus\,
	pterm2 => \Mux7~18_pterm2_bus\,
	pterm3 => \Mux7~18_pterm3_bus\,
	pterm4 => \Mux7~18_pterm4_bus\,
	pterm5 => \Mux7~18_pterm5_bus\,
	pxor => \Mux7~18_pxor_bus\,
	pclk => \Mux7~18_pclk_bus\,
	papre => \Mux7~18_papre_bus\,
	paclr => \Mux7~18_paclr_bus\,
	pena => \Mux7~18_pena_bus\,
	dataout => \Mux7~18_dataout\);

-- Location: LC38
\Mux6~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux6~23_pterm0_bus\,
	pterm1 => \Mux6~23_pterm1_bus\,
	pterm2 => \Mux6~23_pterm2_bus\,
	pterm3 => \Mux6~23_pterm3_bus\,
	pterm4 => \Mux6~23_pterm4_bus\,
	pterm5 => \Mux6~23_pterm5_bus\,
	pxor => \Mux6~23_pxor_bus\,
	pclk => \Mux6~23_pclk_bus\,
	papre => \Mux6~23_papre_bus\,
	paclr => \Mux6~23_paclr_bus\,
	pena => \Mux6~23_pena_bus\,
	pexpout => \Mux6~23_pexpout\);

-- Location: LC39
\Mux6~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux6~23_pexpout\,
	pterm0 => \Mux6~29_pterm0_bus\,
	pterm1 => \Mux6~29_pterm1_bus\,
	pterm2 => \Mux6~29_pterm2_bus\,
	pterm3 => \Mux6~29_pterm3_bus\,
	pterm4 => \Mux6~29_pterm4_bus\,
	pterm5 => \Mux6~29_pterm5_bus\,
	pxor => \Mux6~29_pxor_bus\,
	pclk => \Mux6~29_pclk_bus\,
	papre => \Mux6~29_papre_bus\,
	paclr => \Mux6~29_paclr_bus\,
	pena => \Mux6~29_pena_bus\,
	pexpout => \Mux6~29_pexpout\);

-- Location: LC40
\Mux6~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux6~29_pexpout\,
	pterm0 => \Mux6~22_pterm0_bus\,
	pterm1 => \Mux6~22_pterm1_bus\,
	pterm2 => \Mux6~22_pterm2_bus\,
	pterm3 => \Mux6~22_pterm3_bus\,
	pterm4 => \Mux6~22_pterm4_bus\,
	pterm5 => \Mux6~22_pterm5_bus\,
	pxor => \Mux6~22_pxor_bus\,
	pclk => \Mux6~22_pclk_bus\,
	papre => \Mux6~22_papre_bus\,
	paclr => \Mux6~22_paclr_bus\,
	pena => \Mux6~22_pena_bus\,
	dataout => \Mux6~22_dataout\);

-- Location: LC44
\Mux5~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux5~21_pterm0_bus\,
	pterm1 => \Mux5~21_pterm1_bus\,
	pterm2 => \Mux5~21_pterm2_bus\,
	pterm3 => \Mux5~21_pterm3_bus\,
	pterm4 => \Mux5~21_pterm4_bus\,
	pterm5 => \Mux5~21_pterm5_bus\,
	pxor => \Mux5~21_pxor_bus\,
	pclk => \Mux5~21_pclk_bus\,
	papre => \Mux5~21_papre_bus\,
	paclr => \Mux5~21_paclr_bus\,
	pena => \Mux5~21_pena_bus\,
	pexpout => \Mux5~21_pexpout\);

-- Location: LC45
\Mux5~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux5~21_pexpout\,
	pterm0 => \Mux5~27_pterm0_bus\,
	pterm1 => \Mux5~27_pterm1_bus\,
	pterm2 => \Mux5~27_pterm2_bus\,
	pterm3 => \Mux5~27_pterm3_bus\,
	pterm4 => \Mux5~27_pterm4_bus\,
	pterm5 => \Mux5~27_pterm5_bus\,
	pxor => \Mux5~27_pxor_bus\,
	pclk => \Mux5~27_pclk_bus\,
	papre => \Mux5~27_papre_bus\,
	paclr => \Mux5~27_paclr_bus\,
	pena => \Mux5~27_pena_bus\,
	pexpout => \Mux5~27_pexpout\);

-- Location: LC46
\Mux5~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux5~27_pexpout\,
	pterm0 => \Mux5~20_pterm0_bus\,
	pterm1 => \Mux5~20_pterm1_bus\,
	pterm2 => \Mux5~20_pterm2_bus\,
	pterm3 => \Mux5~20_pterm3_bus\,
	pterm4 => \Mux5~20_pterm4_bus\,
	pterm5 => \Mux5~20_pterm5_bus\,
	pxor => \Mux5~20_pxor_bus\,
	pclk => \Mux5~20_pclk_bus\,
	papre => \Mux5~20_papre_bus\,
	paclr => \Mux5~20_paclr_bus\,
	pena => \Mux5~20_pena_bus\,
	dataout => \Mux5~20_dataout\);

-- Location: LC1
\Mux4~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux4~19_pterm0_bus\,
	pterm1 => \Mux4~19_pterm1_bus\,
	pterm2 => \Mux4~19_pterm2_bus\,
	pterm3 => \Mux4~19_pterm3_bus\,
	pterm4 => \Mux4~19_pterm4_bus\,
	pterm5 => \Mux4~19_pterm5_bus\,
	pxor => \Mux4~19_pxor_bus\,
	pclk => \Mux4~19_pclk_bus\,
	papre => \Mux4~19_papre_bus\,
	paclr => \Mux4~19_paclr_bus\,
	pena => \Mux4~19_pena_bus\,
	pexpout => \Mux4~19_pexpout\);

-- Location: LC2
\Mux4~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux4~19_pexpout\,
	pterm0 => \Mux4~22_pterm0_bus\,
	pterm1 => \Mux4~22_pterm1_bus\,
	pterm2 => \Mux4~22_pterm2_bus\,
	pterm3 => \Mux4~22_pterm3_bus\,
	pterm4 => \Mux4~22_pterm4_bus\,
	pterm5 => \Mux4~22_pterm5_bus\,
	pxor => \Mux4~22_pxor_bus\,
	pclk => \Mux4~22_pclk_bus\,
	papre => \Mux4~22_papre_bus\,
	paclr => \Mux4~22_paclr_bus\,
	pena => \Mux4~22_pena_bus\,
	pexpout => \Mux4~22_pexpout\);

-- Location: LC3
\Mux4~28\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux4~22_pexpout\,
	pterm0 => \Mux4~28_pterm0_bus\,
	pterm1 => \Mux4~28_pterm1_bus\,
	pterm2 => \Mux4~28_pterm2_bus\,
	pterm3 => \Mux4~28_pterm3_bus\,
	pterm4 => \Mux4~28_pterm4_bus\,
	pterm5 => \Mux4~28_pterm5_bus\,
	pxor => \Mux4~28_pxor_bus\,
	pclk => \Mux4~28_pclk_bus\,
	papre => \Mux4~28_papre_bus\,
	paclr => \Mux4~28_paclr_bus\,
	pena => \Mux4~28_pena_bus\,
	pexpout => \Mux4~28_pexpout\);

-- Location: LC4
\Mux4~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux4~28_pexpout\,
	pterm0 => \Mux4~18_pterm0_bus\,
	pterm1 => \Mux4~18_pterm1_bus\,
	pterm2 => \Mux4~18_pterm2_bus\,
	pterm3 => \Mux4~18_pterm3_bus\,
	pterm4 => \Mux4~18_pterm4_bus\,
	pterm5 => \Mux4~18_pterm5_bus\,
	pxor => \Mux4~18_pxor_bus\,
	pclk => \Mux4~18_pclk_bus\,
	papre => \Mux4~18_papre_bus\,
	paclr => \Mux4~18_paclr_bus\,
	pena => \Mux4~18_pena_bus\,
	dataout => \Mux4~18_dataout\);

-- Location: LC22
\Mux3~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux3~23_pterm0_bus\,
	pterm1 => \Mux3~23_pterm1_bus\,
	pterm2 => \Mux3~23_pterm2_bus\,
	pterm3 => \Mux3~23_pterm3_bus\,
	pterm4 => \Mux3~23_pterm4_bus\,
	pterm5 => \Mux3~23_pterm5_bus\,
	pxor => \Mux3~23_pxor_bus\,
	pclk => \Mux3~23_pclk_bus\,
	papre => \Mux3~23_papre_bus\,
	paclr => \Mux3~23_paclr_bus\,
	pena => \Mux3~23_pena_bus\,
	pexpout => \Mux3~23_pexpout\);

-- Location: LC23
\Mux3~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux3~23_pexpout\,
	pterm0 => \Mux3~26_pterm0_bus\,
	pterm1 => \Mux3~26_pterm1_bus\,
	pterm2 => \Mux3~26_pterm2_bus\,
	pterm3 => \Mux3~26_pterm3_bus\,
	pterm4 => \Mux3~26_pterm4_bus\,
	pterm5 => \Mux3~26_pterm5_bus\,
	pxor => \Mux3~26_pxor_bus\,
	pclk => \Mux3~26_pclk_bus\,
	papre => \Mux3~26_papre_bus\,
	paclr => \Mux3~26_paclr_bus\,
	pena => \Mux3~26_pena_bus\,
	pexpout => \Mux3~26_pexpout\);

-- Location: LC24
\Mux3~32\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux3~26_pexpout\,
	pterm0 => \Mux3~32_pterm0_bus\,
	pterm1 => \Mux3~32_pterm1_bus\,
	pterm2 => \Mux3~32_pterm2_bus\,
	pterm3 => \Mux3~32_pterm3_bus\,
	pterm4 => \Mux3~32_pterm4_bus\,
	pterm5 => \Mux3~32_pterm5_bus\,
	pxor => \Mux3~32_pxor_bus\,
	pclk => \Mux3~32_pclk_bus\,
	papre => \Mux3~32_papre_bus\,
	paclr => \Mux3~32_paclr_bus\,
	pena => \Mux3~32_pena_bus\,
	pexpout => \Mux3~32_pexpout\);

-- Location: LC25
\Mux3~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux3~32_pexpout\,
	pterm0 => \Mux3~22_pterm0_bus\,
	pterm1 => \Mux3~22_pterm1_bus\,
	pterm2 => \Mux3~22_pterm2_bus\,
	pterm3 => \Mux3~22_pterm3_bus\,
	pterm4 => \Mux3~22_pterm4_bus\,
	pterm5 => \Mux3~22_pterm5_bus\,
	pxor => \Mux3~22_pxor_bus\,
	pclk => \Mux3~22_pclk_bus\,
	papre => \Mux3~22_papre_bus\,
	paclr => \Mux3~22_paclr_bus\,
	pena => \Mux3~22_pena_bus\,
	dataout => \Mux3~22_dataout\);

-- Location: LC8
\Mux2~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux2~20_pterm0_bus\,
	pterm1 => \Mux2~20_pterm1_bus\,
	pterm2 => \Mux2~20_pterm2_bus\,
	pterm3 => \Mux2~20_pterm3_bus\,
	pterm4 => \Mux2~20_pterm4_bus\,
	pterm5 => \Mux2~20_pterm5_bus\,
	pxor => \Mux2~20_pxor_bus\,
	pclk => \Mux2~20_pclk_bus\,
	papre => \Mux2~20_papre_bus\,
	paclr => \Mux2~20_paclr_bus\,
	pena => \Mux2~20_pena_bus\,
	pexpout => \Mux2~20_pexpout\);

-- Location: LC9
\Mux2~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux2~20_pexpout\,
	pterm0 => \Mux2~23_pterm0_bus\,
	pterm1 => \Mux2~23_pterm1_bus\,
	pterm2 => \Mux2~23_pterm2_bus\,
	pterm3 => \Mux2~23_pterm3_bus\,
	pterm4 => \Mux2~23_pterm4_bus\,
	pterm5 => \Mux2~23_pterm5_bus\,
	pxor => \Mux2~23_pxor_bus\,
	pclk => \Mux2~23_pclk_bus\,
	papre => \Mux2~23_papre_bus\,
	paclr => \Mux2~23_paclr_bus\,
	pena => \Mux2~23_pena_bus\,
	pexpout => \Mux2~23_pexpout\);

-- Location: LC10
\Mux2~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux2~23_pexpout\,
	pterm0 => \Mux2~29_pterm0_bus\,
	pterm1 => \Mux2~29_pterm1_bus\,
	pterm2 => \Mux2~29_pterm2_bus\,
	pterm3 => \Mux2~29_pterm3_bus\,
	pterm4 => \Mux2~29_pterm4_bus\,
	pterm5 => \Mux2~29_pterm5_bus\,
	pxor => \Mux2~29_pxor_bus\,
	pclk => \Mux2~29_pclk_bus\,
	papre => \Mux2~29_papre_bus\,
	paclr => \Mux2~29_paclr_bus\,
	pena => \Mux2~29_pena_bus\,
	pexpout => \Mux2~29_pexpout\);

-- Location: LC11
\Mux2~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux2~29_pexpout\,
	pterm0 => \Mux2~19_pterm0_bus\,
	pterm1 => \Mux2~19_pterm1_bus\,
	pterm2 => \Mux2~19_pterm2_bus\,
	pterm3 => \Mux2~19_pterm3_bus\,
	pterm4 => \Mux2~19_pterm4_bus\,
	pterm5 => \Mux2~19_pterm5_bus\,
	pxor => \Mux2~19_pxor_bus\,
	pclk => \Mux2~19_pclk_bus\,
	papre => \Mux2~19_papre_bus\,
	paclr => \Mux2~19_paclr_bus\,
	pena => \Mux2~19_pena_bus\,
	dataout => \Mux2~19_dataout\);

-- Location: LC17
\Mux1~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux1~23_pterm0_bus\,
	pterm1 => \Mux1~23_pterm1_bus\,
	pterm2 => \Mux1~23_pterm2_bus\,
	pterm3 => \Mux1~23_pterm3_bus\,
	pterm4 => \Mux1~23_pterm4_bus\,
	pterm5 => \Mux1~23_pterm5_bus\,
	pxor => \Mux1~23_pxor_bus\,
	pclk => \Mux1~23_pclk_bus\,
	papre => \Mux1~23_papre_bus\,
	paclr => \Mux1~23_paclr_bus\,
	pena => \Mux1~23_pena_bus\,
	pexpout => \Mux1~23_pexpout\);

-- Location: LC18
\Mux1~29\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux1~23_pexpout\,
	pterm0 => \Mux1~29_pterm0_bus\,
	pterm1 => \Mux1~29_pterm1_bus\,
	pterm2 => \Mux1~29_pterm2_bus\,
	pterm3 => \Mux1~29_pterm3_bus\,
	pterm4 => \Mux1~29_pterm4_bus\,
	pterm5 => \Mux1~29_pterm5_bus\,
	pxor => \Mux1~29_pxor_bus\,
	pclk => \Mux1~29_pclk_bus\,
	papre => \Mux1~29_papre_bus\,
	paclr => \Mux1~29_paclr_bus\,
	pena => \Mux1~29_pena_bus\,
	pexpout => \Mux1~29_pexpout\);

-- Location: LC19
\Mux1~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux1~29_pexpout\,
	pterm0 => \Mux1~22_pterm0_bus\,
	pterm1 => \Mux1~22_pterm1_bus\,
	pterm2 => \Mux1~22_pterm2_bus\,
	pterm3 => \Mux1~22_pterm3_bus\,
	pterm4 => \Mux1~22_pterm4_bus\,
	pterm5 => \Mux1~22_pterm5_bus\,
	pxor => \Mux1~22_pxor_bus\,
	pclk => \Mux1~22_pclk_bus\,
	papre => \Mux1~22_papre_bus\,
	paclr => \Mux1~22_paclr_bus\,
	pena => \Mux1~22_pena_bus\,
	dataout => \Mux1~22_dataout\);

-- Location: LC33
\Mux0~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Mux0~18_pterm0_bus\,
	pterm1 => \Mux0~18_pterm1_bus\,
	pterm2 => \Mux0~18_pterm2_bus\,
	pterm3 => \Mux0~18_pterm3_bus\,
	pterm4 => \Mux0~18_pterm4_bus\,
	pterm5 => \Mux0~18_pterm5_bus\,
	pxor => \Mux0~18_pxor_bus\,
	pclk => \Mux0~18_pclk_bus\,
	papre => \Mux0~18_papre_bus\,
	paclr => \Mux0~18_paclr_bus\,
	pena => \Mux0~18_pena_bus\,
	pexpout => \Mux0~18_pexpout\);

-- Location: LC34
\Mux0~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux0~18_pexpout\,
	pterm0 => \Mux0~24_pterm0_bus\,
	pterm1 => \Mux0~24_pterm1_bus\,
	pterm2 => \Mux0~24_pterm2_bus\,
	pterm3 => \Mux0~24_pterm3_bus\,
	pterm4 => \Mux0~24_pterm4_bus\,
	pterm5 => \Mux0~24_pterm5_bus\,
	pxor => \Mux0~24_pxor_bus\,
	pclk => \Mux0~24_pclk_bus\,
	papre => \Mux0~24_papre_bus\,
	paclr => \Mux0~24_paclr_bus\,
	pena => \Mux0~24_pena_bus\,
	pexpout => \Mux0~24_pexpout\);

-- Location: LC35
\Mux0~17\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Mux0~24_pexpout\,
	pterm0 => \Mux0~17_pterm0_bus\,
	pterm1 => \Mux0~17_pterm1_bus\,
	pterm2 => \Mux0~17_pterm2_bus\,
	pterm3 => \Mux0~17_pterm3_bus\,
	pterm4 => \Mux0~17_pterm4_bus\,
	pterm5 => \Mux0~17_pterm5_bus\,
	pxor => \Mux0~17_pxor_bus\,
	pclk => \Mux0~17_pclk_bus\,
	papre => \Mux0~17_papre_bus\,
	paclr => \Mux0~17_paclr_bus\,
	pena => \Mux0~17_pena_bus\,
	dataout => \Mux0~17_dataout\);

-- Location: PIN_5
\dout[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~18_dataout\,
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_28
\dout[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~22_dataout\,
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_31
\dout[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~20_dataout\,
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_9
\dout[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~18_dataout\,
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_16
\dout[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~22_dataout\,
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_6
\dout[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~19_dataout\,
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_20
\dout[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~22_dataout\,
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_25
\dout[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~17_dataout\,
	oe => VCC,
	padio => ww_dout(7));
END structure;


