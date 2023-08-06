module bin2gray_tb();
reg [1:4]b;
wire [1:4]g;

bin2gray DUT(.b(b),.g(g));

initial begin
$dumpfile("bin2gray_test.vcd");
$dumpvars(0,bin2gray_tb);
b=4'b0001;
#5 b=4'b1001;
#5 b=4'b1101;
#5 b=4'b0011;
#5 $finish;
end 
endmodule

