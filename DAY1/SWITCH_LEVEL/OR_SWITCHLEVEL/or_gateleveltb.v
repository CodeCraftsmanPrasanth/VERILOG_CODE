`timescale 1ns / 1ps
module or_gateleveltb();
    reg a,b;
    wire s;
    or_gatelevel uut(.a(a),.b(b),.s(s));
    initial begin
        a=0;b=0;#10
        a=0;b=1;#10
        a=1;b=0;#10
        a=1;b=1;#10
        $finish;
    end
endmodule
