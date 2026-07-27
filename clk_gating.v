`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 10:42:07 AM
// Design Name: 
// Module Name: clk_gating
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_gating(
    input clk, en, reset,
    output clk_g
);
    wire en_l;
    d_latch latch(.clk(~clk), .D(en), .Q(en_l), .reset(reset));
    assign clk_g = en_l & clk;
endmodule
