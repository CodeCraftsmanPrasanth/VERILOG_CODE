`timescale 1ns / 1ps
module full_subtractortb();
    reg a,b,bin;
    wire d,bor;
    full_subtractor uut(.a(a),.b(b),.bin(bin),.d(d),.bor(bor));
    initial begin
        a=0;b=0;bin=0;#10
        a=0;b=0;bin=1;#10
        a=0;b=1;bin=0;#10
        a=0;b=1;bin=1;#10
        a=1;b=0;bin=0;#10
        a=1;b=0;bin=1;#10
        a=1;b=1;bin=0;#10
        a=1;b=1;bin=1;#10
        $finish;
    end
endmodule
