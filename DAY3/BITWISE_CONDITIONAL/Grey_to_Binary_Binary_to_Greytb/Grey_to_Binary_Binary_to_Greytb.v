`timescale 1ns / 1ps
module Grey_to_Binary_Binary_to_Greytb;
    reg [3:0]b,g;
    wire [3:0]b1,g1;
    Grey_to_Binary_Binary_to_Grey uut(.b(b),.g(g),.b1(b1),.g1(g1));
    initial begin
        b=4'b1010;g=4'b0111;#10
        b=4'b1110;g=4'b1111;#10
        $finish;
    end
endmodule