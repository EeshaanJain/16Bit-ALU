entity adder is

	port (A_add,B_add : in bit_vector(15 downto 0);
			S_add : out bit_vector(16 downto 0));
		
end entity adder;

architecture add_bhv of adder is

	component KS16bit is

		port (A,B : in bit_vector(15 downto 0);
				Cin : in bit;
				S : out bit_vector(16 downto 0));  --EEshAAn ke liye special
				
	end component;

	begin
		alu_adder : KS16bit port map(A_add,B_add,'0',S_add);
		
end add_bhv;


entity subtractor is 

	port (A_sub,B_sub : in bit_vector(15 downto 0);
			S_sub : out bit_vector(16 downto 0));
		
end entity subtractor;


architecture sub_bhv of subtractor is

	component KS16bit is

		port (A,B : in bit_vector(15 downto 0);
				Cin : in bit;
				S : out bit_vector(16 downto 0));  --EEshAAn ke liye special
				
	end component;

	begin 
		alu_subtractor : KS16bit port map(A_sub,B_sub,'1',S_sub);
	
end sub_bhv;