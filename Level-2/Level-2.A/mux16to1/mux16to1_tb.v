module mux16to1_tb();
reg [0:15]W;
reg [3:0]S;
wire Y;
mux16to1 DUT(.S(S),.W(W),.Y(Y));
always begin
$dumpfile("mux16to1_test.vcd");
$dumpvars(0,mux16to1_tb);
    W=43690;S=0;
#10 W=43690;S=1;
#10 W=43690;S=2;
#10 W=43690;S=3;
#10 W=43690;S=4;
#10 W=43690;S=5;
#10 W=43690;S=6;
#10 W=43690;S=7;
#10 W=43690;S=8;
#10 W=43690;S=9;
#10 W=43690;S=10;
#10 W=43690;S=11;
#10 W=43690;S=12;
#10 W=43690;S=13;
#10 W=43690;S=14;
#10 W=43690;S=15;
#10 $finish;
end
endmodule
