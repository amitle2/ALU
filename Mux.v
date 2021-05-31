`timescale 100ps/100ps

module mux2_1 (s,i,o);
 input s;
 input [1:0]i;
 output o;
 assign o = s ? i[1] : i[0];
endmodule

module mux4_1 (s,i,o);
 input [1:0]s;
 input [3:0]i;
 output  reg o;

 always@(s,i)
   begin
    case (s)
     2'b00 : o = i[0];
     2'b01 : o = i[1];
     2'b10 : o = i[2];
     2'b11 : o = i[3];
     default : o = 0;
    endcase
   end
endmodule
