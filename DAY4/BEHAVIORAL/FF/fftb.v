module fftb;
    reg a,b,clk,rst;
    wire kq,sq,tq,dq;
    FF uut(.a(a),.b(b),.clk(clk),.rst(rst),.kq(kq),.tq(tq),.sq(sq),.dq(dq));
    initial begin
        clk =0;
        forever #10 clk=~clk;
    end
    initial begin
        rst=1;#7
        rst=0;
    end
    initial begin  
        a=1;b=1;#30   
        a=1;b=0;#20  
        a=0;b=0;#20
        a=0;b=1;#20
        $finish;
    end
endmodule
