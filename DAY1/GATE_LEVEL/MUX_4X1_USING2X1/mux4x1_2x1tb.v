`timescale 1ns / 1ps
module mux4x1_2x1tb();
    reg a,b,c,d,s1,s0;
    wire out;
    mux4x1_2x1 uut(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s0(s0),.out(out));
    initial begin
        a=0;b=1;c=0;d=1;
        s0=0;s1=0;#10
        s0=0;s1=1;#10
        s0=1;s1=0;#10
        s0=1;s1=1;#10
        $finish;
    end
endmodule
