// Code your design here
`timescale 1ns / 1ps
module consecutive_number( input x,clk,rst, output y);
    parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6;
    reg [2:0] ps, ns;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ps<=s0;
            end
        else ps<=ns;
    end
    always @(*) begin
        case (ps)
            s0: ns=(x)?s1:s4;
            s1: ns=(x)?s2:s4;
            s2: ns=(x)?s3:s4;
            s3: ns=(x)?s4:s4;
            s4: ns=(x)?s1:s5;
            s5: ns=(x)?s1:s6;
            s6: ns=(x)?s1:s6;
        endcase
    end
    assign y=(ps==s6)|(ps==s3);
endmodule
