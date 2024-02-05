library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ANS is
    
    port(
        reset: in std_logic;
        clock: in std_logic;
        S_0: in std_logic;
        S_1: in std_logic;
        output: out std_logic 
        );

end ANS;

architecture behavior of ANS is
  
type lut is array (integer range 0 to 15) of std_logic_vector(3 downto 0); 
signal lut_mult : lut;
signal address_lut	: std_logic_vector(3 downto 0);

  
    type rom_16 is array (0 to 15) of std_logic_vector(3 downto 0);
    signal memoria_1: rom_16 := ( 0 => "0000",  1 => "0000",  2 => "0000",  3 => "0000",
                             4 => "0000",  5 => "0000",  6 => "0000",  7 => "0000",
                             8 => "0000",  9 => "0000", 10 => "0000", 11 => "0000",
                            12 => "0000", 13 => "0000", 14 => "0000", 15 => "0000");
   
    
    type rom_32 is array (0 to 31) of std_logic_vector(3 downto 0);
    signal memoria_2: rom_32 := ( 0 => "0000",  1 => "0000",  2 => "0000",  3 => "0000",
                             4 => "0000",  5 => "0000",  6 => "0000",  7 => "0000",
                             8 => "0000",  9 => "0000", 10 => "0000", 11 => "0000",
                            12 => "0000", 13 => "0000", 14 => "0000", 15 => "0000",
                            16 => "0000", 17 => "0000", 18 => "0000", 19 => "0000",
                            20 => "0000", 21 => "0000", 22 => "0000", 23 => "0000",
                            24 => "0000", 25 => "0000", 26 => "0000", 27 => "0000",
                            28 => "0000", 29 => "0000", 30 => "0000", 31 => "0000");
       
   
   address_lut <= S_0 & S_1;
	
	lut_mult (0) <= "0000";--4D"0"; -- 00 x 00       
	lut_mult (1) <= "0000";--4D"0"; -- 00 x 01
	lut_mult (2) <= "0000";--4D"0"; -- 00 x 10
	lut_mult (3) <= "0000";--4D"0"; -- 00 x 11
	lut_mult (4) <= "0000";--4D"0"; -- 01 x 00
	lut_mult (5) <= "0001";--4D"1"; -- 01 x 01 
	lut_mult (6) <= "0010";--4D"2"; -- 01 x 10
	lut_mult (7) <= "0011";--4D"3"; -- 01 x 11
	lut_mult (8) <= "0000";--4D"0"; -- 10 x 00
	lut_mult (9) <= "0010";--4D"2"; -- 10 x 01
	lut_mult (10) <= "0100";--4D"4"; -- 10 x 10
	lut_mult (11) <= "0110";--4D"6"; -- 10 x 11
	lut_mult (12) <= "0000";--4D"0"; -- 11 x 00
	lut_mult (13) <= "0011";--4D"3"; -- 11 x 01
	lut_mult (14) <= "0110";--4D"6"; -- 11 x 10
	lut_mult (15) <= "1001";--4D"9"; -- 11 x 11
	
	
--lut_mult (0) <= "0000"; 
--lut_mult (1) <= "0001"; 
--lut_mult (2) <= "0010"; 
--lut_mult (3) <= "0011"; 
--lut_mult (4) <= "0100"; 
--lut_mult (5) <= "0101"; 
--lut_mult (6) <= "0110"; 
--lut_mult (7) <= "0111"; 
--lut_mult (8) <= "1000"; 
--lut_mult (9) <= "1001"; 
--lut_mult (10) <= "1010"; 
--lut_mult (11) <= "1011"; 
--lut_mult (12) <= "1100"; 
--lut_mult (13) <= "1101"; 
--lut_mult (14) <= "1110"; 
--lut_mult (15) <= "1111"; 
	
	
output_1 <= lut_mult(conv_integer(address_lut));
   
    

begin
  
    process(reset, clock)
    begin
      
        if (reset = '0') then
           
            
        elsif (clock = '1' and clock'event) then
           
  				
        end if;
    end process;
	
end behavior;

