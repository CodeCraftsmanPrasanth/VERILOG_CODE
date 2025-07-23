`timescale 1ns / 1ps
module gates_gatesleveltb();
    reg a,b;
    wire and1,or1,not1,nand1,nor1,xor1,xnor1;
    gates_gateslevel uut(.and1(and1),.or1(or1),.not1(not1),.nand1(nand1),.nor1(nor1),.xor1(xor1),.xnor1(xnor1),.a(a),.b(b));
    initial begin
        a=0;b=0;#10
        a=0;b=1;#10
        a=1;b=0;#10
        a=1;b=1;#10
        $finish;
    end
endmodule
