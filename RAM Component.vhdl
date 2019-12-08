----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:09:12 12/03/2016 
-- Design Name: 
-- Module Name:    ram - Behavioral 
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

entity ram is
port( dta_in :in std_logic_vector(7 downto 0);
		dta_out:out std_logic_vector(7 downto 0);
		addrs_i , addrs_j: in std_logic_vector ( 4 downto 0 );
		cr,read_ram,write_ram:in std_logic);
end ram;

architecture Behavioral of ram is
type mem is array (0 to 31) of std_logic_vector(7 downto 0);
signal ram:mem:=(others => (others =>'0'));
 
begin
	process(cr)
	begin

	if ( cr'event and cr='1') then
		if read_ram='1' then
		dta_out <= ram(conv_integer(addrs_i));
		elsif write_ram='1' then
		ram(conv_integer(addrs_j)) <= dta_in;
		end if;
	end if;

	end process;

end Behavioral;

