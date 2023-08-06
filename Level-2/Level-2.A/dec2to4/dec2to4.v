module dec2to4(E,W,Y);
input E;
input [1:0]W;
output reg [0:3]Y;

always @(E,W)
begin 
if(E==0)
Y=0;
else
case(W)
0:Y=4'b1000;
1:Y=4'b0100;
2:Y=4'b0010;
3:Y=4'b0001;
default:Y=0;
endcase
end 
endmodule

