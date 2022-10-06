`timescale 1ns / 1ps

module calculator(
    input [3:0] i_a, i_b,
    input [1:0] i_select_operator,
    output [3:0] o_result
    );
    reg [3:0] r_result;
    assign o_result = r_result;

    always @(*) begin //always @(*) : all input view
        case (i_select_operator) 
            2'b00 : r_result = i_a + i_b;
            2'b01 : r_result = i_a - i_b;
            2'b10 : r_result = i_a * i_b;
            2'b11 : begin
                if(i_b == 0) r_result = 0;
                else r_result = i_a / i_b;
            end
        endcase
    end
endmodule

