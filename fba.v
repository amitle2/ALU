`timescale 1ns/100ps

module FourBitAddSub(A, B, M, S, C,V);

 input [3:0] A, B;
 input M;              // 0 = A-B ; 1 = A-B
 output [3:0] S;       //Result
 output C,V;           //C=carry bit, V=overflow bit

 wire C1,C2,C3;        // The carry out wires
 wire B0,B1,B2,B3,M0;  // B xor M

 assign M0 = ~M;

 xor(B0, B[0], M0);
 xor(B1, B[1], M0);
 xor(B2, B[2], M0);
 xor(B3, B[3], M0);
 xor(V, C3,C2);

 full_adder fa0(A[0], B0, M0, S[0], C1);
 full_adder fa1(A[1], B1, C1, S[1], C2);
 full_adder fa2(A[2], B2, C2, S[2], C3);
 full_adder fa3(A[3], B3, C3, S[3], C);

endmodule

