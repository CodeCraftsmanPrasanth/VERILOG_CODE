module FA_HDtb;
    reg a,b,cin;
    wire sum,carry;
    FA_HF uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
    initial begin
        a=0;b=0;cin=0;#10
        a=0;b=0;cin=1;#10
        a=0;b=1;cin=0;#10
        a=0;b=1;cin=1;#10
        a=1;b=0;cin=0;#10
        a=1;b=0;cin=1;#10
        a=1;b=1;cin=0;#10
        a=1;b=1;cin=1;#10       
        $finish;
    end
endmodule
