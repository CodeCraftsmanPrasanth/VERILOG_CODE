`timescale 1ns / 1ps
module Logic_gatestb();
    reg a,b;
    wire andd,orr,nott,nandd,norr,xorr,xnorr;
    Logic_gates uut(.a(a),.b(b),.c(andd),.d(orr),.e(nott),.f(nandd),.g(norr),.h(xorr),.i(xnorr));
    initial begin
        a=0;b=0;#10
        a=0;b=1;#10
        a=1;b=0;#10
        a=1;b=1;#10
        $finish;
    end
endmodule
