module ALU_tb();
reg [3:0]A,B;
reg [2:0]s;
wire [3:0]F;

ALU DUT(.A(A),.B(B),.s(s),.F(F));

initial begin
$dumpfile("ALU_test.vcd");
$dumpvars(0,ALU_tb);
s=0;A=5;B=10;
#5 s=1;A=5;B=10;
#5 s=2;A=5;B=10;
#5 s=3;A=5;B=10;
#5 s=4;A=5;B=10;
#5 s=5;A=5;B=10;
#5 s=6;A=5;B=10;
#5 s=7;A=5;B=10;
#5 $finish;
end 
endmodule

