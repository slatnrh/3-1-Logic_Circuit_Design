module top_module(
    input [7:0] in,
    output [31:0] out
);

    assign out = {{24{in[7]}}, in[7:0]};        // -부호일 때 1을 24비트 복사 후 7~0 붙이기 -> 양수/음수 상관없이 24비트 복사

endmodule