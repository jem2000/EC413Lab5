`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 07:59:12 PM
// Design Name: 
// Module Name: two_one_mux
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


module two_one_mux(D0,D1,S,Y); 

input wire [31:0]D0;
input wire [15:0]D1; 
input wire S; 
output reg [31:0]Y; 

always@(D0 or D1 or S) 
begin 

if(S)
Y={ {16{D1[15]}}, D1 }; 
else 
Y=D0; 

end 

endmodule
