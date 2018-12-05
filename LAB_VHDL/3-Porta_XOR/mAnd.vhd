library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY mAnd IS
	PORT(
			A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC
		);
END mAnd;

ARCHITECTURE portAnd OF mAnd IS
BEGIN
		R <= (A AND B);
END portAnd;