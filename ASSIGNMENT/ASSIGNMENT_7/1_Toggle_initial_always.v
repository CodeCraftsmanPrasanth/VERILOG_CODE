// Code your design here
module toggle ;
  reg clk;
  initial begin clk=0; $monitor("%b", clk); end
  always  #5 clk=~clk;
endmodule
