// megafunction wizard: %PARALLEL_ADD%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: parallel_add 

// ============================================================
// File Name: PA_S.v
// Megafunction Name(s):
// 			parallel_add
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.1.2 Build 203 01/18/2017 SJ Standard Edition
// ************************************************************

//Copyright (C) 2017  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Intel and sold by Intel or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.

module PA_S (
	data0x,
	data1x,
	data2x,
	result);

	input	[17:0]  data0x;
	input	[17:0]  data1x;
	input	[17:0]  data2x;
	output	[18:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: MSW_SUBTRACT STRING "NO"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "0"
// Retrieval info: CONSTANT: REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: RESULT_ALIGNMENT STRING "LSB"
// Retrieval info: CONSTANT: SHIFT NUMERIC "0"
// Retrieval info: CONSTANT: SIZE NUMERIC "3"
// Retrieval info: CONSTANT: WIDTH NUMERIC "18"
// Retrieval info: CONSTANT: WIDTHR NUMERIC "19"
// Retrieval info: USED_PORT: data0x 0 0 18 0 INPUT NODEFVAL "data0x[17..0]"
// Retrieval info: USED_PORT: data1x 0 0 18 0 INPUT NODEFVAL "data1x[17..0]"
// Retrieval info: USED_PORT: data2x 0 0 18 0 INPUT NODEFVAL "data2x[17..0]"
// Retrieval info: USED_PORT: result 0 0 19 0 OUTPUT NODEFVAL "result[18..0]"
// Retrieval info: CONNECT: @data 0 0 18 0 data0x 0 0 18 0
// Retrieval info: CONNECT: @data 0 0 18 18 data1x 0 0 18 0
// Retrieval info: CONNECT: @data 0 0 18 36 data2x 0 0 18 0
// Retrieval info: CONNECT: result 0 0 19 0 @result 0 0 19 0
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_S.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_S.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_S.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_S.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_S_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_S_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf
