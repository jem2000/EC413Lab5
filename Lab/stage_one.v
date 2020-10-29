`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 08:45:45 PM
// Design Name: 
// Module Name: stage_one
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


module stage_one(S1_RS1,S1_RS2,S1_IMM,S1_DataSource,S1_ALUOP,S1_WS,S1_WE,clk,reset,InstrIn); 
    input [31:0]InstrIn; 
    input clk,reset; 
    output reg [4:0]S1_RS1; 
    output reg [4:0]S1_RS2; 
    output reg [4:0]S1_WS; 
    output reg [15:0]S1_IMM; 
    output reg S1_DataSource; 
    output reg [2:0]S1_ALUOP; 
    output reg S1_WE; 
    
    always@(posedge clk) 
        begin 
        if(reset) 
            begin 
                S1_RS1 <= 5'd0; 
                S1_RS2 <= 5'd0; 
                S1_WS <= 5'd0; 
                S1_IMM <= 15'd0; 
                S1_DataSource <= 1'b0; 
                S1_ALUOP <= 3'b0; 
                S1_WE <= 1'b0; 
            end 
        else 
            begin 
                S1_RS1 <= InstrIn[20:15]; 
                S1_RS2 <= InstrIn[15:11]; 
                S1_WS <= InstrIn[25:21]; 
                S1_IMM <= InstrIn[15:0]; 
                S1_DataSource <= InstrIn[29]; 
                S1_ALUOP <= InstrIn[28:26]; 
                S1_WE <= 1'b1; 
            end 
        end        
endmodule
