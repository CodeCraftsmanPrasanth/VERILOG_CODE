module inertial_delay(input  a,output y);
  assign #5 y = a;
endmodule
module transport_delay(input  a,output reg y);
  always @* begin
    #5 y = a;
  end
endmodule
