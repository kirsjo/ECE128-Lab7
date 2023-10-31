`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 03:13:09 PM
// Design Name: 
// Module Name: clkDiv
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


module clkDiv(
    input clkIn,
    output clkOut
    );
    
    reg clkOut;
    
    reg [2:0] counter = 0;
    parameter DIVISOR = 1;
    reg first = 1'b1;
    
    always @ (posedge clkIn)
    begin
        counter =  counter + 1;
        if(first) begin
            clkOut = 1'b0;
            first = 1'b0;
        end
        if (counter>=DIVISOR)begin
            clkOut =~clkOut;
            counter = 0;
        end
    end
    
    
endmodule
