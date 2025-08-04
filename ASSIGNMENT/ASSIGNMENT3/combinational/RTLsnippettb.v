`timescale 1ns / 1ps
module RTLsnippettb;
    reg x1,x2,x3,clk,rst;
    wire g,f;
    RTLsnippet uut(.x1(x1),.x2(x2),.x3(x3),.clk(clk),.rst(rst),.g(g),.f(f));
    initial begin clk=0; forever #10 clk=~clk; end
    initial begin rst=1; #7 rst=0; end
    initial begin
        x1=0;x2=0;x3=0;#20
        x1=0;x2=0;x3=1;#20
        x1=0;x2=1;x3=0;#20
        x1=0;x2=1;x3=1;#20
        x1=1;x2=0;x3=0;#20
        x1=1;x2=0;x3=1;#20
        x1=1;x2=1;x3=0;#20
        x1=1;x2=1;x3=1;#20 
        #10 $finish;
      end
endmodule
