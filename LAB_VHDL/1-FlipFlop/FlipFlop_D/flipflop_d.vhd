library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY flipflop_d IS
	PORT (
		clock, v: IN std_logic;
		saida: OUT std_logic
	);
END flipflop_d;

ARCHITECTURE flop OF flipflop_d IS
	BEGIN
		PROCESS(clock)
			BEGIN
				if(clock = '1') then
					saida <= v;
				END if;
		END PROCESS;
END flop;