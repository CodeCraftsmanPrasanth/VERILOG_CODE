`timescale 1ns / 1ps
module Decoder_2x4tb;
    reg a,b,e;
    wire c,d,f,g,h,i,j,k;
    Decoder_2x4 uut(.a(a),.b(b),.e(e),.c(c),.d(d),.f(f),.g(g),.h(h),.i(i),.j(j),.k(k));
    initial begin
        a=1;b=1;e=0;#10
        a=0;b=0;e=1;#10
        a=0;b=1;e=1;#10
        a=1;b=0;e=1;#10
        a=1;b=1;e=1;#10
        $finish;
    end
endmodule
