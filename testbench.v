`timescale 1ns/1ps
module testbench;
    reg [3:0] a, b;
    reg bin;
    wire [3:0] diff;
    wire bout;

    subtractor_4bit uut(a, b, bin, diff, bout);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        a = 4'b1010; b = 4'b0011; bin = 0; #10;
        a = 4'b1100; b = 4'b1001; bin = 0; #10;
        a = 4'b0111; b = 4'b0001; bin = 1; #10;
        a = 4'b0100; b = 4'b0100; bin = 0; #10;

        $finish;
    end
endmodule
