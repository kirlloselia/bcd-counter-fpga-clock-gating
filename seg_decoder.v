module seg_decoder (
    input [3:0] num,
    output reg [6:0] num_dec
);
    always @(*) begin
        case (num)
            4'd0:       num_dec = 7'b000_0001;
            4'd1:       num_dec = 7'b100_1111;
            4'd2:       num_dec = 7'b001_0010;
            4'd3:       num_dec = 7'b000_0110;
            4'd4:       num_dec = 7'b100_1100;
            4'd5:       num_dec = 7'b010_0100;
            4'd6:       num_dec = 7'b010_0000;
            4'd7:       num_dec = 7'b000_1111;
            4'd8:       num_dec = 7'b000_0000;
            4'd9:       num_dec = 7'b000_1100;
            default:    num_dec = 7'b111_1111;
        endcase
    end
endmodule