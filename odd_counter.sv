`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2023 11:41:33 PM
// Design Name: 
// Module Name: odd_counter
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


module odd_counter(
  input     wire        clk,
  input     wire        reset,

  output    logic[7:0]  count);


  logic [7:0] nxt_count;

  always_ff @(posedge clk or posedge reset)
    if (reset)
      count <= 8'h1;
    else
      count <= nxt_count;

  assign nxt_count = count + 8'h2;

endmodule
