entity two_nand is 
Port ( A : in STD_LOGIC; 
B : in STD_LOGIC; 
C : out STD_LOGIC); 
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