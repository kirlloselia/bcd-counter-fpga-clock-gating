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
// CREATED		"Tue Jul 15 19:27:20 2025"

module bcd_counter(
	clk,
	reset,
	Q3,
	Q2,
	Q1,
	Q0
);


input wire	clk;
input wire	reset;
output wire	Q3;
output wire	Q2;
output wire	Q1;
output wire	Q0;

reg	Q1_W;
wire	Q2b_W;
reg	Q3_W;
wire	Q3b_W;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
reg	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;

assign	Q3 = SYNTHESIZED_WIRE_17;
assign	Q0 = SYNTHESIZED_WIRE_19;




always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	SYNTHESIZED_WIRE_19 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_16;
	end
end


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	Q1_W <= 0;
	end
else
	begin
	Q1_W <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	Q3_W <= 0;
	end
else
	begin
	Q3_W <= SYNTHESIZED_WIRE_2;
	end
end


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	SYNTHESIZED_WIRE_17 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_3;
	end
end

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_18 & Q3_W;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_16 & Q3_W;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_16 & Q1_W;

assign	SYNTHESIZED_WIRE_11 = Q3b_W & SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19;

assign	Q3b_W =  ~SYNTHESIZED_WIRE_17;

assign	Q2b_W =  ~Q3_W;

assign	SYNTHESIZED_WIRE_18 =  ~Q1_W;

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_14 = Q3_W & Q1_W & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_19 & Q1_W & Q2b_W;

assign	Q2 = Q3_W;
assign	Q1 = Q1_W;

endmodule
