// Module for 2:1 Multiplexer
module mux2_1(input wire I0, I1, input wire S, output wire Y);
  assign Y = S ? I1 : I0;
endmodule

// Module to implement various gates using 2:1 multiplexers
module gates_using_mux(
  input wire A, B,
  output wire AND_out,
  output wire OR_out,
  output wire NAND_out,
  output wire NOR_out,
  output wire XOR_out,
  output wire XNOR_out
);
  
  // AND gate using mux: select line = A, I0 = 0, I1 = B
  mux2_1 and_mux(.I0(1'b0), .I1(B), .S(A), .Y(AND_out));
  
  // OR gate using mux: select line = A, I0 = B, I1 = 1
  mux2_1 or_mux(.I0(B), .I1(1'b1), .S(A), .Y(OR_out));
  
  // NAND gate using mux: select line = A, I0 = 1, I1 = ~B
  wire nB;
  assign nB = ~B;
  mux2_1 nand_mux(.I0(1'b1), .I1(nB), .S(A), .Y(NAND_out));
  
  // NOR gate using mux: select line = A, I0 = ~B, I1 = 0
  mux2_1 nor_mux(.I0(nB), .I1(1'b0), .S(A), .Y(NOR_out));
  
  // XOR gate using mux: select line = A, I0 = B, I1 = ~B
  mux2_1 xor_mux(.I0(B), .I1(nB), .S(A), .Y(XOR_out));
  
  // XNOR gate using mux: select line = A, I0 = ~B, I1 = B
  mux2_1 xnor_mux(.I0(nB), .I1(B), .S(A), .Y(XNOR_out));

endmodule
