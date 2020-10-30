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


module top(clk,reset,InstrIn,Output); 
    
    input [31:0]InstrIn; 
    input clk,reset;  
    
    output [31:0]Output; 
    
    wire [4:0]w1,w2; 
    wire [15:0]w3;  
    wire w4; 
    wire [2:0]w5; 
    wire [4:0]w6; 
    wire w7; 
    
    wire [31:0]w8,w9; 
    
    wire [31:0]w10,w11; 
    wire [15:0]w12; 
    wire w13; 
    wire [2:0]w14; 
    wire [4:0]w15; 
    wire w16; 
    
    wire [31:0]w17; 
    
    wire [31:0]w18; 
    
    wire [31:0]w19; 
    wire [4:0]w20; 
    wire w21; 
    
    stage_one u1(.S1_RS1(w1),.S1_RS2(w2),.S1_IMM(w3),.S1_DataSource(w4),.S1_ALUOP(w5),.S1_WS(w6),.S1_WE(w7),.clk(clk),.reset(reset),.InstrIn(InstrIn));   
    nbit_register_file u2(.WriteData(w19),.ReadData1(w8),.ReadData2(w9),.ReadSelect1(w1),.ReadSelect2(w2),.WriteSelect(w6),.WriteEnable(w21),.Reset(reset),.Clk(clk)); 
    stage_two u3(.ReadData1(w8),.ReadData2(w9),.IMM(w3),.DataSource(w4),.ALUOP(w5),.WriteSelect(w6),.WriteEnable(w7),.S2_RD1(w10),.S2_RD2(w11),.S2_IMM(w12),.S2_DataSource(w13),.S2_ALUOP(w14),.S2_WS(w15),.S2_WE(w16),.clk(clk),.reset(reset)); 
    two_one_mux u4(.D0(w11),.D1(w12),.Y(w17),.S(w13)); 
    Ideal_ALU u5(.R1(w18),.R2(w10),.R3(w17),.ALUOp(w14)); 
    stage_three u6(.ALUOUT(w18),.WriteSelect(w15),.WriteEnable(w16),.S3_ALUOUT(w19),.S3_WS(w20),.S3_WE(w21),.clk(clk),.reset(reset)); 
   
    assign Output = w19; 
        
endmodule
