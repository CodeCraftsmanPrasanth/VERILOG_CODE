module PIPOtb;
    reg [3:0]in;
    reg clk,rst;
    wire [3:0]out;
    PIPO uut(.in(in),.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        in=4'b0;#7
        rst=0;
        in=4'b1111;#10
        in=4'b1010;#20
        
        $finish;
    end
endmodule
