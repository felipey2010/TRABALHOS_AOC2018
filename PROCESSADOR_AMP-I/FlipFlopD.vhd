Library ieee;
use ieee.std_logic_1164.all;
Entity FlipFlopD is
Port(
D, Clock: 	IN			bit;
Q, QNOT:		buffer	bit
);
End FlipFlopD;
Architecture behavior of FlipFlopD is
	--signal aux1, aux2:STD_LOGIC;

BEGIN
	Q 		<= (Clock nand D) nand QNOT;
	QNOT 	<= ((not D) nand Clock) nand Q;
END behavior;