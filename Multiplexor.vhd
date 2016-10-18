----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:14:23 10/17/2016 
-- Design Name: 
-- Module Name:    Multiplexor - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplexor is
    Port ( inmediato : in  STD_LOGIC;
           dato_salida_Extencion : in  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Out_multiplexor : out  STD_LOGIC_VECTOR (31 downto 0));
end Multiplexor;

architecture Behavioral of Multiplexor is

begin
process(inmediato,dato_salida_Extencion,crs2)
begin
	if(inmediato='1')then
		Out_multiplexor<= dato_salida_Extencion;--si el inmediato es cero retorna el valor del register file
	else 
		if(inmediato='0')then
			Out_multiplexor <= crs2;--si el valor es uno retorna el valor de unidad de extnsion 
		end if ; 
	end if; 	
end process; 

end Behavioral;