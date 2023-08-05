module NOR_gate(a,b,out);
    input a, b;
    output  out
    // NOR gate functionality
    assign out = !(a | b);

endmodule

