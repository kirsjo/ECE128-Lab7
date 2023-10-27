`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:44:00 PM
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(
    output Q,
    output QBar,
    input S,
    input R,
    input clk
    );
    wire rClk, sClk;
    
    and (rClk, R, clk);
    and (sClk, S, clk);
    
    SR_Latch uut(.S(sClk), .R(rClk), .Q(Q), .QBar(QBar));
endmodule
