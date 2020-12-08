module BCD_Counter_top(Clk,Cin,Rst_n,Cout,q);

input Clk;//计数器基准时钟
input Cin;//计数器进位输入
input Rst_n;//系统复位

output Cout;//计数器进位输出
output [11:0] q;//计数值输出
wire [3:0]q0,q1,q2;

assign q = {q2,q1,q0};
reg [3:0] cnt;
wire Cout0,Cout1;
BCD_counter bcd_counter0(.Clk(Clk),.Cin(Cin),.Rst_n(Rst_n),.Cout(Cout0),.q(q0)); 

BCD_counter bcd_counter1(.Clk(Clk),.Cin(Cout0),.Rst_n(Rst_n),.Cout(Cout1),.q(q1));

BCD_counter bcd_counter2(.Clk(Clk),.Cin(Cout1),.Rst_n(Rst_n),.Cout(Cout),.q(q2));


endmodule