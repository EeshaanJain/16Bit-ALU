entity Testbench_alu is
end Testbench_alu;

architecture behav1 of Testbench_alu is
	signal A 	: bit_vector(15 downto 0) ;
	signal B 	: bit_vector(15 downto 0) ;
	signal ALU_ctrl 	: bit_vector(1 downto 0);
	
-- 	output signals
	signal carry_out, zero_bit : bit;
	signal ALU_out 		: bit_vector(15 downto 0);
	component ALU is 
		port(
		 	A, B 		: in bit_vector(15 downto 0);		-- operands
			ALU_ctrl		: in bit_vector(1 downto 0);
			carry_out, zero_bit: out bit;		-- carry, sign, zero flag
			ALU_out 		: out bit_vector(15 downto 0)	-- result
		);
	end component;


begin
	dut_instance_1: ALU
	port map(A,B,ALU_ctrl,carry_out,zero_bit,ALU_out);

	process
	begin

	A <= "0101010101010101";	
	B <= "0000000000010000";
	ALU_ctrl <= "00";

	wait for 5 ns;
	
	A <= "0101010101010101";	
	B <= "0000000000010000";
	ALU_ctrl <= "01";

	wait for 5 ns;
	
	A <= "0101010101010101";	
	B <= "0000000000010000";
	ALU_ctrl <= "10";

	wait for 5 ns;
	
	A <= "0101010101010101";	
	B <= "0000000000010000";
	ALU_ctrl <= "11";

	wait for 5 ns;

	end process;
	end behav1;