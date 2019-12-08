----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:03 12/03/2016 
-- Design Name: 
-- Module Name:    VHDL - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VHDL is
    Port ( din : in  STD_LOGIC_VECTOR (7 downto 0);
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           Rd : in  STD_LOGIC;
           Rw : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           full : out  STD_LOGIC;
           empty : out  STD_LOGIC);
end VHDL;

architecture Structural of VHDL is
component controler
port(R,w,c:in std_logic ; f,e,read_ord,Write_ord :out std_logic;i_temp,j_temp:out std_logic_vector(4 downto 0));
end component;
component Ram
port( dta_in :in std_logic_vector(7 downto 0); dta_out:out std_logic_vector(7 downto 0); addrs_i , addrs_j: std_logic_vector ( 4 downto 0 );cr,read_ram,Write_ram:in std_logic);
end component;
--signal data:std_logic_vector(7 downto 0);
signal address_i,address_j: std_logic_vector(4 downto 0); 
signal read_sig,Write_sig:std_logic; 
begin
controler_temp:controler port map(r=> rd,w=> rw,c=> clk, i_temp =>address_i , j_temp=> address_j,read_ord => read_sig,write_ord=>write_sig,f=>full,e=>empty);
ram_temp:ram port map(cr=> clk, dta_out => dout , dta_in => din,addrs_i => address_i,addrs_j => address_j,read_ram => read_sig,write_ram => write_sig);
end structural;

