library ieee;
use ieee.std_logic_1164.all;

entity somador_16bits is
	port(
		cin : in std_logic;
		a,b : in std_logic_vector(15 downto 0);
		cout : out std_logic;
		s : out std_logic_vector(15 downto 0)
	);
end somador_16bits;

architecture somador of somador_16bits is
begin
	process(a,b,cin)
		variable soma: std_logic_vector(15 downto 0);
		variable c: std_logic;
		begin
			c := cin;
			for i in 0 to 15 loop
			soma(i) := a(i) xor b(i) xor c;
			c := (a(i) and b(i)) or ((a(i) xor b(i)) and c);
		end loop;
		cout <= c;
		s <= soma;
	end process;
end somador;