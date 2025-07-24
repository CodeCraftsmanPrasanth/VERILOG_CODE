`timescale 1ns / 1ps
module demux_2x1tb();
    reg a,s;
    wire o1,o0;
    demux_2x1 uut(.a(a),.s(s),.o0(o0),.o1(o1));
    initial begin
        a=0;s=0;#10
        a=0;s=1;#10
        a=1;s=0;#10
        a=1;s=1;#10        
        $finish;
    end
endmodule
