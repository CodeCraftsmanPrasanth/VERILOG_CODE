`timescale 1ns / 1ps
module consecutivenumbertb;
    reg clk,rst,x;
    wire y;
    
    consecutivenumber uut(.clk(clk),.rst(rst),.x(x),.y(y));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        //x=0;
        #10
        rst=0;
        x=0;#10
        x=0;#10
        x=0;#10
        x=0;#10
        x=0;#10
        x=0;#10
        x=0;#10
        x=0;#10
        x=1;#10
        x=1;#10
        x=1;#10
        x=0;#10
        x=1;#10
        x=0;#10
        x=1;#10
        $finish;
    end
endmodule
