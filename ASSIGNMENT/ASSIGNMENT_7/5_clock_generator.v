module clockgenerator;
  reg clk;
  initial begin
    $monitor("%b",clk);
    clk=0; 
    forever #5 clk=~clk;
  end
endmodule
