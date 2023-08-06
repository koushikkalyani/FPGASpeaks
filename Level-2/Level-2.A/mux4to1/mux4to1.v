module mux4to1(W,S,Y);
input [0:3]W;
input [1:0]S;
output reg Y;

always @(S or W)
  case(S)
   0:Y=W[0];
   1:Y=W[1];
   2:Y=W[2];
   3:Y=W[3];
   default:Y=0;
  endcase
endmodule


