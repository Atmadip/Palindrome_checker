`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2024 06:44:48 PM
// Design Name: 
// Module Name: palindrome_tb
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


module palindrome_tb;
parameter Data_width = 8;
reg [Data_width-1:0] data_in;
wire detection;

palindrome UUT(.data_in(data_in), .detection(detection));

initial begin

data_in = 8'b 10100101;
#20;
data_in = 8'b 11110111;
#20;
data_in = 8'b 11111111;
#20;
$finish;


end
endmodule
