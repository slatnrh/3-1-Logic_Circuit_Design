module top_module(
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum
);

    wire carry_out0, carry_out1, carry_out2;
    
    bcd_fadd uut0(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(carry_out0),
        .sum(sum[3:0])
    );
    bcd_fadd uut1(
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(carry_out0),
        .cout(carry_out1),
        .sum(sum[7:4])
    );
    bcd_fadd uut2(
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(carry_out1),
        .cout(carry_out2),
        .sum(sum[11:8])
    );
    bcd_fadd uut3(
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(carry_out2),
        .cout(cout),
        .sum(sum[15:12])
    );

endmodule