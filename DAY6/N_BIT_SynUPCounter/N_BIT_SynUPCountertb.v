module N_BIT_SynUPCountertb;
    reg clk,rst;
    wire [5:0]UPout;
    N_BIT_SynUPCounter uut(.clk(clk),.rst(rst),.UPout(UPout));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;#7
        rst=0;
        #700 $finish;
    end        
endmodule
