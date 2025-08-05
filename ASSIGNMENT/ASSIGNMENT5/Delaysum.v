module delay_sum(input a, input b, output sum);
    assign #5 sum = a + b;
  initial begin
    $monitor("%0t: a=%0d, b=%0d, sum=%0d", $time, a, b, sum); end
endmodule
