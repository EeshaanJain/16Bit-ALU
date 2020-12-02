entity xor_16 is
port( A, B: in bit_vector(15 downto 0);
	S: out bit_vector(15 downto 0));
end xor_16;

architecture behav of xor_16 is

begin
	lvl1:
	for i in 0 to 15 generate
		S(i) <= A(i) xor B(i);
	end generate lvl1;
end behav;