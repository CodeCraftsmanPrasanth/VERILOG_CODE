`timescale 1ns / 1ps
module DLatchctb;
    reg d;
    wire q;
    DLatchc uut(.d(d),.q(q));
    initial begin 
        d=0;#10
        d=1;#10
        d=0;#10
        d=1;#10
        $finish;
    end
endmodule
