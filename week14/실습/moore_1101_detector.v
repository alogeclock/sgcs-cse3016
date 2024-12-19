`timescale 1ns / 1ps

module moore_1101_detector (
    input x, clk, rst,
    output reg out,
    output reg [3:0] seq
);
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
    reg [1:0] current_state, next_state;
    
    // ���� ��ȯ
    always@ (posedge clk) begin
        if (!rst) begin // active-low 
            current_state <= S0;
            out <= 1'b0;
            seq <= 4'b0000;
        end
        else begin
            out = 1'b0;
            case (current_state)
                S0: next_state = x ? S1 : S0; // 1�� ������ ��������
                S1: next_state = x ? S2 : S0; // 1�� ������ ��������
                S2: next_state = x ? S2 : S3; // 0�� ������ ��������
                S3: next_state = x ? S4 : S0;
                S4: begin
                    next_state = x ? S2 : S0;
                    out = 1'b1;               // current_state�� S4�� ���� ��� 1
                end
                default: next_state = S0;
            endcase
            // sequence ��� 
            seq[3] <= x;
            seq[2] <= seq[3];
            seq[1] <= seq[2];
            seq[0] <= seq[1];
            current_state <= next_state; // ���� ��ȯ
        end
    end
        
endmodule