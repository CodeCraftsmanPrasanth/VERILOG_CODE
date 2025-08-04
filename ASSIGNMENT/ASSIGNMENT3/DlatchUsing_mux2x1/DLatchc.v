`timescale 1ns / 1ps
module DLatchc(input d, output q);
    mux2x1 a1(.a(d),.b(d),.s(d),.y(q));
endmodule
module mux2x1(input a,b,s,output reg y);
    always @(s) begin
        case (s)
            1'b0:y=a;
            1'b1:y=b;
        endcase
    end
endmodule