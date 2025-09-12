module arithmatic_operation_6(
    input [3:0] a, b,
    input [1:0] opcode,
    output reg [7:0] out
);
    task add(input [3:0] ta, tb, output [7:0] tout);
        tout = ta + tb;
    endtask

    task sub(input [3:0] ta, tb, output [7:0] tout);
        tout = ta - tb;
    endtask

    task div(input [3:0] ta, tb, output [7:0] tout);
        tout = ta / tb;
    endtask

    task mul(input [3:0] ta, tb, output [7:0] tout);
        tout = ta * tb;
    endtask
    always @(*) begin
        case(opcode)
            2'd0: add(a, b, out);
            2'd1: sub(a, b, out);
            2'd2: div(a, b, out);
            2'd3: mul(a, b, out);
            default: out = 8'hXX;
        endcase
    end
endmodule
