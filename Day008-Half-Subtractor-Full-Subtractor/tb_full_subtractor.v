`timescale 1ns / 1ps

module tb_full_subtractor();

reg a;
reg b;
reg bin;
wire diff;
wire bout;

initial begin
    $dumpfile("full_subtractor_wave.vcd");  // 指定波形文件名称
    $dumpvars(0, tb_full_subtractor); // 记录波形信号

    a=0;b=0;bin=0;#10
    a=0;b=0;bin=1;#10
    a=0;b=1;bin=0;#10
    a=0;b=1;bin=1;#10
    a=1;b=0;bin=0;#10
    a=1;b=0;bin=1;#10
    a=1;b=1;bin=0;#10
    a=1;b=1;bin=1;#10

    $finish;

end


full_subtractor u_full_subtractor(
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
);

endmodule 