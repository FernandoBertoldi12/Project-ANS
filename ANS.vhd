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
  
    type rom is array (0 to 19) of std_logic_vector(7 downto 0);
    signal memoria: rom := ( 0 => "00000000",  1 => "00000000",  2 => "00000000",  3 => "00000000",
                             4 => "00000000",  5 => "00000000",  6 => "00000000",  7 => "00000000",
                             8 => "00000000",  9 => "00000000", 10 => "00000000", 11 => "00000000",
                            12 => "00000000", 13 => "00000000", 14 => "00000000", 15 => "00000000",
                            16 => "00000000", 17 => "00000000", 18 => "00000000", 19 => "00000000",
                            20 => "00000000");
    -- signal memoria: rom := ( 0 => "00000000",  1 => "00000000",  2 => "00000000",  3 => "00000000", -- teste
    --                          4 => "00000000",  5 => "00000000",  6 => "00000000",  7 => "00000000",
    --                          8 => "00000000",  9 => "00000000", 10 => "00000000", 11 => "00000000",
    --                         12 => "00000000", 13 => "00000000", 14 => "00000000", 15 => "00000000");
    
    
    signal Calc: std_logic_vector(15 downto 0);
    signal Reg_X: std_logic_vector(7 downto 0);
    

begin
  
  Calc <= 
  
  

    process(reset, clock)
    begin
      
        if (reset = '0') then
            
            
            
        elsif (clock = '1' and clock'event) then
           
           
           
			
           
			
		-- reg_RDM <= memoria(conv_integer(unsigned(reg_PC)));
    -- decodificador <= memoria(conv_integer(unsigned(reg_PC)))(7 downto 4);
			
        end if;
    end process;
	
end behavior;
