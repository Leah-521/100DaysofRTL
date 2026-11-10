module ha_nand(
    input a,
    input b,
    output sum,
    output carry
);

wire [2:0] w;

nand n[0](w[0],a,b);
nand n[1](w[1],a,w[0]);
nand n[2](w[2],b,w[0]);
nand n[3](sum,w[1],w[2]);
nand n[4](carry,w[0],w[0]);

endmodule