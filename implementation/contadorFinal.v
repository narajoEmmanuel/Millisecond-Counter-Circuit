`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2021 11:07:52 PM
// Design Name: 
// Module Name: contadorFinal
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


module contadorFinal(
    input CLK,RST,EN,
    output [6:0] out
    );
   
   parameter COUNTER_WIDTH = 7;

   reg [COUNTER_WIDTH-1:0] count = {COUNTER_WIDTH{1'b0}};
   
   always @(posedge CLK,posedge RST)
      if (RST)
         count <= {COUNTER_WIDTH{1'b0}};
      else if (EN)
         count <= count + 1'b1;
   assign out=count;
endmodule