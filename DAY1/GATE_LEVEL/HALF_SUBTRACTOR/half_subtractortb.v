`timescale 1ns / 1ps
module half_subtractortb();
    reg a,b;
    wire d,bor;
    half_subtractor uut(.a(a),.b(b),.d(d),.bor(bor));
    initial begin
        a=0;b=0;#10
        a=0;b=1;#10
        a=1;b=0;#10
        a=1;b=1;#10
        $finish;
    end
endmodule
