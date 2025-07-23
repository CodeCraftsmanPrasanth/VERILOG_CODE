`timescale 1ns / 1ps

module nandswitchleveltb();
    reg a,b;
    wire out;
    nandswitchlevel uut(.a(a),.b(b),.out(out));
    initial begin
        a=0;b=0;#10;
        a=0;b=1;#10;
        a=1;b=0;#10;
        a=1;b=1;#10;
        $finish;
    end
endmodule
