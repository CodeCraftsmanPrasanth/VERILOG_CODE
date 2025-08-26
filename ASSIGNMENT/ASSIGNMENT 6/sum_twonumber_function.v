module sumtwonumberfunction;
    reg [3:0] a,b;
    reg [4:0] c;
    function [4:0]sum(input [3:0] x,y);
        sum=x+y;
    endfunction
    initial begin 
        a=15;b=15;#10
        c=sum(a,b);
        $display("%d,%d,%d",a,b,c);
    end
endmodule
