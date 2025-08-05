module con;
  reg [3:0]a;
  reg [3:0]b,c;
  initial begin
    a=4'b1011;
    $monitor("%b,%b",b,c);
  end
  assign b=a>>1;
  assign c=a<<1;
endmodule
