module top_module(
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);

    wire [7:0] w1, w2, w3;
    
    my_dff8 dff_1(.q(w1), .clk(clk), .d(d));
    my_dff8 dff_2(.q(w2), .clk(clk), .d(w1));
    my_dff8 dff_3(.q(w3), .clk(clk), .d(w2));
    
    always @ (*) begin
        case(sel)
            0 : q = d;
            1 : q = w1;
            2 : q = w2;
            3 : q = w3;
        endcase
    end

    /*
    always @ (sel) begin
        if(sel == 2'b00)
            q = d;
        else if(sel == 2'b01)
            q = w1;
        else if(sel == 2'b10)
            q = w2;
        else if(sel == 2'b11)
            q = w3;
    end
    */

endmodule