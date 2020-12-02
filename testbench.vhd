entity testbench is 
end testbench;

architecture tb of testbench is 
	
	signal a,b : bit_vector(15 downto 0);
	signal cin : bit;
	signal sum : bit_vector(16 downto  0);
	
	component KS16bit is

		port (A,B : in bit_vector(15 downto 0);
				Cin : in bit;
				S : out bit_vector(16 downto 0));
			
	end component;

	begin 
	dut_instance : KS16bit
	port map(a,b,cin,sum);
	
	process 
	begin
	
	a <= "0000001000000000";
	b <= "0011100101111111";
	cin <= '0';
	wait for 5ns;
	
	end process;
	
end tb;