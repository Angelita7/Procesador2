----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:51 10/14/2016 
-- Design Name: 
-- Module Name:    Unidad_Aritmeticologica_ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Unidad_Aritmeticologica_ALU is
    Port ( Out_Unidad_Control : in  STD_LOGIC_VECTOR (5 downto 0);
           contenido_registro1 : in  STD_LOGIC_VECTOR (31 downto 0);
           contenido_resgitro2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Out_ALU : out  STD_LOGIC_VECTOR (31 downto 0));
end Unidad_Aritmeticologica_ALU;

architecture Behavioral of Unidad_Aritmeticologica_ALU is

begin

process(Out_Unidad_Control,contenido_registro1,contenido_resgitro2)
begin
 case (Out_Unidad_Control) is 
			when "000001" => -- add
				Out_ALU <= contenido_registro1 + contenido_resgitro2; 
			when "000010" => -- addcc
				Out_ALU <= contenido_registro1 + contenido_resgitro2; 

         when "000011" => -- addX
				Out_ALU <= contenido_registro1 + contenido_resgitro2; 

         when "000100" => -- addXcc
				Out_ALU <= contenido_registro1 + contenido_resgitro2; 

         when "000101" => -- sub
				Out_ALU <= contenido_registro1 - contenido_resgitro2; 
				
			when "000110" => -- subcc
				Out_ALU <= contenido_registro1 - contenido_resgitro2;
			when "000111" => -- subX
				Out_ALU <= contenido_registro1 - contenido_resgitro2;
         when "001000" => -- subXcc
				Out_ALU <= contenido_registro1 - contenido_resgitro2;
         when "001001" => -- and
				Out_ALU <= contenido_registro1 and contenido_resgitro2;
			when "001010" => -- andn
				Out_ALU <= contenido_registro1 and contenido_resgitro2;	
			when "001011" => --andNcc
				Out_ALU <= contenido_registro1 and contenido_resgitro2;
			when "001100" => --andcc
				Out_ALU <= contenido_registro1 and contenido_resgitro2;
         when "001101" => --or
				Out_ALU <= contenido_registro1 or contenido_resgitro2;
	      when "001110" => --orn
				Out_ALU <= contenido_registro1 or contenido_resgitro2;	
	      when "001111" => --orcc
				Out_ALU <= contenido_registro1 or contenido_resgitro2;
			when "010000" => --orNcc
				Out_ALU <= contenido_registro1 or contenido_resgitro2;     
			when "010010" => -- xor
				Out_ALU <= contenido_registro1 xor contenido_resgitro2;
			when "010011" => -- xnor
				Out_ALU <=contenido_registro1 xnor contenido_resgitro2;
         when "010100" => -- xnorcc
				Out_ALU <= contenido_registro1 xnor contenido_resgitro2;				
				
			when others => --nop
				Out_ALU <= (others=>'0');
		end case;
	end process; 

end Behavioral;









