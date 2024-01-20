`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2021 11:12:48 PM
// Design Name: 
// Module Name: comparador
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


module comparador(
    input CLK,RST,
    input [16:0] IN,
    output reg OUT
    );
    

   always @(posedge CLK,posedge RST)
      if (RST)
         OUT <=0;
      else if (IN == 99998)
         OUT <= 1'b1;
      else
         OUT <= 1'b0;
endmodule
