`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 09:23:31
// Design Name: 
// Module Name: top_adder
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


module top_adder(
    input [3:0] InA,
    input [3:0] InB,
    output [4:0] OutSum
    );
    wire Carry1, Carry2, Carry3;
    
    full_adder_1bit in0(.FA1_InA(InA[0]),.FA1_InB(InB[0]),.FA1_InC(1'b0),.FA1_OutSum(OutSum[0]),.FA1_OutC(Carry1));
    full_adder_1bit in1(.FA1_InA(InA[1]),.FA1_InB(InB[1]),.FA1_InC(Carry1),.FA1_OutSum(OutSum[1]),.FA1_OutC(Carry2));
    full_adder_1bit in2(.FA1_InA(InA[2]),.FA1_InB(InB[2]),.FA1_InC(Carry2),.FA1_OutSum(OutSum[2]),.FA1_OutC(Carry3));
    full_adder_1bit in3(.FA1_InA(InA[3]),.FA1_InB(InB[3]),.FA1_InC(Carry3),.FA1_OutSum(OutSum[3]),.FA1_OutC(OutSum[4]));
    
    
endmodule
