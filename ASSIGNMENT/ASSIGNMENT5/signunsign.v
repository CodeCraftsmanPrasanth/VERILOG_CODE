module sign;
  reg signed [4:0]i,e;
  reg signed [3:0] out1,out2;
  initial begin 
    i=13;
    e=3;
    out1=(i/e);
    out2=(i%e);
    $display("%0d,%0d,%0d,%0d",i,e,out1,out2);
    i=-13;
    e=3;
    out1=(i/e);
    out2=(i%e);
    $display("%0d,%0d,%0d,%0d",i,e,out1,out2);
  end
endmodule


