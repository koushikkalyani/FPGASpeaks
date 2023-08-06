module par_gen_tb();
parameter N=6;
reg [N-1:0] Din;
wire evenP,oddP;

par_gen DUT (.Din(Din),.evenP(evenP),.oddP(oddP));

initial begin
$dumpfile("parity_test.vcd");
$dumpvars(0,par_gen_tb);

Din=22;
#5 Din=33;
#5 Din=13;
#5 Din=39;
#5 Din=3;
#5 $finish;
end 
endmodule
