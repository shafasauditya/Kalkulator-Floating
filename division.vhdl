---Mantisa Division(Blom kelar tunggu Subtractor)
Library Ieee;

ENTITY division Is
	PORT(A,B,Q : IN BIT_Vector(9 DOWNTO 0);
		Qout : OUT BIT_Vector(19 DOWNTO 0));
		
		
END division;

ARCHITECTURE Freepalestine OF division Is
	signal Temp : BIT_Vector(9 DOWNTO 0);
BEGIN
	
	FOR i IN 9 LOOP
		Qout <= A & Q ;
		Qout <= Qout[18 DOWNTO 0] & '0';
		IF A > B
			Qout[0] <= 1;
			A <= Qout[19 DOWNTO 10]-B;
		ELSE
			Qout[0] <= 0;
		END IF;
		A <= Qout[19 DOWNTO 10] 
		Q <= Qout[9 DOWNTO 0]
			
			
	END LOOP;
		
	
END Freepalestine;

	
