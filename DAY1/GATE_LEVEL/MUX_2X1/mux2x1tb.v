`timescale 1ns / 1ps
module mux2x1tb();
    reg a,b,s;
    wire o;
    mux2x1 uut(.a(a),.b(b),.s(s),.o(o));
    initial begin
        a=0;b=0;s=0;#10
        a=0;b=0;s=1;#10
        a=0;b=1;s=0;#10
        a=0;b=0;s=1;#10
        a=1;b=0;s=0;#10
        a=1;b=0;s=1;#10
        a=1;b=1;s=0;#10
        a=1;b=1;s=1;#10
        $finish;
    end
endmodule
