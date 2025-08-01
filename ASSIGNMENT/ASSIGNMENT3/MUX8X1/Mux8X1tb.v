`timescale 1ns / 1ps
module Mux8X1tb;
    reg [7:0]a;
    reg [2:0]s;
    wire out;
    Mux8X1 uut(.a(a),.s(s),.out(out));
    initial begin
        a=8'b10101010;
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
