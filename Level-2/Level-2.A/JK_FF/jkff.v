module jkff(j,k,clk,q,q_bar);
input j,k,clk;
output reg q=0,q_bar;

always @ (posedge clk)
begin
 case({j,k})
  2'b00: q<=q;
  2'b01: q<=0;
  2'b10: q<=1;
  2'b11: q<=~q;
 endcase
q_bar = ~q;
end
endmodule
