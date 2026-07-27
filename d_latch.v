`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 10:17:26 AM
// Design Name: 
// Module Name: LATCH
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

//LEVEL TRIGGERED, WHEN CLK == 1, OUTPUT IS TRANSPARENT TO INPUT,
//OUTPUT IS OPAQUE TO INPUT (the last value of input is hold) 
module d_latch (
    input D, clk, reset,
    output reg Q
    );
    always @(clk, D, reset) begin
        if(~reset) begin
            Q<=1'b0;
        end
        else begin
            if (clk) begin
                Q<=D;
            end
            else begin
                Q<=Q;
            end
        end
    end
endmodule


