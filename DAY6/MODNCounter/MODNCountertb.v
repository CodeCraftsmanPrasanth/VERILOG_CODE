module MODNCountertb;
    parameter n=20; 
    parameter width=5;
    reg clk,rst;
    wire [width-1:0]out;
    MODNCounter uut(.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin 
        clk=0;
        rst=1;#7
        rst=0;
        #400 $finish;
    end  
endmodule
