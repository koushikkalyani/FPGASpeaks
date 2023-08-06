module fact_tb();
parameter N=5;
reg [N:0] in;
wire [N*8:0] out;

fact DUT(.in(in),.out(out));
initial begin
$dumpfile("fact_test.vcd");
$dumpvars(0,fact_tb);

in=5;
#5 in=9;
#5 in=19;
#5 in=91;
#5 in=10;
#5 in=5;
#5 in=20;
#5 $finish;
end 
endmodule
