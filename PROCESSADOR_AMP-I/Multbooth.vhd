library ieee; 
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity Multbooth is
    generic(
        nr_of_bits : positive := 16
        );
    port(
        clk : in  std_logic;
        A   : in  integer;
        B   : in  integer;
        zhi : out std_logic_vector(nr_of_bits-1 downto 0);
        zlo : out std_logic_vector(nr_of_bits-1 downto 0)
        );
end entity Multbooth;


architecture behavior of Multbooth is
    signal M : signed((2*nr_of_bits) downto 0) := (others => '0');
    signal S : signed((2*nr_of_bits) downto 0) := (others => '0');
    signal P : signed((2*nr_of_bits) downto 0) := (others => '0');

    signal index : natural := 0;
begin
-- check the last two bits and perform appropriate operation and shift
    clk_booth : process(clk)
        variable P_temp : signed(P'range);
    begin
        if rising_edge(clk) then
            if index = 0 then
                M((2*nr_of_bits) downto nr_of_bits+1) <= to_signed(A, nr_of_bits);
                S((2*nr_of_bits) downto nr_of_bits+1) <= to_signed(-A, nr_of_bits);
                P(nr_of_bits downto 1) <= to_signed(B, nr_of_bits);
            elsif index < (nr_of_bits+1) then
                P_temp := P;
                if P(1 downto 0) = "01" then
                    P_temp := P + M;
                elsif P(1 downto 0) = "10" then
                    P_temp := P + S;
                end if;
                P <= shift_right(P_temp, 1);
            end if;
            index <= index + 1;
        end if;
    end process;

    zhi <= std_logic_vector(P((2*nr_of_bits) downto nr_of_bits+1));
    zlo <= std_logic_vector(P(nr_of_bits downto 1));
end behavior;