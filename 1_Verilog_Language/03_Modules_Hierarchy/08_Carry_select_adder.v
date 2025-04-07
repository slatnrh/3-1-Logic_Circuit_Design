module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire mux;
    wire [15:0] sum_0, sum_1;
    
    add16 adder_1(a[15:0], b[15:0], 1'b0, sum[15:0], mux);
    add16 adder_2(a[31:16], b[31:16], 1'b0, sum_0);
    add16 adder_3(a[31:16], b[31:16], 1'b1, sum_1);
    
    always @ (mux) begin
        if(mux == 0)
            sum[31:16] = sum_0;
        else if(mux == 1)
            sum[31:16] = sum_1;
    end

endmodule