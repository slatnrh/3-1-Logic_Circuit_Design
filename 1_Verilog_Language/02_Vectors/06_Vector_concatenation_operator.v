module top_module(
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z
);

    wire [31:0] all_input;
    assign all_input = {a[4:0], b[4:0], c[4:0], d[4:0], e[4:0], f[4:0], 2'b11};
    
    assign w = all_input[31:24];
    assign x = all_input[23:16];
    assign y = all_input[15:8];
    assign z = all_input[7:0];

endmodule