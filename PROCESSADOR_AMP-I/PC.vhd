library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PC is
port(CLOCK: in std_logic;
	  AtivaPC: in std_logic;
	  entradaPC : in std_logic_vector(15 downto 0);
	  saidaPC : out std_logic_vector(15 downto 0)
		);
end PC;
	
architecture behavior of PC is

begin
	process(clock)
	 variable last_instruction: std_logic_vector(15 downto 0);
	 variable next_instruction: std_logic_vector(15 downto 0);
	 VARIABLE cont: STD_LOGIC;
	begin
		if(CLOCK='1' and CLOCK'EVENT)then
			if (AtivaPC = '1') then
				FOR i IN 0 to 15 LOOP
					next_instruction(i) := ((entradaPC(i) xor last_instruction(i)) xor cont);
					cont := (entradaPC(i) and last_instruction(i)) or ((entradaPC(i) xor last_instruction(i)) and cont);
				END LOOP;
				saidaPc <= next_instruction;
				last_instruction := next_instruction;
				else 
				saidaPC <= entradaPC;
			end if;
		end if;
	end process;
end behavior;