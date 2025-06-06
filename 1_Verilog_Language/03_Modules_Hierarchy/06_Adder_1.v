module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum_hi, sum_lo;
    wire cout;
    
    assign sum = {sum_hi, sum_lo};
    
    add16 add1(.sum(sum_lo), .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(cout));
    add16 add2(.sum(sum_hi), .a(a[31:16]), .b(b[31:16]), .cin(cout));

endmodule