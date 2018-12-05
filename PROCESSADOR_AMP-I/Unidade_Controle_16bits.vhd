library ieee;
use ieee.std_logic_1164.all;


entity Unidade_Controle_16bits is
port(
	clk			: 	in std_logic;
	opcode		:	in	std_logic_vector (3 downto 0);
	regDst		: 	out std_logic;
	ulaFont		:	out std_logic;
	memParaReg	:	out std_logic;
	escReg		:	out std_logic;
	lerMem		:	out std_logic;
	escMem		:	out std_logic;
	desvio		:	out std_logic;
	ulaOP			: 	out std_logic_vector (7 downto 0)
);
end entity Unidade_Controle_16bits;

architecture controle_16bits of Unidade_Controle_16bits is 

begin
	process(clk, opcode)
		begin
			if clk = '1' then	
				if opcode = "0000" then --soma
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00000000";
					
				elsif opcode = "0001" then --sub
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00000001";
					
				elsif opcode = "0010" then --mult
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00000010";
					
				elsif opcode = "0011" then --addf
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00000011";
					
				elsif opcode = "0100" then --subf
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00001000";
					
				elsif opcode = "0101" then --multf
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00010101";
					
				elsif opcode = "0110" then --or
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00000110";
			
				elsif opcode = "0111" then --AND
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00000111";
					
				elsif opcode = "1000" then --load
					regDst <= '0';
					ulaFont <= '1';		
					memParaReg <= '1';
					escReg <= '1';
					lerMem <= '1';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00001000";
				
				elsif opcode = "1001" then --store
					regDst <= '0';
					ulaFont <= '1';		
					memParaReg <= '1';
					escReg <= '1';
					lerMem <= '1';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00001001";
					
				elsif opcode = "1010" then --branch equal
					regDst <= '0';
					ulaFont <= '1';		
					memParaReg <= '1';
					escReg <= '1';
					lerMem <= '1';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00001010";
					
				elsif opcode = "1011" then --jump
					regDst <= '0';
					ulaFont <= '0';		
					memParaReg <= '1';
					escReg <= '0';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '1';
					ulaOP <= "00001011";
					
				elsif opcode = "1100" then --not
					regDst <= '1';
					ulaFont <= '0';		
					memParaReg <= '0';
					escReg <= '1';
					lerMem <= '0';
					escMem <= '0';
					desvio <= '0';
					ulaOP <= "00001100";
					
				end if;
			
			
			else
					regDst <= 'Z';
					ulaFont <= 'Z';		
					memParaReg <= 'Z';
					escReg <= 'Z';
					lerMem <= 'Z';
					escMem <= 'Z';
					desvio <= 'Z';
					ulaOP <= "ZZZZZZZZ";
			end if;
	end process;
end controle_16bits;