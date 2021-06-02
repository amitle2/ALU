`timescale 100ps/100ps

///  4bit alu
///  a[4:0] b[4:0]
///  00 A(nand)B
///  01 A(nor)B
///  10 a+b
///  11 a-b

module alu_4bit (a, b, s0, s1, c, carry);
input [3:0]a;
input [3:0]b;
input s0;
input s1;
output [3:0]c;
output carry;


endmodule
