module allzeroallone(input [8:0]x,output zero,one);
  assign zero = ~(|x); assign one = &x;
endmodule
