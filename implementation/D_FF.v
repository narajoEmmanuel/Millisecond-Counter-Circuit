`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2021 12:06:11 AM
// Design Name: 
// Module Name: D_FF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(
    input CLK,RST,EN,D,
    output reg out
    );
       always @(posedge CLK,posedge RST)
      if (RST) begin
         out <= 1'b0;
      end else if (EN) begin
         out <= D;
      end			
endmodule
