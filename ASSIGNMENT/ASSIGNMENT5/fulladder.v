module full_adder_4bit(
    input [3:0] a,       // 4-bit input a
    input [3:0] b,       // 4-bit input b
    input c_in,          // 1-bit carry-in
    output c_out,        // 1-bit carry-out
    output [3:0] sum     // 4-bit sum output
);

    assign {c_out, sum} = a + b + c_in;

endmodule
