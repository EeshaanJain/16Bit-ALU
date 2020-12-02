entity ALU is
	port(
		A, B : in bit_vector(15 downto 0);
		ALU_ctrl : in bit_vector(1 downto 0);
		ALU_out : out bit_vector(15 downto 0);
		carry_out, zero_bit : out bit
		);

end entity ALU;

architecture ALU_behavior of ALU is
	
	component xor_16 is
	port (A, B: in bit_vector(15 downto 0);
		   S: out bit_vector(15 downto 0));
	end component xor_16;
	
	component nand_16 is
	port (A, B: in bit_vector(15 downto 0);
		   S: out bit_vector(15 downto 0));
	end component nand_16;
	
	component adder is
	port (A_add,B_add : in bit_vector(15 downto 0);
			S_add : out bit_vector(16 downto 0));
	end component adder;
	
	component subtractor is 
	port (A_sub,B_sub : in bit_vector(15 downto 0);
			S_sub : out bit_vector(16 downto 0));
		
	end component subtractor;
	
	
	signal internal : bit_vector(16 downto 0) := "00000000000000000";
	signal temp_xor: bit_vector(15 downto 0);
	signal temp_nand : bit_vector(15 downto 0);
	signal temp_add : bit_vector(16 downto 0);
	signal temp_sub : bit_vector(16 downto 0);
	begin
	zero_bit <= '1' when internal(15 downto 0) = "0000000000000000" else '0';
	ALU_out <= internal(15 downto 0);
	carry_out <= internal(16);

	xor_1 : xor_16 port map(A,B,temp_xor);
	nand_1 : nand_16 port map(A,B,temp_nand);
	add_1 : adder port map(A,B,temp_add);
	sub_1 : subtractor port map(A,B,temp_sub);

process(A,B,ALU_ctrl, temp_xor)
	begin
		case(ALU_ctrl) is
		
			when "00" => -- Add
				internal <= temp_add;
				
			when "01" => --Sub
				internal <= temp_sub;
				
			when "10" => --XOR
				internal <= '0' & temp_xor;
				
			when "11" => --Nand
				internal <= '0' & temp_nand;
			
			when others =>
		
		end case;
end process;
end ALU_behavior;