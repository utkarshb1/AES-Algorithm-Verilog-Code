`timescale 1ns / 1ps

module AES_TB();

	// Inputs
	reg clk;
	reg [7:0] RAM [0:6999];
	reg [127:0] d;
	integer outfile1;
	wire [127:0] k1, k2,k3,k4,k5,k6,k7,k8,k9,k10;
	// Outputs
	wire [7:0] finalout;
	// Instantiate the Unit Under Test (UUT)
	AES_TOP uut (
		.clk(clk), 
		.fout(finalout),
		.d(d),
		.k1(k1),
		.k2(k2),
		.k3(k3),
		.k4(k4),
		.k5(k5),
		.k6(k6),
		.k7(k7),
		.k8(k8),
		.k9(k9),
		.k10(k10)
	);

		initial
		$readmemb("test11.txt", RAM);
		integer i;
		initial begin
		clk = 0;
		outfile1 = $fopen("out.txt","w");
		for(i=0;i<7000;i=i+1)
		begin
		#10;
		$display ("RAM[%b]=%d",i,RAM[i]);
		#20;
		d = RAM[i];
//		#20;
		$fdisplay(outfile1,"%d",finalout);
		end
		$fclose(outfile1);
		end         
endmodule


//	initial begin
//		// Initialize Inputs
//		clk = 0;
//	end






//		initial begin 
//		#10;
//		outfile1 = $fopen("out.txt","w");
//		for (i = 0; i < 101; i = i +1) begin
//		#205;
//        $fdisplay(outfile1,"%h",finalout);  //write as decimal
//      end
//		$fclose(outfile1);
//      end
 
//	initial begin
//		// Initialize Inputs
//		key = 128'h b9cef3df1e2157eeaf1f997b124c8cb4;
//
//		// Wait 100 ns for global reset to finish
//		#100;
//        
//		// Add stimulus here
//
//	end
//	
//		initial
//		$readmemb("test3.txt", RAM);
//		integer i;
//		initial begin for(i=0;i<30;i=i+1)             
//		$display ("RAM[%b]=%h",i,RAM[i]); 
//		end
//    