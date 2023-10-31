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
    
    wire [2:0] t;
    
    
    T_FF n1(.rstn(1'b1),.clk(clk), .t(1'b1), .q(t[0]));
    
    T_FF n2(.rstn(1'b1),.clk(clk), .t(~t[0]), .q(t[1]));
   
    T_FF n3(.rstn(1'b1),.clk(clk), .t(~t[0]&~t[1]), .q(t[2]));
    
    assign Q1 = ~t[0];
    assign Q2 = ~t[1];
    assign Q3 = ~t[2];
    
endmodule
