// megafunction wizard: %Shift register (RAM-based)%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altshift_taps 

// ============================================================
// File Name: LineBuffer_3.v
// Megafunction Name(s):
// 			altshift_taps
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 7.2 Build 207 03/18/2008 SP 3 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2007 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.
`include "VGA_Param.h" 

// synopsys translate_off
`timescale 1 ns / 10 ps
// synopsys translate_on
module LineBuffer_S (
	clken,
	clock,
	shiftin,
	shiftout,
	taps0x,
	taps1x,
	taps2x);

	input	  clken;
	input	  clock;
	input	[7:0]  shiftin;
	output	[7:0]  shiftout;
	output	[7:0]  taps0x;
	output	[7:0]  taps1x;
	output	[7:0]  taps2x;

	wire [23:0] sub_wire0;
	wire [7:0] sub_wire5;
	wire [15:8] sub_wire3 = sub_wire0[15:8];
	wire [7:0] sub_wire4 = sub_wire0[7:0];
	wire [23:16] sub_wire2 = sub_wire0[23:16];
	wire [23:16] sub_wire1 = sub_wire2[23:16];
	wire [7:0] taps2x = sub_wire1[23:16];
	wire [7:0] taps1x = sub_wire3[15:8];
	wire [7:0] taps0x = sub_wire4[7:0];
	wire [7:0] shiftout = sub_wire5[7:0];
//	
//`ifdef VGA_640x480p60
//parameter LINE_LENGTH = 640;
//`else
//parameter LINE_LENGTH = 800;
//`endif

//shift_register_ram_based.pdf  Page 4
	altshift_taps	altshift_taps_component (
				.clken (clken),
				.clock (clock),
				.shiftin (shiftin),
				.taps (sub_wire0),
				.shiftout (sub_wire5));
	defparam
		altshift_taps_component.lpm_type = "altshift_taps",
		altshift_taps_component.number_of_taps = 3,
//		altshift_taps_component.tap_distance = LINE_LENGTH,
`ifdef VGA_640x480p60
	altshift_taps_component.tap_distance = 640,
`else
	altshift_taps_component.tap_distance = 800,
`endif

		altshift_taps_component.width = 8;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CLKEN NUMERIC "1"
// Retrieval info: PRIVATE: GROUP_TAPS NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: NUMBER_OF_TAPS NUMERIC "3"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: TAP_DISTANCE NUMERIC "800"
// Retrieval info: PRIVATE: WIDTH NUMERIC "8"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altshift_taps"
// Retrieval info: CONSTANT: NUMBER_OF_TAPS NUMERIC "3"
// Retrieval info: CONSTANT: TAP_DISTANCE NUMERIC "800"
// Retrieval info: CONSTANT: WIDTH NUMERIC "8"
// Retrieval info: USED_PORT: clken 0 0 0 0 INPUT VCC clken
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: shiftin 0 0 8 0 INPUT NODEFVAL shiftin[7..0]
// Retrieval info: USED_PORT: shiftout 0 0 8 0 OUTPUT NODEFVAL shiftout[7..0]
// Retrieval info: USED_PORT: taps0x 0 0 8 0 OUTPUT NODEFVAL taps0x[7..0]
// Retrieval info: USED_PORT: taps1x 0 0 8 0 OUTPUT NODEFVAL taps1x[7..0]
// Retrieval info: USED_PORT: taps2x 0 0 8 0 OUTPUT NODEFVAL taps2x[7..0]
// Retrieval info: CONNECT: @shiftin 0 0 8 0 shiftin 0 0 8 0
// Retrieval info: CONNECT: shiftout 0 0 8 0 @shiftout 0 0 8 0
// Retrieval info: CONNECT: taps0x 0 0 8 0 @taps 0 0 8 0
// Retrieval info: CONNECT: taps1x 0 0 8 0 @taps 0 0 8 8
// Retrieval info: CONNECT: taps2x 0 0 8 0 @taps 0 0 8 16
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL LineBuffer_3.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL LineBuffer_3.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL LineBuffer_3.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL LineBuffer_3.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL LineBuffer_3_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL LineBuffer_3_bb.v FALSE
// Retrieval info: LIB_FILE: altera_mf
