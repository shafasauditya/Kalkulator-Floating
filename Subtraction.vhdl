---Subtractor sementara buat Division
Library Ieee;

ENTITY Subtraction Is
	PORT(A,B,B1 : IN BIT_Vector(9 DOWNTO 0);
		Sub : OUT BIT_Vector(9 DOWNTO 0));
		
		
END Subtraction;

ARCHITECTURE BoikotIsrael OF Subtraction Is
	signal carry : bit_vector(9 DOWNTO 0) ;
BEGIN
	FOR i IN 10 LOOP
		Sub <= A[i] xor B[i] xor B[i];
		B1[i+1] = ((NOT A[i]) And (NOT B[i]) And B1[i])) OR ((NOT A[i]) And (B[i]) And (NOT B1[i])) OR ((NOT A[i]) And (B[i]) And ( B1[i])) or (A[i] AND B[i] AND B1[i])
	END LOOP;
		
	
END BoikotIsrael;

	
