module concat_example(
    input a,           
    input [1:0] b,     
    input [1:0] c,     
    output [2:0] y     
);

    assign y = {a, b[0], c[1]};

endmodule
