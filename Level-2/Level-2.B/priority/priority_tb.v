module priority_tb();
reg [3:0]W;
wire [1:0]Y;
wire z;

priority DUT(.W(W),.Y(Y),.z(z));
initial begin
$dumpfile("priority_test.vcd");
$dumpvars(0,priority_tb);

W=4'b1100;
#5 W=4'b0100;
#5 W=4'b0011;
#5 W=4'b0001;
#5 $finish;
end
endmodule

