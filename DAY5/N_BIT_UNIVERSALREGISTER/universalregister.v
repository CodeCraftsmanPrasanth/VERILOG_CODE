module universalregister(input [3:0]pi,input in, clk,rst,input [2:0]s,output reg [3:0]pout,output reg out);
    parameter n=4;
    reg [n-1:0]shift;
    reg load=1; 
    always @(posedge clk or posedge rst) begin
        if (rst) shift <=4'b0;
        else begin
            case (s)
                3'b000, 3'b010 :shift<={in,shift[n-1:1]}; //SISO SIPO RIGHT
                3'b001,3'b011 :shift <={shift[n-2:0],in};//SISO SIPO LEFT
                3'b100 :if (load) begin shift <= pi; load<=0; end //PISO RIGHTSHIFT
                       else shift<={1'b0,shift[n-1:1]}; 
                3'b101 : if (load) begin shift <= pi;  load<=0;  end  //PISO LEFT SHIFT
                       else shift<={shift[n-2:0],1'b0};
                3'b110: shift<=pi;                  //PIPO
                default: shift<=shift;
            endcase
        end
    end
    always @(*) begin
        pout = 4'bz;  // Default to high-impedance
        out  = 1'bz;   // Default to high-impedance
        case (s)
            3'b000,3'b100 :out=shift[0]; // SISO PISO RIGHT
            3'b001,3'b101:out=shift[n-1];//SISO PISO LEFT
            3'b010,3'b011,3'b110: pout=shift;  //PISO RIGHT LEFT PIPO
        endcase
    end
endmodule
