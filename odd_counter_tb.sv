`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2023 11:44:41 PM
// Design Name: 
// Module Name: odd_counter_tb
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


module odd_counter_tb();

      logic clk;
      logic reset;
    
      logic [7:0] count;
    
      odd_counter dut (.*);
    
      always 
      begin
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
      end
    
      initial 
      begin
        reset <= 1'b1;
        @(posedge clk);
        @(posedge clk);
        reset <= 1'b0;
        for (int i=0; i<128; i++)
          @(posedge clk);
        $finish();
      end
endmodule
