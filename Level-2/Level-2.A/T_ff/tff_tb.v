module tff_tb();
reg clk,T;
wire q,q_bar;

tff DUT(.clk(clk),.T(T),.q(q),.q_bar(q_bar));
always begin
#5 clk=~ clk;
end

initial begin
$dumpfile("tff_test.vcd");
$dumpvars(0,tff_tb);
clk=0;
T=0;
#5 T=1;
#5 T=0;
#5 T=1;
#5 T=1;
#5 T=0;
#5 T=0;
#5 T=1;
#5 T=1;
#5 T=0;
#5 T=0;
#5 T=0;
#5 T=0;
#5 T=1;

#5 $finish;
end
endmodule

