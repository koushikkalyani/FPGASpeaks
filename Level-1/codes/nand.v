module NAND_gate(a,b,out);
    input a, b;
    output  out
    // NAND gate functionality
    assign out = !(a & b);

endmodule
