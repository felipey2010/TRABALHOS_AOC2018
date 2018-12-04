library IEEE;
use IEEE.std_logic_1164.all;

entity And16 is
port(
  a: in std_logic_vector(15 downto 0);
  b: in std_logic_vector(15 downto 0);
  q: out std_logic_vector(15 downto 0));
end And16;

architecture behavior of And16 is
begin
  q <= a and b;
end behavior;