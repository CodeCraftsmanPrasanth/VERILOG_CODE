`timescale 1ns / 1ps
module ripplecarryadder13tb;
    reg [3:0]a,b;
    reg cin;
    wire [3:0]sum;
    wire cout;
    ripplecarryadder13 uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    initial begin
        cin=0;
        a=4'b1000;b=4'b1000;#10
        a=4'b1000;b=4'b0001;#10
        a=4'b1000;b=4'b1010;#10
        a=4'b1010;b=4'b1011;#10
        $finish;   
    end     
endmodule
