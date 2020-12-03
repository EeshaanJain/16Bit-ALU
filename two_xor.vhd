-- Two input XOR (Used in xor16.vhd)
entity two_xor is 

	port ( A : in bit; 
			 B : in bit; 
			 C : out bit);
			 
end two_xor; 
 
architecture Behavioral of two_xor is

	begin 
		process(A,B) 
			begin 
			
			if((A='0') and (B='1')) then 
				C<='1';
			
			elsif((A='1') and (B='0')) then 
				C<='1'; 
			
			else 
				C<='0'; 
			
			end if; 
		end process; 
 
end Behavioral;