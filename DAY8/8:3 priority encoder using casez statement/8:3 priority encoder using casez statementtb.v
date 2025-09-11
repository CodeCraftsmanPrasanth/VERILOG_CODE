// Code your testbench here
// or browse Examples
//6. Design 8:3 priority encoder using casez statements. 
module test;
  reg [7:0] a;
  wire [2:0]b;
  prio_encoder uut(.a(a),.b(b) );
  initial begin
    $monitor("%d",b);
    a=8'b10000000;#5
    a=8'b01000000;#5
    a=8'b00100000;#5
    a=8'b00010000;#5
    a=8'b00001000;#5
    a=8'b00000100;#5
    a=8'b00000010;#5
    a=8'b00000001;#5
    a=8'b10001000;#5
    $finish;
  end
endmodule 50mhz to ns
