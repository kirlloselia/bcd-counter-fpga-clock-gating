// Copyright (C) 2024  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"
// CREATED		"Tue Jul 15 18:44:35 2025"

module Lab01(
	clk,
	reset,
	u0,
	u1,
	u2,
	u3,
	u4,
	u5,
	u6,
	t0,
	t1,
	t2,
	t3,
	t4,
	t5,
	t6
);


input wire	clk;
input wire	reset;
output wire	u0;
output wire	u1;
output wire	u2;
output wire	u3;
output wire	u4;
output wire	u5;
output wire	u6;
output wire	t0;
output wire	t1;
output wire	t2;
output wire	t3;
output wire	t4;
output wire	t5;
output wire	t6;

wire	[6:0] num_dec_t;
wire	[6:0] num_dec_u;
wire	[3:0] numt;
wire	[3:0] numu;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





seg_decoder	b2v_dec0(
	.num(numu),
	.num_dec(num_dec_u));


seg_decoder	b2v_dec1(
	.num(numt),
	.num_dec(num_dec_t));


clk_gating	b2v_inst(
	.clk(SYNTHESIZED_WIRE_4),
	.en(SYNTHESIZED_WIRE_1),
	.reset(reset),
	.clk_g(SYNTHESIZED_WIRE_2));

assign	SYNTHESIZED_WIRE_1 = numu[0] & numu[3];


clk_divider	b2v_inst32(
	.clk(clk),
	.reset(reset),
	.clk_div(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst32.div = 50000;


bcd_counter	b2v_tenth(
	.clk(SYNTHESIZED_WIRE_2),
	.reset(reset),
	.Q0(numt[0]),
	.Q1(numt[1]),
	.Q2(numt[2]),
	.Q3(numt[3]));


bcd_counter	b2v_unith(
	.clk(SYNTHESIZED_WIRE_4),
	.reset(reset),
	.Q0(numu[0]),
	.Q1(numu[1]),
	.Q2(numu[2]),
	.Q3(numu[3]));

assign	u0 = num_dec_u[0];
assign	u1 = num_dec_u[1];
assign	u2 = num_dec_u[2];
assign	u3 = num_dec_u[3];
assign	u4 = num_dec_u[4];
assign	u5 = num_dec_u[5];
assign	u6 = num_dec_u[6];
assign	t0 = num_dec_t[0];
assign	t1 = num_dec_t[1];
assign	t2 = num_dec_t[2];
assign	t3 = num_dec_t[3];
assign	t4 = num_dec_t[4];
assign	t5 = num_dec_t[5];
assign	t6 = num_dec_t[6];

endmodule
