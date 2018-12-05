library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY mNot IS
	port ( A:IN std_logic;
		S: OUT std_logic);
END mNot;

ARCHITECTURE portNot OF mNot IS
	BEGIN
		S <= not A;
END portNot;