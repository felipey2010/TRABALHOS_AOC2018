library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY mOr IS
	PORT(
			A, B: IN STD_LOGIC;
			R: OUT STD_LOGIC
		);
END mOr;

ARCHITECTURE portOr OF mOr IS
BEGIN
		R <= (A OR B);
END portOr;