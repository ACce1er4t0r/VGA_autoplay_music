module choose2_1(
	EN,
	badapple,sakura,
	HS1,VS1,HS2,VS2,
	SPK1,SPK2,
	R1,R2,G1,G2,B1,B2,
	SPK,R,G,B,HS,VS
	);
	input EN,badapple,sakura;
	input HS1,VS1,HS2,VS2;
	input SPK1,SPK2;
	input R1,R2,B1,B2;
	input G1,G2;
	output SPK;
	output HS,VS;
	output R,B;
	output G;
	reg SPK;
	reg HS,VS;
	reg R,B;
	reg G;
	always @ (
		EN,
		badapple,sakura,
		HS1,VS1,HS2,VS2,
		SPK1,SPK2,
		R1,R2,G1,G2,B1,B2
		)
		if(EN==1)
			begin
				SPK=1;
				R=0;
				G=0;
				B=0;
				VS=0;
				HS=0;
			end
		else
			if({sakura,badapple}==2'B10)
				begin
					SPK=SPK1;
					R=R1;
					G=G1;
					B=B1;
					VS=VS1;
					HS=HS1;
				end
			else
				if({sakura,badapple}==2'B01)
					begin
						SPK=SPK2;
						R=R2;
						G=G2;
						B=B2;
						VS=VS2;
						HS=HS2;
					end
				else
					begin
						SPK=1;
						R=0;
						G=0;
						B=0;
						VS=0;
						HS=0;
					end
endmodule