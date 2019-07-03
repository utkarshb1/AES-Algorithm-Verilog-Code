`timescale 1ns / 1ps

module AES_TOP(clk,fout,d,k1, k2,k3,k4,k5,k6,k7,k8,k9,k10);
    input clk;
	 input [127:0] d;
//	 input [7:0] RAM [0:28];
    output [7:0] fout;
	 output wire [127:0] k1, k2,k3,k4,k5,k6,k7,k8,k9,k10;
wire [127:0] l1,l2,l3,l4,l5,l6,l7,l8,l9,l10;
wire [127:0] tempout;
//wire [7:0] RAM [0:28];

aescipher u1(.clk(clk),.datain(d),.key(128'h b9cef3df1e2157eeaf1f997b124c8cb4),.dataout(tempout),.l1(l1),.l2(l2),.l3(l3),.l4(l4),.l5(l5),.l6(l6),.l7(l7),.l8(l8),.l9(l9),.l10(l10));
assign fout = tempout[127:120];
assign k1 = l1;
assign k2 = l2;
assign k3 = l3;
assign k4 = l4;
assign k5 = l5;
assign k6 = l6;
assign k7 = l7;
assign k8 = l8;
assign k9 = l9;
assign k10 = l10;

endmodule
