`timescale 1us/1ps
module Lab01_tb (
    
);
    parameter clk_period = 20;
    localparam half_clk_period = clk_period / 2;
    reg clk, reset;
    wire [6:0] u, t;
    initial begin
        clk = 0;
        reset = 0;
        #10 reset = 1;
        forever #half_clk_period
            clk = ~clk;
    end
    Lab01 dut (
        .reset(reset), .clk(clk), 
        .u0(u[0]),
        .u1(u[1]),
        .u2(u[2]),
        .u3(u[3]),
        .u4(u[4]),
        .u5(u[5]),
        .u6(u[6]),
        .t0(t[0]),
        .t1(t[1]),
        .t2(t[2]),
        .t3(t[3]),
        .t4(t[4]),
        .t5(t[5]),
        .t6(t[6])
    );
endmodule