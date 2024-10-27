`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 17:49:52
// Design Name: 
// Module Name: sixteen_sipo_register_tb
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


module sixteen_sipo_register_tb();
    reg clk=0,in_out;
    reg inn;
    wire[0:15] out;
    
    sixteen_bit_SIPO_register dut(clk,in_out,inn,out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7],out[8],out[9],out[10],out[11],
out[12],out[13],out[14],out[15]);

always @(posedge clk)
#5 clk=~clk;

initial 
    in_out=0;



always @(posedge clk)
    inn=1;
    
initial
    #157 in_out=1;
        
        
initial
#200 $finish;
        
        


endmodule
