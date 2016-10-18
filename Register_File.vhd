----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:56 10/17/2016 
-- Design Name: 
-- Module Name:    Register_File - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_File is
    Port ( rsd1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rsd2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Out_Alu : in  STD_LOGIC_VECTOR (31 downto 0);
           Contenido_Registro1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Contenido_Registro2 : out  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC);
end Register_File;

architecture Behavioral of Register_File is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal reg : ram_type :=(others => x"00000000");
	
begin

process (rsd1,rsd2,rd,Out_Alu,reset)

begin

if(reset = '1')then
				contenido_registro1<= (others=>'0');
				contenido_registro2<= (others=>'0');
			
				reg<= (others => x"00000000");
			else
				contenido_registro1<= reg(conv_integer(rsd1));
				contenido_registro2<= reg(conv_integer(rsd1));
				
				
			if(rd  /= "000000")then
					reg(conv_integer(rd)) <= Out_Alu;
				end if;
			end if;
	
end process; 


end Behavioral;

