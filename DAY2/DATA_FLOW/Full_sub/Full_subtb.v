`timescale 1ns / 1ps
module Full_subtb();
    reg a,b,c;
    wire d, bor;
    Full_sub uut(.a(a),.b(b),.c(c),.d(d),.bor(bor));
    initial begin
        a=0;b=0;c=0;#10
        a=0;b=0;c=1;#10
        a=0;b=1;c=0;#10
        a=0;b=1;c=1;#10
        a=1;b=0;c=0;#10
        a=1;b=0;c=1;#10
        a=1;b=1;c=0;#10
        a=1;b=1;c=1;#10
        $finish;
    end        
endmodule
