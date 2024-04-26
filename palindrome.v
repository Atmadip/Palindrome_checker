`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 07:16:46 PM
// Design Name: 
// Module Name: palindrome
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


module palindrome(data_in, detection);

parameter Data_width = 8;
input [Data_width-1:0] data_in;
output detection;
reg [(Data_width/2)-1:0] val_compare;
integer i;
always @ (*) begin
    for(i = 0; i<(Data_width/2); i=i+1) begin
      val_compare[i] = ~(data_in[i]^data_in[Data_width-i-1]);  
end
end    

assign detection = &(val_compare);
        
endmodule
