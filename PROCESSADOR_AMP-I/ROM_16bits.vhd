library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ROM_16bits is
	port(
	address: in std_logic_vector(15 downto 0);
	data: out std_logic_vector(15 downto 0)
);
end ROM_16bits;

architecture behavior of ROM_16bits is
	type MEM is array (0 to 15) of std_logic_vector (3 downto 0);
constant ROM: MEM := (       0 => "0000", -- add
									  1 => "0001", -- Sub
									  2 => "0010", -- Mult
									  3 => "0011", -- Addf
									  4 => "0100", -- Subf
									  5 => "0101", -- Multf
									  6 => "0110", -- Or
									  7 => "0111", -- And
									  8 => "1000", -- Load
									  9 => "1001", -- Store
									  10 => "1010", -- Beq
									  11 => "1011", -- Jump
begin
	process (address)
	begin
     case address is
       when "0000000000000000" => data <= ROM(0);
       when "0000000000000001" => data <= ROM(1);
       when "0000000000000010" => data <= ROM(2);
       when "0000000000000011" => data <= ROM(3);
       when "0000000000000100" => data <= ROM(4);
       when "0000000000000101" => data <= ROM(5);
       when "0000000000000110" => data <= ROM(6);
       when "0000000000000111" => data <= ROM(7);
       when "0000000000001000" => data <= ROM(8);
       when "0000000000001001" => data <= ROM(9);
       when "0000000000001010" => data <= ROM(10);
       when "0000000000001011" => data <= ROM(11);
       when others => data <= "ZZZZZZZZZZZZZZZZ";
	 end case;
  end process;
end behavior;