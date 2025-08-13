module NBIT_JOHNSONCountertb;
    parameter width=4;
    reg clk,rst;
    wire [width-1:0]out;
    NBIT_JOHNSONCounter uut(.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        rst=1;
        clk=0;
        #7 rst=0;
        #200 $finish;
    end
endmodule
