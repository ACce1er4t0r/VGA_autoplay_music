module vga_driver(
	clk,
	hs,vs,
	r,g,b,
	rgbin,dout
	);
	input clk;
	output hs,vs;
	output r,g,b;
	input rgbin;
	output[15:0] dout;
	reg[9:0] hcnt,vcnt;
	reg r,g,b;
	reg hs,vs;
	assign dout={vcnt[7:0],hcnt[7:0]};
	
	always @(posedge clk)
		if(hcnt<800)
			hcnt<=hcnt+1;
		else
			hcnt<={10{1'b0}};
	
	always @(posedge clk)
		if(hcnt==640+8)
			if(vcnt<525)
				vcnt<=vcnt+1;
			else
				vcnt<={10{1'b0}};
	
	always @(posedge clk)
		if((hcnt>=640+8+8)&(hcnt<640+8+8+96))
			hs<=1'b0;
		else
			hs<=1'b1;
			
	always @(vcnt)
		if((vcnt>=480+8+2)&(vcnt<480+8+2+2))
			vs<=1'b0;
		else
			vs<=1'b1;
	
	always @(posedge clk)
		if(hcnt<256&vcnt<256)
			begin
				r=rgbin;
				g=rgbin;
				b=rgbin;
			end
		else
			begin
				r=0;
				g=0;
				b=0;
			end
endmodule