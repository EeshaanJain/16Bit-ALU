-- We calculate the OR of elements of bit_vector, i.e A(0) or A(1) or ......... A(14) or A(15)

entity sixteen_or is 

	port( X : in bit_vector(15 downto 0); 
		   Y : out bit); 
			
end sixteen_or; 
 
architecture Behavioral of sixteen_or is 

	begin
		process(X) 
			begin 
			
				if((X(0) = '0') and (X(1) = '0') and (X(2) = '0') and (X(3) = '0') and (X(4) = '0') and (X(5) = '0') and (X(6) = '0') 
				and (X(7) = '0') and (X(8) = '0') and (X(9) = '0') and (X(10) = '0') and (X(11) = '0') and (X(12) = '0') and X(13) = '0' 
				and (X(14) = '0') and (X(15) = '0')) then 
					Y <= '0';
					
				else
					Y <= '1';
	
			end if;
		end process;
end Behavioral;