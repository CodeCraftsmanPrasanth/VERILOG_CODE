`timescale 1ns / 1ps
module Demux_1x4using_1x2tb;
    reg a,s0,s1;
    wire i0,i1,i2,i3;
    Demux_1x4using_1x2 uut(.a(a),.s0(s0),.s1(s1),.i0(i0),.i1(i1),.i2(i2),.i3(i3));
    initial begin
        a=1;s0=0;s1=0;#10
        a=1;s0=1;s1=0;#10
        a=1;s0=0;s1=1;#10
        a=1;s0=1;s1=1;#10
        $finish;
    end
endmodule