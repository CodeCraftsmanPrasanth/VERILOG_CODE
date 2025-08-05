module twos_complement_adder_4bit(
    input [3:0] x,     
    input [3:0] y,     
    input c_in,        
    output c_out,      
    output [3:0] sum 
);
    wire [3:0] t;

    assign t = y ^ {4{c_in}};              
    assign {c_out, sum} = x + t + c_in;   
endmodule
