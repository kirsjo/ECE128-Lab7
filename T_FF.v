`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:44:00 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    input clk,
    input rstn,
    input t,
    output reg q
    );
    always @ (posedge clk) begin
        if(!rstn)
            q=0;
        else if (t)begin
            if (q==0)
                q=1;
            else if (q==1)
                q=0;
            else
                q=1;
        end
        else begin
            if (q==1)
                q=1;
            else if(q==0)
                q=0;
            else
                q=0;
       end
    end
endmodule
