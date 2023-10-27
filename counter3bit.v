`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:44:56 PM
// Design Name: 
// Module Name: counter3bit
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


module counter3bit(
    input clk,
    output Q1,  Q2, Q3
    );
    
    
    T_FF n1(.rstn(1'b1),.clk(clk), .t(1'b1), .q(Q1));
    T_FF n2(.rstn(1'b1),.clk(clk), .t(~Q1), .q(Q2));
    T_FF n3(.rstn(1'b1),.clk(clk), .t(~Q1 & ~Q2), .q(Q3));
    
endmodule
