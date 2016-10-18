----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:46 10/11/2016 
-- Design Name: 
-- Module Name:    nPC - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nPC is
    Port ( clk  : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sumaOut  : in  STD_LOGIC_VECTOR (31 downto 0);
           nPC_salida : out  STD_LOGIC_VECTOR (31 downto 0));
end nPC;

architecture Behavioral of nPC is

begin

process (clk,reset,sumaOut)

begin

if reset='1'  then

		 nPC_salida <= ( others=> '0' );
 else		
     if (rising_edge (clk))then
				  nPC_salida <= sumaOut;
			end if;
	end if ;
	
	end  process ;


end Behavioral;

