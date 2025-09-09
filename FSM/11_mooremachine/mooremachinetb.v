`timescale 1ns / 1ps
module Qn11tb;
    reg j,k,clk,rst;
    wire out;
    Qn11 uut(.j(j),.k(k),.clk(clk),.rst(rst), .out(out));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        #6 rst=0;
        j=0;
        k=0;
        #10 j=1;
        #10 k=0;j=0;
        #10 k=1;
    end
endmodule
