`timescale 1ns / 1ps

module updown_counter(
    input up, down, rst, clk,
    output reg [3:0] out,
    output reg [6:0] seg,
    output dp, digit
);
    assign dp = 1; // ���� ���� �� �׻� 1
    assign digit = 1; // ù ��° ���忡 ���
    
    always@ (posedge clk) begin
        if (!rst) out <= 4'b0000;
        else if (up) begin
            out <= out + 1;
            seg[6:0] <= 7'b0111110; // U
        end       
        else if (down) begin
            out <= out - 1;
            seg[6:0] <= 7'b0111101; // D
        end
    end
endmodule
