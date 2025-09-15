module memory_init_repeat;
  reg [7:0] my_memory [15:0];
  initial begin
    integer i=0;
    repeat (16) begin
      my_memory[i] = 250;
      i = i + 1;
    end
  end

endmodule
