module top_module(
    input x,
    input y,
    output z
);

    wire z_or, z_and;
    assign z_or = ((x ^ y) & x) | ~(x ^ y);
    assign z_and = ((x ^ y) & x) & ~(x ^ y);
    assign z = z_or ^ z_and;

endmodule