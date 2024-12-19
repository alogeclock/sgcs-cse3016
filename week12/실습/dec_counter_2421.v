`timescale 1ns / 1ps

module dec_counter_2421 (
    input x, rst, clk,
    output reg [3:0] out,
    output reg z
);

always @(posedge clk) begin
    if (!rst) begin
        out <= 4'b0000;
        z <= 1'b0;
    end
    else if (x) begin
        if (out == 4'b1111) z = 1'b1;
        out = out + 1;
        if (out == 4'b0101) out = 4'b1011;
    end
end

endmodule