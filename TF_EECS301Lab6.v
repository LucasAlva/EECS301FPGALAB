`timescale 1 ns / 1 ps
// Lucas Alva-Ganoza, Adam Cordingley, Zijian Xu
// EECS-301 Fall 2018

module EECS301Lab6_tb();

	reg clk, en, x, y, cin; //complete;
	wire cout, sum;
	
	//reg [4:0] i;
	
	
	/*always // no sensitivity list, always executes 
		begin
			clk = 0; #5;  
			clk = 1; #5;  // 10ns clk period
		end*/
		
	
	EECS301Lab6 dut(
		.En(en),
		.X(x),
		.Y(y),
		.Kin(cin),
		.Kout(cout),
		.U(sum)
	);
	
	initial begin
		//i 	= 0; 
		en <= 1; x <= 0;y <= 0; cin <= 0; #10;
		x <= 0;y <= 0; cin <= 1; #10;
		x <= 0;y <= 1; cin <= 0; #10;
		x <= 0;y <= 1; cin <= 1; #10;
		x <= 1;y <= 0; cin <= 0; #10;
		x <= 1;y <= 0; cin <= 1; #10;
		x <= 1;y <= 1; cin <= 0; #10;
		x <= 1;y <= 1; cin <= 1; #10;
		en <= 0; x <= 0;y <= 0; cin <= 0; #10;
		x <= 0;y <= 0; cin <= 1; #10;
		x <= 0;y <= 1; cin <= 0; #10;
		x <= 0;y <= 1; cin <= 1; #10;
		x <= 1;y <= 0; cin <= 0; #10;
		x <= 1;y <= 0; cin <= 1; #10;
		x <= 1;y <= 1; cin <= 0; #10;
		x <= 1;y <= 1; cin <= 1; #10;
		//cout = 0;
		//sum = 0;
		//complete = 0;
		
	end
	
	/*always @(posedge clk) begin
		if(complete == 0) begin
			i = i+1;
			
			if(i >= 16) begin
				complete = 1;
			end
		
		end
	end */
		
	
	

endmodule
