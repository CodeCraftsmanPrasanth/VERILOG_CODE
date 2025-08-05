module buf_delay(input  a,output y);
  buf #(3,4,5) (y, a);
endmodule
