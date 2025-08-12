module universalregistertb;
    reg [3:0]pi;
    reg [2:0]s;
    reg in,clk,rst;
    wire [3:0]pout;
    wire out;
    universalregister uut(.in(in),.clk(clk),.rst(rst),.pout(pout),.out(out),.pi(pi),.s(s));
    always #5 clk=~clk;
    initial begin 
        clk=0;
        rst=1;
        in=0;
        pi=4'b0;
        s=3'b110;#7
        rst=0;
//        in=1;#10
//        in=0;#10
//        in=1;#10
//        in=0;#10
        pi=4'b1010;#10
        #50 $finish;
    end
endmodule
