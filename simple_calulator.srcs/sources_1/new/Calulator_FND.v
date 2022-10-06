`timescale 1ns / 1ps

module Calulator_FND(
    input [3:0] i_a, i_b,
    input [1:0] i_select_operator,
    input [1:0] i_digit_select,
    input i_enable,
    output [3:0] o_digit,
    output [7:0] o_fnd_font
    );

    wire [3:0] w_result;

    BCD_to_FND BCD_to_FND(
        .i_disit_select(i_digit_select),
        .i_value(w_result),
        .i_enable(i_enable),
        .o_disit(o_digit),
        .o_font(o_fnd_font)
    );

    calculator calculator(
        .i_a(i_a),
        .i_b(i_b),
        .i_select_operator(i_select_operator),
        .o_result(w_result)
    );

endmodule
