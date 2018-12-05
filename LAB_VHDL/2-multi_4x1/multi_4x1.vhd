library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY multi_4x1 IS
	PORT (p1, p2, p3, p4, escolha: IN std_logic_vector (1 downto 0);
			saida: OUT std_logic_vector (1 downto 0)
			);
END multi_4x1;

ARCHITECTURE multi OF multi_4x1 IS
	BEGIN
		PROCESS(p1, p2, p3, p4, escolha)
			BEGIN
				CASE escolha IS
					when "00" => saida <= p1;
					when "01" => saida <= p2;
					when "10" => saida <= p3;
					when "11" => saida <= p4;
					when others => saida <= "00";
				END CASE;
		END PROCESS;
END multi;