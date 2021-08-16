`timescale 1ns/100ps

module ADDER_SUBTRACTOR(A, B, M, S, C,V);
 
 output [3:0] S;
 output C,V;
 input [3:0]    A, B;
 input    M;
 
 wire C1,C2,C3;
 wire B0,B1,B2,B3,M0;
 
 assign M0 = ~M;

 xor(B0, B[0], M0);
 xor(B1, B[1], M0);
 xor(B2, B[2], M0);
 xor(B3, B[3], M0);
 xor(V, C3,C2);
 
 FULL_ADDER fa0(A[0], B0, M0, S[0], C1);
 FULL_ADDER fa1(A[1], B1, C1, S[1], C2);
 FULL_ADDER fa2(A[2], B2, C2, S[2], C3);
 FULL_ADDER fa3(A[3], B3, C3, S[3], C);
 
endmodule

