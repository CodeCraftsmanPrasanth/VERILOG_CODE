module PISO(input [5:0]in, input load, clk,rst, output out);
    parameter n=6;
    reg [n-1:0]shift;
    always @(posedge clk or posedge rst) begin 
        if (rst) shift<=0;
        else if (load) shift <= in;
        else shift<={1'b0,shift[n-1:1]};
     end
     assign out=shift[0];
endmodule
// Corrected PISO Shift Register
//module PISO (
//    input [3:0] in,      // Parallel data input
//    input       load,    // Control signal: 1 to load, 0 to shift
//    input       clk,
//    input       rst,
//    output      out
//);

//    parameter n = 4;
//    reg [n-1:0] shift_reg;

//    always @(posedge clk or posedge rst) begin
//        if (rst) begin
//            shift_reg <= 4'b0; // Asynchronous reset
//        end
//        else if (load) begin
//            shift_reg <= in;     // Parallel Load
//        end
//        else begin
//            // Right shift: MSB is filled with 0, LSB is shifted out.
//            shift_reg <= {1'b0, shift_reg[n-1:1]};
//        end
//    end

//    // The serial output is the LSB of the register.
//    assign out = shift_reg[0];

//endmodule
