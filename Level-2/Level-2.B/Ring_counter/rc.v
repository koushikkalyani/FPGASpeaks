module rc(
  input wire clk,
  input wire reset,
  output reg [3:0] counter
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 4'b0001; // Initialize counter with 1
    end else begin
      counter <= {counter[2:0], counter[3]}; // Shift the counter
    end
  end

endmodule

