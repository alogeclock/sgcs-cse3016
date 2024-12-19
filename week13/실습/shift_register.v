`timescale 1ns / 1ps

module shift_register(
    input x, rst, clk,
    output reg [3:0] out
);

    always@ (posedge clk) begin
        if (!rst) out <= 4'b0000;
        else if (x) begin
            out[3] <= 1'b1;
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];        
        end
        else begin
            out[3] <= 1'b0;
            out[2] <= out[3];
            out[1] <= out[2];
            out[0] <= out[1];
        end
    end

endmodule
