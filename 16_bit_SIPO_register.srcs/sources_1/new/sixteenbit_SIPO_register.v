`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 17:30:02
// Design Name: 
// Module Name: sixteenbit_SIPO_register
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


module sixteen_bit_SIPO_register(clk,in_out,inn,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,
out12,out13,out14,out15);

input clk,inn,in_out;                                   //in_out kab output aayega aur kab jayega ye control karta 0=in&1=out
output reg out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,
out12,out13,out14,out15;

reg[15:0] mem ;


always @(posedge clk)
    if(~in_out)
        begin
        mem=mem>>1;
        mem[15]=inn;
        end
    else
        begin
            out0=mem[0];
            out1=mem[1];
            out2=mem[2];
            out3=mem[3];
            out4=mem[4];
            out5=mem[5];
            out6=mem[6];
            out7=mem[7];
            out8=mem[8];
            out9=mem[9];
            out10=mem[10];
            out11=mem[11];
            out12=mem[12];
            out13=mem[13];
            out14=mem[14];
            out15=mem[15];
        end       
endmodule
