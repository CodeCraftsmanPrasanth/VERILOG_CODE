module MUX8X1_USING4X1tb;
    reg [7:0]a;
    reg [2:0]s;
    wire out;
    MUX8X1_USING4X1 uut(.a(a),.s(s),.out(out));
    initial begin
        a=8'b10101010;
        s=3'b000;#10
        s=3'b001;#10
        s=3'b010;#10
        s=3'b011;#10
        s=3'b100;#10
        s=3'b101;#10
        s=3'b110;#10
        s=3'b111;#10
        $finish;
    end
endmodule

