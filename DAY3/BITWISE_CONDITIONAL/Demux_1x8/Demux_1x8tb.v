`timescale 1ns / 1ps
module Demux_1x8tb;
    reg a;
    reg [2:0]s;
    wire [7:0]b,c;
    Demux_1x8 uut(.a(a),.s(s),.b(b),.c(c));
    initial begin
        a=1;
        s=3'b000;#10
        s=3'b001;#10
        s=3'b010;#10
        s=3'b011;#10
        s=3'b100;#10
        s=3'b101;#10
        s=3'b110;#10
        s=3'b111;#10
        $finish;
    end    
endmodule
