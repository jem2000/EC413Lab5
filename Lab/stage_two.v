`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 10:25:30 PM
// Design Name: 
// Module Name: stage_two
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


module stage_two(ReadData1,ReadData2,IMM,DataSource,ALUOP,WriteSelect,WriteEnable,S2_RD1,S2_RD2,S2_IMM,S2_DataSource,S2_ALUOP,S2_WS,S2_WE,clk,reset); 
    input [31:0]ReadData1,ReadData2; 
    input [15:0]IMM; 
    input DataSource; 
    input [2:0]ALUOP; 
    input [4:0]WriteSelect; 
    input WriteEnable; 
     
    input clk,reset; 
    output reg [31:0]S2_RD1; 
    output reg [31:0]S2_RD2; 
    output reg [4:0]S2_WS; 
    output reg [15:0]S2_IMM; 
    output reg S2_DataSource; 
    output reg [2:0]S2_ALUOP; 
    output reg S2_WE; 
    
    always@(posedge clk) 
        begin 
        if(reset) 
            begin 
                S2_RD1 <= 32'd0; 
                S2_RD2 <= 32'd0; 
                S2_WS <= 5'd0; 
                S2_IMM <= 15'd0; 
                S2_DataSource <= 1'b0; 
                S2_ALUOP <= 3'b0; 
                S2_WE <= 1'b0; 
            end 
        else 
            begin 
                S2_RD1 <= ReadData1; 
                S2_RD2 <= ReadData2; 
                S2_WS <= WriteSelect; 
                S2_IMM <= IMM; 
                S2_DataSource <= DataSource; 
                S2_ALUOP <= ALUOP; 
                S2_WE <= WriteEnable; 
            end 
        end        
endmodule
