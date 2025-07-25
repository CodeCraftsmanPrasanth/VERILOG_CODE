`timescale 1ns / 1ps
module Decoder_3x8tb;
    reg [2:0]a;
    wire [7:0]b,c;
    Decoder_3x8 uut(.a(a),.b(b),.c(c));
    initial begin
       a=3'b000;#10
       a=3'b001;#10
       a=3'b010;#10
       a=3'b011;#10
       a=3'b100;#10
       a=3'b101;#10
       a=3'b110;#10
       a=3'b111;#10
       $finish;        
    end
endmodule
