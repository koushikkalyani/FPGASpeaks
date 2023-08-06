module gray2bin_tb();
reg [1:4]g;
wire [1:4]b;

gray2bin DUT(.g(g),.b(b));
initial begin
$dumpfile("gray2bin_test.vcd");
$dumpvars(0,gray2bin_tb);

g=4'b0100;
#5 g=4'b0100;
#5 g=4'b1100;
#5 g=4'b0101;
#5 g=4'b1010;
#5 g=4'b0110;
#5 $finish;
end 
endmodule
