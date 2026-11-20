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

     a=4'b1010,b=4'b0101;bin=1'b0;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10
     a=4'b1010,b=4'b0101;bin=1'b1;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10

     a=4'b1011,b=4'b1101;bin=1'b0;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10
     a=4'b1011,b=4'b1101;bin=1'b1;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10
     
     a=4'b0000,b=4'b1111;bin=1'b0;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10
     a=4'b0000,b=4'b1111;bin=1'b1;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10

     a=4'b1100,b=4'b0100;bin=1'b0;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10
     a=4'b1100,b=4'b0100;bin=1'b1;
     $display("Time: %0t | a: %b | b: %b | bin: %b | diff: %b | bout: %b",
            $time, a, b, bin, diff, bout);
     #10

     $finish;

end

always begin
     #5 clk = ~clk;
end

add_sub u_add_sub(
       .a(a),
       .b(b),
       .bin(bin),
       .diff(diff),
       .bout(bout)
);

endmodule