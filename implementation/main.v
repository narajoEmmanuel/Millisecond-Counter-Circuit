`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2021 11:24:47 PM
// Design Name: 
// Module Name: main
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


module main(
    input CLK,Start,RST,
    output [7:0] Count 
    );
    wire [6:0] out_cont99;
    wire out_comp99;
    wire [16:0] out_contM;
    wire out_compM;
    wire Q;
    wire [9:0] BCD;
    
    D_FF starer_FF(CLK,(out_compM & out_comp99)|RST,Start,1,Q);
    contMilli contM(CLK,(RST|out_compM),Q,out_contM );
    comparador comp(CLK,RST,out_contM,out_compM);
    contadorFinal contF(CLK,(RST|(out_comp99 & out_compM)),out_compM ,out_cont99);
    comp99 compF(CLK,RST,out_cont99 ,out_comp99);
    convertidor conv(out_cont99,0,BCD);
    assign Count=BCD[7:0];
endmodule
