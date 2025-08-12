module SIPOtb;
    reg in;
    reg clk,rst;
    wire [3:0]out;
    SIPO uut(.in(in),.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        in=0;#2
        rst=0;
        in=1;#10
        in=0;#10
        in=1;#10
        in=0;#60
        $finish;
        end
endmodule
