module FF(input a,b,clk,rst, output kq,sq,dq,tq);
    jkff g1(.j(a),.k(b),.clk(clk),.rst(rst),.kq(kq));
    srff g2(.s(a),.r(b),.clk(clk),.rst(rst),.sq(sq));
    tff g3(.t(a),.clk(clk),.rst(rst),.tq(tq));
    dff g4(.d(a),.clk(clk),.rst(rst),.dq(dq));
endmodule
module jkff(input j,k,clk,rst, output reg kq);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            kq<=0;
        end
        else begin case ({j,k})
            2'b00: kq<=kq; 
            2'b01:kq<=0;
            2'b10:kq<=1;
            2'b11:kq<=~kq;
        endcase
        end
    end    
endmodule
module tff(input t, rst, clk, output reg tq);
    always @ (posedge clk or posedge rst) begin
     if (rst) begin
            tq<=0;
        end
    else begin 
        case (t)
            1'b0:tq<=tq;
            1'b1:tq<=~tq;
        endcase
    end
    end
endmodule
module srff(input s,r, rst, clk, output reg sq);
    always @ (posedge clk or posedge rst) begin
        if (rst) sq=0;
        else if (s==1&r==1) sq<=sq;
         else begin case ({s,r})
            2'b00:sq<=sq;
            2'b01:sq<=0;
            2'b10:sq<=1;
            endcase
          end
      end        
endmodule
module dff(input d, rst, clk, output reg dq);
    always @ (posedge clk or posedge rst) begin
     if (rst) begin
            dq<=0;
        end
    else begin 
        case (d)
            1'b0:dq<=0;
            1'b1:dq<=1;
        endcase
    end
    end
endmodule