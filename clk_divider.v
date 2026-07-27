module clk_divider #(parameter div = 50000 )(
    input clk, reset,
    output reg clk_div
);

    localparam countConst = div/2;
    localparam bitCount = $clog2(countConst);

    reg [bitCount-1:0] count;

    always @(posedge clk, negedge reset) begin
        if (!reset) begin
            count <= 25'b0;
        end
        else if (count == countConst-1) begin       // why countConst-1?? Because this is sync clear, which clears at the next clk edge which results in countConst cycles.
            count <= 25'b0;
        end
        else begin
            count <= count + 1'b1;
        end
    end

    always @(posedge clk, negedge reset) begin
        if (!reset) begin
            clk_div <= 1'b0;
        end
        else if (count == countConst-1) begin      // Continue: thus the output clk toggles every countConst cycles! 
            clk_div <= ~clk_div;
        end
        else begin
            clk_div <= clk_div;
        end
    end
endmodule