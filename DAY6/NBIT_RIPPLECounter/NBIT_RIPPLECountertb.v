module RIPPLEUPCountertb;
    reg clk,rst;
    wire [3:0] out;
    RIPPLEUPCounter uut(.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        rst=1;
        clk=0;#7
        rst=0;
        #200 $finish;
    end
endmodule
