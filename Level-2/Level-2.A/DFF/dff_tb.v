module dff_tb();
reg D,clk;
wire Q;

dff DUT(.D(D),.clk(clk),.Q(Q));
always begin 
#5 clk=~clk;
end
initial begin
$dumpfile("dff_test.vcd");
$dumpvars(0,dff_tb);
clk=0;

 D=1;
#2 D=0;
#7 D=1;
#1 D=0;
#2 D=1;
#7 D=1;
#1 D=0;
#2 D=0;
#7 D=1;
#1 D=0;
#2 D=1;
#7 D=1;
#1 D=0;
#5 $finish;
end
endmodule
