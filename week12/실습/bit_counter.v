`timescale 1ns / 1ps

module bit_counter (
    input x, rst, clk,
    output reg [1:0] out,
    output reg z
);

always @(posedge clk) begin
    if (!rst) begin
        out <= 2'b00;
        z <= 1'b0;
    end
    else if (x) begin
        out <= out + 1;
        if(out == 2'b11) z <= 1'b1;
    end
end

endmodule