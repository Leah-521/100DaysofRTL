`timescale 1ns / 1ps

module tb_add_sub();

reg [3:0] a;
reg [3:0] b;
reg bin;
wire [3:0] diff;
wire bout;

reg clk;

initial begin
     $dumpfile("tb_add_sub_wave.vcd");
     $dumpvars(0, tb_add_sub);
     clk=0;

     $random(a,b,bin);
     #60;

end

always begin
     #5 clk = ~clk;
end

always begin
    $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
    #10;
end

add_sub u_add_sub(
       .a(a),
       .b(b),
       .bin(bin),
       .diff(diff),
       .bout(bout)
);

endmodule