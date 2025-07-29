module realtime8;
  realtime current_time;

  initial begin
    current_time = $realtime;
    $display("%f", current_time);  // Displays 0.0 at start

    #2.2;
    current_time = $realtime;
    $display("%f", current_time);  // 2.2

    #2.3;
    current_time = $realtime;
    $display("%f", current_time);  // 4.5
  end
endmodule

