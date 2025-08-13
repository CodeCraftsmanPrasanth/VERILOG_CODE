module NBIT_SynUPDOWNCountertb;
    reg a,clk,rst;
    wire [3:0]out;
    NBIT_SynUPDOWNCounter uut(.a(a),.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;#7
        rst=0;
        a=0;#200
        a=1;#200
        $finish;
    end
endmodule