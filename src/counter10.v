`timescale 1ns / 1ps
module counter10(
   input nCR,EN,CP_1Hz,[3:0] newOnes, [3:0] Status,
   output reg[3:0] Q
   );
   always @(posedge CP_1Hz or negedge nCR)
   begin 
     if(~nCR) Q<=4'b0000;
     else if (Status == 4'd4) begin
        Q <= newOnes;
     end else if(~EN) Q<=Q;
     else if(Q==4'b1001) Q<=4'b0000;
     else Q<=Q+1'b1;
   end
endmodule