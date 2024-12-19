`timescale 1ns / 1ps

module mealy_1101_detector (
    input x, clk, rst,
    output reg out,
    output reg [3:0] seq    
);
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
    reg [1:0] current_state, next_state;
    
    // 상태 전환
    always@ (posedge clk) begin
        if (!rst) begin // active-low 
            current_state <= S0;
            out <= 1'b0;
            seq <= 4'b0000;
        end
        else begin
            out = 1'b0;
            case (current_state)
                S0: next_state = x ? S1 : S0; // 1이 들어오면 다음상태
                S1: next_state = x ? S2 : S0; // 1이 들어오면 다음상태
                S2: next_state = x ? S1 : S3; // 0이 들어오면 다음상태
                S3: begin // 입력 x = 출력 out
                    next_state = x ? S1 : S0; 
                    out = x; 
                end
                default: next_state = S0;
            endcase
            // sequence 출력 shift
            seq[3] <= x;
            seq[2] <= seq[3];
            seq[1] <= seq[2];
            seq[0] <= seq[1];
            current_state <= next_state;
        end
    end
    
endmodule