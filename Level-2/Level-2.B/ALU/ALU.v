module ALU(s,A,B,F); //74381 ALU
input [2:0]s;
input [3:0]A,B;
output reg [3:0]F;
always @(s or A or B)
case(s)
0:F=0;
1:F=B-A;
2:F=A-B;
3:F=A+B;
4:F=A^B;
5:F=A|B;
6:F=A&B;
7:F=15;
endcase
endmodule
