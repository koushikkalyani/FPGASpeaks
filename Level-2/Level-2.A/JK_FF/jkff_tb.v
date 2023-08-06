module jkff_tb();
reg j,k,clk;
wire q,q_bar;

jkff DUT(.j(j),.k(k),.clk(clk),.q(q),.q_bar(q_bar));
always begin
#5 clk=~clk;
end
initial begin
$dumpfile("jkff_test.vcd");
$dumpvars(0,jkff_tb);
clk=0;j=0;k=0;

#5 j=0;k=0;
#5 j=0;k=1;
#5 j=1;k=0;
#5 j=1;k=1;
#20 $finish;
end
endmodule


