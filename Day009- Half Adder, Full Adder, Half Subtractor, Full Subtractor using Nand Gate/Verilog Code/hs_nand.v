module hs_nand(
    input a,
    input b,
    output diff,
    output borrow
);

wire [2:0] w;

nand n[0](w[0],a,b);
nand n[1](w[1],a,w[0]);
nand n[2](w[2],b,w[0]);
nand n[3](diff,w[1],w[2]);
nand n[4](borrow,w[2],w[2]);

endmodule