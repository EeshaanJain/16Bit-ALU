-- Two input NAND (Used in nand16.vhd)

entity two_nand is
 
	port ( A : in bit; 
			 B : in bit; 
			 C : out bit); 
			 
end two_nand; 
 
architecture Behavioral of two_nand is 

	begin 
		process(A,B) 
			begin 
			
				if((A='1') and (B='1')) then 
					C<='0'; 
				
				else 
					C<='1'; 
				
				end if; 	
		end process; 
 
end Behavioral;