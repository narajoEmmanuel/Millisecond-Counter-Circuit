`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2021 12:17:39 AM
// Design Name: 
// Module Name: comp99
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


module comp99(
    input CLK,RST,
    input [6:0] IN,
    output reg OUT
    );
    

   always @(posedge CLK,posedge RST)
      if (RST)
         OUT <=0;
      else if (IN == 100)
         OUT <= 1'b1;
      else
         OUT <= 1'b0;
endmodule
