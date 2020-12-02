entity nand_16 is
port( A, B: in bit_vector(15 downto 0);
	S: out bit_vector(15 downto 0));
end nand_16;

architecture behav of nand_16 is

begin
	lvl1:
	for i in 0 to 15 generate
		S(i) <= A(i) nand B(i);
	end generate lvl1;
end behav;