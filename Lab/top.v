`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 10:08:20 PM
// Design Name: 
// Module Name: top
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


module top(S1_RS1,S1_RS2,S1_RD1,S1_RD2,S1_IMM,S1_DataSource,S1_ALUOP,S1_WS,S1_WE,clk,reset,InstrIn,ALUOUT); 
    
    input [31:0]InstrIn; 
    input clk,reset; 
    output reg [4:0]S1_RS1; 
    output reg [4:0]S1_RS2; 
    output reg [4:0]S1_RD1; 
    output reg [4:0]S1_RD2; 
    output reg [4:0]S1_WS; 
    output reg [15:0]S1_IMM; 
    output reg S1_DataSource; 
    output reg [2:0]S1_ALUOP; 
    output reg S1_WE; 
    output reg [31:0]ALUOUT; 
    
    wire [4:0]w1,w2,w4; 
    wire [31:0]w3; 
    wire w5; 
    
    nbit_register_file(ALUOUT,S1_RD1,S1_RD2,S1_RS1,S1_RS2,S1_WS,S1_WE,reset,clk);     

endmodule
