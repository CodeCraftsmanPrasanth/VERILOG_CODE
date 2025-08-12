module PISOtb;
    reg  [5:0]in;
    reg clk,rst,load;
    wire out;
    PISO uut(.in(in),.load(load),.clk(clk),.rst(rst),.out(out));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        load=0;
        in=0;#2
        rst=0;
        load=1;
        in=6'b010101;#10
        load=0;
        #60 $finish;
        end
endmodule    
    