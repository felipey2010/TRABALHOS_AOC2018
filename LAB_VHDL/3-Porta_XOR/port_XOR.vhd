library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY PORT_XOR IS
	PORT (A, B: IN STD_LOGIC;
		S: OUT STD_LOGIC
		);
END PORT_XOR;

ARCHITECTURE PORTa_XOR OF PORT_XOR IS
	COMPONENT mNot IS
		PORT ( A:in std_logic;
			s: out std_logic
			);
	END COMPONENT;

	COMPONENT mAnd IS
		PORT(A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC
			);
	END COMPONENT;

	COMPONENT mOr IS
		PORT(A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL GR1, GR2, ANR, BNR: STD_LOGIC;
		BEGIN
			AN: mNot PORT MAP(A, ANR);
			BN: mNot PORT MAP(B, BNR);
			G1: mAnd PORT MAP(ANR, B, GR1);
			G2: mAnd PORT MAP(A, BNR, GR2);
			G3: mOr PORT MAP(GR1,GR2, S);
END PORTa_XOR;