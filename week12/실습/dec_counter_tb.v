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
        if (out == 4) out <= 11;
        else if (out == 15) begin
            out <= 0;
            z <= 1'b1;
        end 
        else out <= out + 1;
    end
end

endmodule