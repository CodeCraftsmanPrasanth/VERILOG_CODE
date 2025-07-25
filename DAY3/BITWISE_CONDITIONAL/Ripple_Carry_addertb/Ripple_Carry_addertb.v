`timescale 1ns / 1ps
module Ripple_Carry_addertb;
    reg [3:0]a,b;
    wire [3:0]s;
    wire c;
    
    Ripple_Carry_adder uut(.a(a),.b(b),.c(c),.s(s));
    initial begin
        a=4'b1000;b=4'b1100;#10
        a=4'b1001;b=4'b1101;#10
        a=4'b1011;b=4'b1100;#10
        a=4'b0000;b=4'b1101;#10
        $finish;
    end
endmodule
