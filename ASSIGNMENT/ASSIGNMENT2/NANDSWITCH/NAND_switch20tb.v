`timescale 1ns / 1ps
module NAND_switch20tb;
    reg a,b;
    wire out,out1;
    NAND_switch20 uut(.a(a),.b(b),.out(out),.out1(out1));
    initial begin
        a=0;b=0;#10
        a=0;b=1;#10
        a=1;b=0;#10
        a=1;b=1;#10
        $finish;
    end
endmodule