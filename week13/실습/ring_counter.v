`timescale 1ns / 1ps

module ring_counter(
    input rst, clk,
    output reg [3:0] out
);

    always@ (posedge clk) begin
        if (!rst) out <= 4'b1000;
        else begin
            out[3] <= out[0];
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];
        end
    end

endmodule
