module extract_lower_nibble;
  reg [7:0] bus;
  wire [3:0] lower_nibble;

  assign lower_nibble = bus[3:0];  // part select operation

  initial begin
    bus = 8'b1011_0110;  // example value (binary)

    #1;
    $display("bus = %b", bus);              // prints 10110110
    $display("lower nibble = %b", lower_nibble);  // prints 0110 (bits 3 down to 0)
  end
endmodule
