`timescale 1ns / 1ps
module Encoder_8x3tb;
    reg [7:0]b;
    wire [2:0]a,c;
    Encoder_8x3 uut(.b(b),.a(a),.c(c));
    initial begin
        b=8'b00000001;#10
        b=8'b00000010;#10
        b=8'b00000100;#10
        b=8'b00001000;#10
        b=8'b00010000;#10
        b=8'b00100000;#10
        b=8'b01000000;#10
        b=8'b10000000;#10
        
        
        
        
        
        
       
        $finish;        
    end
endmodule
