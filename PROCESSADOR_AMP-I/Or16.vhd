library IEEE;
use IEEE.std_logic_1164.all;

entity Or16 is
port(
  a: in std_logic_vector(15 downto 0);
  b: in std_logic_vector(15 downto 0);
  q: out std_logic_vector(15 downto 0));
end Or16;

architecture behavior of Or16 is
begin
  q <= a or b;
end behavior;