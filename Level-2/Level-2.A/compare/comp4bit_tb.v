module comp4bit_tb();
reg [3:0]A,B;
wire Aeq,Agt,Als;

comp4bit DUT(.A(A),.B(B),.Aeq(Aeq),.Agt(Agt),.Als(Als));

initial begin
$dumpfile("compare_wave.vcd");
$dumpvars(0,comp4bit_tb);

A=10;B=8;
#5 A=9;B=9;
#5 A=5;B=7;
#5 $finish;
end
endmodule
