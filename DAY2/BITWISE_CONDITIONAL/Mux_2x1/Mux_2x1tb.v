`timescale 1ns / 1ps
module Mux_2x1tb;
    reg a,b,s;
    wire c,d;
    Mux_2x1 uut(.a(a),.b(b),.c(c),.d(d),.s(s));
    initial begin
        a=1;b=1;s=0;#10
        a=0;b=0;s=1;#10
        $finish;
    end
        
endmodule
