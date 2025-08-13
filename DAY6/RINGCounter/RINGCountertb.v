module RINGCountertb;
    parameter width=5;
    reg clk,rst;
    wire [width-1:0] out;
    RINGCounter uut(.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        rst=1;
        clk=0;#7
        rst=0;
        #100 $finish;
    end
endmodule
