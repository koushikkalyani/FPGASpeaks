module dec2to4_tb();
reg E;
reg [1:0]W;
wire [0:3]Y;
dec2to4 DUT(.E(E),.W(W),.Y(Y));
initial begin
$dumpfile("dec2to4_wave.vcd");
$dumpvars(0,dec2to4_tb);

E=0;W=0;
#5 E=1;W=0;
#5 E=1;W=1;
#5 E=1;W=2;
#5 E=1;W=3;
#5 $finish;
end
endmodule
