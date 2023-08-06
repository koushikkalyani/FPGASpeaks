module modNcntr_tb();
parameter N=4;
parameter count =16;

reg clk,clr;
wire [N-1:0]q,q_bar;

modNcntr DUT(.clk(clk),.clr(clr),.q(q),.q_bar(q_bar));

always begin 
#5 clk =~clk;
end
initial begin
$dumpfile("modNcntr_test.vcd");
$dumpvars(0,modNcntr_tb);

clk=1;clr=1;

#5 clr=0;
#100 clr=0;

#100 $finish;
end
endmodule
