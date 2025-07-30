module Comparator2Bittb;
    reg [1:0]a,b;
    wire eq,gt,lt;
    Comparator2Bit uut(.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));
    initial begin
        a=2'b00;b=2'b00;#10
        a=2'b00;b=2'b01;#10
        a=2'b00;b=2'b10;#10
        a=2'b00;b=2'b11;#10
        a=2'b01;b=2'b00;#10
        a=2'b01;b=2'b01;#10
        a=2'b01;b=2'b10;#10
        a=2'b01;b=2'b11;#10
        a=2'b10;b=2'b00;#10
        a=2'b10;b=2'b01;#10
        a=2'b10;b=2'b10;#10
        a=2'b10;b=2'b11;#10
        a=2'b11;b=2'b00;#10
        a=2'b11;b=2'b01;#10
        a=2'b11;b=2'b10;#10
        a=2'b11;b=2'b11;#10
        $finish;
        
    end
endmodule
