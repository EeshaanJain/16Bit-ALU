entity testbench is 
end testbench;

architecture tb of testbench is 
	
	signal g,p : bit_vector(15 downto 0);
	signal sum : bit_vector(15 downto  0);
	signal cin : bit;
	
	component KS16bit is

		port (G,P : in bit_vector(15 downto 0);
				Cin : in bit;
				S : out bit_vector(15 downto 0));
			
	end component;

	begin 
	dut_instance : KS16bit
	port map(g,p,cin,sum);
	
	process 
	begin
	
	g <= "0000001000000000";
	p <= "0011100101111111";
	cin <= '0';
	wait for 5ns;
	
	end process;
	
end tb;