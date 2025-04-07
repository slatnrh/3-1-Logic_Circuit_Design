module top_module(
    input clk,
    input d,
    output q
);

    wire w1, w2;
    my_dff dff_1(.q(w1), .clk(clk), .d(d));
    my_dff dff_2(.q(w2), .clk(clk), .d(w1));
    my_dff dff_3(.q(q), .clk(clk), .d(w2));

endmodule