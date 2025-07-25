`timescale 1ns / 1ps
module Encoder_4x2tb;
    reg [3:0]b;
    wire [1:0]a,c;
    Encoder_4x2 uut(.b(b),.a(a),.c(c));
    initial begin
        b=8'b0001;#10
        b=8'b0010;#10
        b=8'b0100;#10
        b=8'b1000;#10
        $finish;        
    end
endmodule
