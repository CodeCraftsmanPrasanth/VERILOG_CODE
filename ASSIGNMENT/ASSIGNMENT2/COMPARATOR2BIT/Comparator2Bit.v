module Comparator2Bit(input [1:0]a,b,output eq,gt,lt);
    wire eq0,gt0,lt0,gt1,lt1,eq1;
    com1b c1(.a(a[0]),.b(b[0]),.eq(eq0),.gt(gt0),.lt(lt0));
    com1b c2(.a(a[1]),.b(b[1]),.eq(eq1),.gt(gt1),.lt(lt1));
    assign eq = eq0 & eq1;
    assign gt = gt1|(eq1&gt0);
    assign lt = lt1|(eq1&lt0);
endmodule

module com1b(input a,b,output eq,gt,lt);
    assign eq =((a&b)|(~a&~b));
    assign gt = a & ~b;
    assign lt = ~a & b;
endmodule