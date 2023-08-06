module mux16to1(W,S,Y);
input [0:15]W;
input [3:0]S;
output reg Y;

always @(S or W)
case(S)
0:Y=W[0];
1:Y=W[1];
2:Y=W[2];
3:Y=W[3];
4:Y=W[4];
5:Y=W[5];
6:Y=W[6];
7:Y=W[7];
8:Y=W[8];
9:Y=W[9];
10:Y=W[10];
11:Y=W[11];
12:Y=W[12];
13:Y=W[13];
14:Y=W[14];
15:Y=W[15];
default:Y=0;
endcase
endmodule
