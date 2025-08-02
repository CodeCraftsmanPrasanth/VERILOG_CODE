`timescale 1ns / 1ps
module MUX8X1_USING4X1(input [7:0]a,input [2:0]s,output out);
    wire [1:0] y;
    mux4x1 m1(.a(a[3:0]),.s(s[1:0]),.out(y[0]));
    mux4x1 m2(.a(a[7:4]),.s(s[1:0]),.out(y[1]));
    mux2x1 m3(.a(y),.s(s[2]),.out(out));
endmodule
module mux4x1(input [3:0]a,input [1:0]s,output reg out);
    always @(*) begin
        case (s)
            2'b00:out<=a[0];
            2'b01:out<=a[1];
            2'b10:out<=a[2];
            2'b11:out<=a[3];
            default: out<=1'bx;
        endcase
    end   
endmodule
module mux2x1(input [1:0]a,input s,output reg out);
    always @(*) begin
        case (s)
            1'b0:out<=a[0];
            1'b1:out<=a[1];
            default: out<=1'bx;
        endcase
    end
endmodule