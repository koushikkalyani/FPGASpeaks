module enc4to2(W,Y);
input [3:0]W;
output reg [1:0]Y;
always @(W)
case(W)
4'b0001:Y=0;
4'b0010:Y=1;
4'b0100:Y=2;
4'b1000:Y=3;
default:Y=2'bx;
endcase
endmodule
