module INX2CODE (INX, F_CODE);
	input[3:0] INX;
	output[10:0] F_CODE;
	reg[10:0] F_CODE;
	always @(INX)
	case (INX)
	  0 : F_CODE <= 11'H7FF;
	  1 : F_CODE <= 11'H305;
	  2 : F_CODE <= 11'H390;
	  3 : F_CODE <= 11'H40C;
	  4 : F_CODE <= 11'H45C;
	  5 : F_CODE <= 11'H4AD;
	  6 : F_CODE <= 11'H50A;
	  7 : F_CODE <= 11'H55C;
	  8 : F_CODE <= 11'H582;
	  9 : F_CODE <= 11'H5C8;
	 10 : F_CODE <= 11'H606;
	 11 : F_CODE <= 11'H640;
	 12 : F_CODE <= 11'H656;
	 13 : F_CODE <= 11'H684;
	 14 : F_CODE <= 11'H69A;
	 15 : F_CODE <= 11'H6C0;
	default : F_CODE <= 11'H6C0;
		endcase
endmodule