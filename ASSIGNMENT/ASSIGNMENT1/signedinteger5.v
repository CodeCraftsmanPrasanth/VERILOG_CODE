module signedinteger5;
  integer i1;
  integer i2;
  initial begin
    i1=5;
    i2=-6;
    $display("positive=%0d,negative = %0d ",i1,i2);
  end  
endmodule
