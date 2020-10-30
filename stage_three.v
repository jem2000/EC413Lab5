`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 08:10:24 PM
// Design Name: 
// Module Name: stage_three
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


module stage_three(ALUOUT,WriteSelect,WriteEnable,S3_ALUOUT,S3_WS,S3_WE,clk,reset); 
    
    input [31:0]ALUOUT; 
    input [4:0]WriteSelect; 
    input WriteEnable; 
    input clk,reset; 
    
    output reg [31:0]S3_ALUOUT; 
    output reg [4:0]S3_WS; 
    output reg S3_WE; 
    
    always@(posedge clk) 
        begin 
        if(reset) 
            begin 
                S3_ALUOUT <= 32'd0; 
                S3_WS <= 5'd0; 
                S3_WE <= 1'b0; 
            end 
        else 
            begin 
                S3_ALUOUT <= ALUOUT; 
                S3_WS <= WriteSelect; 
                S3_WE <= WriteEnable; 
            end 
        end 
    
endmodule
