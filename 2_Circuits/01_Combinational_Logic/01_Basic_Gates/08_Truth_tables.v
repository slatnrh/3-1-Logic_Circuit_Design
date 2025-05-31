module top_module(
    input x3,
    input x2,
    input x1,       // three inputs
    output f        // one output
);

    assign f = (x3 == 1'b1) ? x1 : x2;

endmodule