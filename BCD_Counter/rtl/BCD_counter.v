module BCD_counter(Clk,Cin,Rst_n,Cout,q);

input Clk;//计数器基准时钟
input Cin;//计数器进位输入
input Rst_n;//系统复位

output Cout;//计数器进位输出
output [3:0] q;//计数值输出
reg [3:0] cnt;
always@(posedge Clk or negedge Rst_n)
if(Rst_n == 1'b0)
cnt <= 4'd0;
else if(Cin==1'b1)begin
if(cnt==4'd9)
cnt<=4'd0;
else 
cnt <=cnt +1'b1;
end
else 
cnt <=cnt;

/*always@(posedge Clk or negedge Rst_n)
if(Rst_n == 1'b0)
Cout<=1'b0;
else if(Cin==1'b1 &&cnt==4'd9)
Cout<=1'b1;
else Cout<=1'b0;
*/
assign Cout = (Cin == 1'b1 && cnt == 4'd9);
assign q = cnt;
endmodule