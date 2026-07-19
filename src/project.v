module tt_um_nehaka_full_adder (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    input  [7:0] uio_in,
    output [7:0] uio_out,
    output [7:0] uio_oe,
    input        ena,
    input        clk,
    input        rst_n
);

    // Prevent warnings for unused signals
    wire _unused = &{ena, clk, rst_n, uio_in};

    // Full Adder
    assign uo_out[0] = ui_in[0] ^ ui_in[1] ^ ui_in[2];
    assign uo_out[1] = (ui_in[0] & ui_in[1]) |
                       (ui_in[1] & ui_in[2]) |
                       (ui_in[0] & ui_in[2]);

    // Unused outputs
    assign uo_out[7:2] = 6'b000000;

    // No bidirectional pins used
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

endmodule
