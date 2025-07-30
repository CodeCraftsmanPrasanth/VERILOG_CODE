module ripplecarryadder13(input [3:0]a,[3:0]b,input cin, output [3:0]sum,output cout);
    wire [2:0]c;
    full_adder ha1(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c[0]));
    full_adder ha2(.a(a[1]),.b(b[1]),.c(c[0]),.sum(sum[1]),.carry(c[1]));
    full_adder ha3(.a(a[2]),.b(b[2]),.c(c[1]),.sum(sum[2]),.carry(c[2]));
    full_adder ha4(.a(a[3]),.b(b[3]),.c(c[2]),.sum(sum[3]),.carry(cout));
endmodule

module full_adder(input a,b,c, output sum,carry);
    assign sum=a^b^c;
    assign carry=a&b|a&c|b&c;
endmodule