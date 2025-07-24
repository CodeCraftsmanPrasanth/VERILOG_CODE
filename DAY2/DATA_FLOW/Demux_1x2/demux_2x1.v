`timescale 1ns / 1ps
module demux_2x1(input a,s, output o1,o0);
    assign o0=s?1'b0:a;
    assign o1=s?a:1'b0;
endmodule
