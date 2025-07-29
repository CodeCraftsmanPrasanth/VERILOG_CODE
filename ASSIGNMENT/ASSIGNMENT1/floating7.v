module floating7;
  real delta;
  integer i;

  initial begin
    // Assign floating point values to real variable
    delta = 4e10;     // 4 × 10^10
    $display("delta (real) = %e", delta);

    delta = 2.18;     
    $display("delta (real) = %f", delta);

    // Assign real to integer
    delta = 1234.567;
    i = delta;        // Implicit conversion: real to integer truncates the fractional part
    $display("delta = %f assigned to i = %d", delta, i);

    delta = 4e10;
    i = delta;
    $display("delta = %e assigned to i = %d", delta, i);

    delta = 2.99;
    i = delta;
    $display("delta = %f assigned to i = %d", delta, i);
  end
endmodule
