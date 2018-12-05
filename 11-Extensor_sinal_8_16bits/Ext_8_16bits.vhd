library	ieee;
use ieee.std_logic_1164.all;

entity Ext_8_16bits is
	port (
	
		a        : in  std_logic_vector( 7 downto 0);
		sinal_ex : out std_logic_vector(15 downto 0)
	);
end Ext_8_16bits;

architecture implements of Ext_8_16bits is 
begin 
		sinal_ex <= "00000000" & a;
	
end implements;