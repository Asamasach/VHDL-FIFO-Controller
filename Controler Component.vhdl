----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:23:24 12/03/2016 
-- Design Name: 
-- Module Name:    controler - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controler is
						port(R,w,c:in std_logic ;
						f,e,read_ord,Write_ord :out std_logic;
						i_temp,j_temp:out std_logic_vector(4 downto 0));
end controler;

architecture Behavioral of controler is
signal i,j: std_logic_vector ( 4 downto 0):=(others =>'0');
signal full_temp,empty_temp:std_logic:='0';
signal l_r,l_w:std_logic;
begin
 
	process(c)
	begin
	if(c'event and c='1') then
		if r='1' then
			if empty_temp='0' then
			read_ord <='1';
			write_ord <= '0';
			i <= i+1;
			l_r <='1';
			end if;
			l_w <= '0';
		elsif w='1' then
			if full_temp='0' then
			read_ord <='0';
			write_ord <='1';
			j <= j+1;
			l_w <= '1';
			end if;
			l_r <='0';
		end if;
	end if;
	end process;	

	i_temp <= i;
	j_temp <= j;
	full_temp <= '1' when (i=j and l_r='0' and l_w='1') else '0';
	empty_temp <= '1' when (i=j and l_r='1' and l_w='0') else '0';
	f<=full_temp;
	e<=empty_temp;

end Behavioral;

