module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout_cin;
    wire [31:0] b_sub_xor;
    assign b_sub_xor = {32{sub}} ^ b;
    
    add16 adder_0(a[15:0], b_sub_xor[15:0], sub, sum[15:0], cout_cin);
    add16 adder_1(a[31:16], b_sub_xor[31:16], cout_cin, sum[31:16]);

endmodule