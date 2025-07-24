`timescale 1ns / 1ps
module Demux_4x1(input a,s0,s1, output o0,o1,o2,o3);
    assign o0=(~s1&~s0)? a:1'b0;
    assign o1=(~s1&s0)? a:1'b0;
    assign o2=(s1&~s0)? a:1'b0;
    assign o3=(s1&s0)? a:1'b0;    
endmodule
