`timescale 1ns/1ps

module tb;

    reg  [7:0] ui_in;
    wire [7:0] uo_out;

    reg  [7:0] uio_in;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    reg ena;
    reg clk;
    reg rst_n;

    // Instantiate DUT
    tt_um_nehaka_full_adder uut (
        .ui_in(ui_in),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n)
    );

    initial begin
        ena    = 1'b1;
        clk    = 1'b0;
        rst_n  = 1'b1;
        uio_in = 8'b0;

        $display(" A B Cin | Sum Cout");
        $display("--------------------");

        ui_in = 8'b00000000; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000100; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000010; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000110; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000001; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000101; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000011; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        ui_in = 8'b00000111; #10;
        $display(" %b %b  %b  |  %b    %b",
            ui_in[0], ui_in[1], ui_in[2], uo_out[0], uo_out[1]);

        $finish;
    end

endmodule
