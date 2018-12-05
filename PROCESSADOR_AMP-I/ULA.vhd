library	ieee;
use ieee.std_logic_1164.all;

entity ULA is
	port (
	
		a, b  : in  std_logic_vector(15 downto 0);
		op    : in  std_logic_vector( 7 downto 0);
		s     : out std_logic_vector(15 downto 0);
		zeroo  : inout std_logic
		
	);
end ULA;

architecture implements of ULA is
	component multiplexer_4op 
	port (
	
		a, b, c  : in  std_logic_vector(15 downto 0);
		selector : in  std_logic_vector( 1 downto 0);
		x        : out std_logic_vector(15 downto 0)
	);
end component;

component Somador
port(
	A, B	: in 	std_logic_vector(15 downto 0);
	sum	: out std_logic_vector(15 downto 0)
);
end component;

component multiplica IS
PORT (

	a    : IN     std_logic_vector(15 downto 0);
	b    : IN     std_logic_vector(15 downto 0);
	x    : OUT    std_logic_vector(15 downto 0) 
);
END component;

component Qand 
PORT (

	a, b : IN  std_logic_vector(15 downto 0);
	x    : OUT std_logic_vector(15 downto 0) 
);
END component;
component Qor 
PORT (

	a, b : IN  std_logic_vector(15 downto 0);
	x    : OUT std_logic_vector(15 downto 0) 

);
END component;

component Qxor 
PORT (

	a, b : IN  std_logic_vector(15 downto 0);
	x    : OUT std_logic_vector(15 downto 0)

);
END component;

-- utiliza o "cin" do somador, para indicar
-- sera Left ou Right, repectivamente '1' e '0'
component Shift_2bits
PORT (

	a    : IN  std_logic_vector(15 downto 0);
	cin  : in std_logic;
	x    : OUT std_logic_vector(15 downto 0) 
);
END component;

component Multiplexer_5pos 
PORT (

	a, b, c, d, e, f  : IN  std_logic_vector(15 downto 0);
	seletor        : IN  std_logic_vector( 2 downto 0);
	x              : OUT std_logic_vector(15 downto 0)

);
END component;

component zero IS
PORT (

	a  : IN  std_logic_vector(15 downto 0);
	cin: IN std_logic;
	x  : INOUT std_logic 
);
END component;

-- co => complemento de dois
 SIGNAL notA, notB, co, aa, ab, ba, bb, bc, bd, be, bf : std_logic_vector(15 downto 0);
 SIGNAL lixo02 : std_logic;
begin 
	notA <= not a;
	notB <= not b;
	
	Soma_1: Somador port map (notB,"0000000000000001",co);
	Multiplexer_01: multiplexer_4op port map(a, notA, notB, op(6 downto 5), aa);
	Multiplexer_02: multiplexer_4op port map(b, notB, co, op(4 downto 3), ab);
	And_01: Qand port map (aa, ab, ba); 
	Or_01 : Qor  port map (aa, ab, bb); 
	Shift_01: shift_2bits port map (b, op(7), bd);
	Xor_01: Qxor port map (aa, ab, be); 
	
	-- UC deverar seta '0' em Carry in.. Para fucnionar o Xor
	Somador_16bits: Somador port map(aa, ab, bc);
	
	MULTIPLICACAO: multiplica port map(aa,ab,bf);
	
	ZERO0: zero port map (bc,op(7),zeroo);
	
	Multiplexer_03: multiplexer_5pos port map(ba, bb, bc, bd, be, bf, op(2 downto 0), s);
	
end implements;