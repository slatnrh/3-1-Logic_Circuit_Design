module top_module(
    input [254:0] in,
    output [7:0] out
);
    
    wire [7:0] cnt;
    assign out = cnt;
    
    always @ (*) begin
        cnt = 0;
        for(int i = 0; i < 255; i++) begin
            if(in[i] == 1'b1) begin
                cnt += 1;
            end
        end
    end

endmodule