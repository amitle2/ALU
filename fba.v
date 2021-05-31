  `timescale 1ns/100ps

module FourBitAddSub(S, C, V, A, B, Op);
   input [3:0] 	A;
   input [3:0] 	B;
   input 	Op;  // 0 = A-B ; 1 = A-B
   output [3:0] S;   //Result
   output 	C;   //carry bit
   output 	V;   //overflow bit

   
   wire 	C0,C1,C2,C3; // The carry out wires
   wire 	xor0,xor1,xor2,xor3; // B xor Op
    
   xor(xor0, B[0], Op);
   xor(xor1, B[1], Op);
   xor(xor2, B[2], Op);
   xor(xor3, B[3], Op);

   xor(C, C3, Op);
   xor(V, C3, C2);
   
   full_adder fa0(S[0], C0, A[0], xor0, Op);
   full_adder fa1(S[1], C1, A[1], xor1, C0);
   full_adder fa2(S[2], C2, A[2], xor2, C1);
   full_adder fa3(S[3], C3, A[3], xor3, C2);
endmodule

