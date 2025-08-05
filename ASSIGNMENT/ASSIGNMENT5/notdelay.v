module not_delay(input  a,output y);
  assign #3 y = ~a; 
  assign # (3,5) y2 = ~a;
endmodule
