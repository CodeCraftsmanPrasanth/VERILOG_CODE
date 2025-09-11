// Code your testbench here
// or browse Examples
//Generate a 100 Hz Clock from a 50 MHz Clock in Verilog.
module test;
  reg clk,rst;
  wire oclk;
  mhz uut(.clk(clk),.rst(rst), .oclk(oclk));
  always #10 clk=~clk;
  initial begin
    clk=0;
    rst=1;
    #5 rst=0;
  end
endmodule
