`timescale 1ns/100ps

///  4bit alu
///  a[4:0] b[4:0]
///  00 A(nand)B
///  01 A-B
///  10 A(nor)B
///  11 A+B

module Alu(A, B,Op0, Op1, C,V);

 input [3:0] A,B;
 input Op0, Op1;
 output [3:0] C;
 output V;

 wire [3:0] i, i1, i2;
 wire M,Cout;

 assign i1 = ~(A & B);
 assign i2 = ~(A | B);
 assign M = Op1;

 FourBitAddSub u1(A, B, M, i, Cout,V);
 mux u2(i1,i2,i,i,Op0,Op1,C);

endmodule


