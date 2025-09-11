`timescale 1ns / 1ps
module seq_detector_10110( input x, rst,clk, output y);
    parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
    reg [2:0] ps, ns;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ps<=s0;
            end
        else ps<=ns;
    end
    always @(*) begin
        case (ps)
            s0: ns=(x)?s1:s0;
            s1: ns=(x)?s1:s2;
            s2: ns=(x)?s3:s0;
            s3: ns=(x)?s4:s2;
            s4: ns=(x)?s1:s5;
            s5: ns=(x)?s3:s0;
        endcase
    end
    assign y=(ps==s5);
endmodule
