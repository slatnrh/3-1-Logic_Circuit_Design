module top_module(
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    reg [7:0] middle;
    
    always @(posedge clk) begin
        middle <= in;
        pedge <= (~middle) & in;
    end

endmodule