module enc4to2_tb();
reg [3:0]W;
wire [1:0]Y;
enc4to2 DUT(.W(W),.Y(Y));
initial begin 
$dumpfile("enc4to2_wave.vcd");
$dumpvars(0,enc4to2_tb);
W=0;
#5 W=1;
#5 W=2;
#5 W=4;
#5 W=8;
#5 $finish;
end
endmodule
