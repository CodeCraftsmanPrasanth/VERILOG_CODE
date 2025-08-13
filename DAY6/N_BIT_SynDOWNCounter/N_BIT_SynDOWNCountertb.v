module N_BIT_SynDOWNCountertb;
    reg clk,rst;
    wire [5:0]down;
    N_BIT_SynDOWNCounter uut(.clk(clk),.rst(rst),.down(down));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;#7
        rst=0;
        #700 $finish;
    end    
endmodule