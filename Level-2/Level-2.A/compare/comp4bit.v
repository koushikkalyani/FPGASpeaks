module comp4bit(A,B,Aeq,Agt,Als);
input [3:0]A,B;
output reg Aeq,Agt,Als ;//A equal,A greater, A lesser.
always @(A or B)
begin
Aeq=0;
Agt=0;
Als=0;
if(A==B)
 Aeq=1;
else if(A>B)
 Agt=1;
else
 Als=1;
end
endmodule
