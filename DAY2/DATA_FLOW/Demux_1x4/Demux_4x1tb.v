`timescale 1ns / 1ps
module Demux_4x1tb;
    reg  a;
    reg  s0, s1;
    wire o0, o1, o2, o3;
    Demux_4x1 uut (
        .a(a),
        .s0(s0),
        .s1(s1),
        .o0(o0),
        .o1(o1),
        .o2(o2),
        .o3(o3)
    );
    initial begin
        $monitor("Time=%0t | s1 s0 = %b%b | a = %b | Outputs: o3=%b o2=%b o1=%b o0=%b",
                 $time, s1, s0, a, o3, o2, o1, o0);
        s1 = 0; s0 = 0; a = 1; #10;a = 0; #10;
        s1 = 0; s0 = 1; a = 1; #10;a = 0; #10;
        s1 = 1; s0 = 0; a = 1; #10;a = 0; #10;
        s1 = 1; s0 = 1; a = 1; #10;a = 0; #10;
        $finish;
    end
endmodule
