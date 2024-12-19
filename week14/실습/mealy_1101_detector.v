`timescale 1ns / 1ps

module mealy_1101_detector (
    input x, clk, rst,
    output reg out,
    output reg [3:0] seq    
);
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
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
                S2: next_state = x ? S1 : S3; // 0�� ������ ��������
                S3: begin // �Է� x = ��� out
                    next_state = x ? S1 : S0; 
                    out = x; 
                end
                default: next_state = S0;
            endcase
            // sequence ��� shift
            seq[3] <= x;
            seq[2] <= seq[3];
            seq[1] <= seq[2];
            seq[0] <= seq[1];
            current_state <= next_state;
        end
    end
    
endmodule