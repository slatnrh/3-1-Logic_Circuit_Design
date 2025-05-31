module top_module(
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
);

    MUXDFF ins0(
        .R(SW[3]),
        .clk(KEY[0]),
        .E(KEY[1]),
        .L(KEY[2]),
        .w(KEY[3]),
        .out(LEDR[3])
    );
    MUXDFF ins1(
        .R(SW[2]),
        .clk(KEY[0]),
        .E(KEY[1]),
        .L(KEY[2]),
        .w(LEDR[3]),
        .out(LEDR[2])
    );
    MUXDFF ins2(
        .R(SW[1]),
        .clk(KEY[0]),
        .E(KEY[1]),
        .L(KEY[2]),
        .w(LEDR[2]),
        .out(LEDR[1])
    );
    MUXDFF ins3(
        .R(SW[0]),
        .clk(KEY[0]),
        .E(KEY[1]),
        .L(KEY[2]),
        .w(LEDR[1]),
        .out(LEDR[0])
    );

endmodule

module MUXDFF(
    input R,
    input clk,
    input E,
    input L,
    input w,
    output out
);

    wire [1:0] temp;
    assign temp[0] = E ? w : out;
    assign temp[1] = L ? R : temp[0];
    
    always @(posedge clk) begin
        out <= temp[1];
    end

endmodule