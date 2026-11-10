module fs_nand(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

wire [3:0] w;

nand n[0](w[0],a,b);
nand n[1](w[1],a,w[0]);
nand n[2](w[2],b,w[0]);
nand n[3](w[3],w[1],w[2]);
nand n[4](w[4],w[3],bin);
nand n[5](w[5],w[3],w[4]);
nand n[6](w[6],bin,w[4]);
nand n[7](diff,w[5],w[6]);
nand n[8](bout,w[2],w[6]);

endmodule