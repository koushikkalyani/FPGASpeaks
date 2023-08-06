module mux4to1_tb();
reg [0:3]W;
reg [1:0]S;
wire Y;
mux4to1 DUT(.W(W),.S(S),.Y(Y));
always begin
$dumpfile("mux4to1_test.vcd");
$dumpvars(0,mux4to1_tb);
    W=5;S=0;
#10 W=5;S=1;
#10 W=5;S=2;
#10 W=5;S=3;
#10 $finish;
end 
endmodule

