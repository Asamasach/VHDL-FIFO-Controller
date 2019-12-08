--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:44:07 12/05/2016
-- Design Name:   
-- Module Name:   F:/project/FIFO_Controler/test.vhd
-- Project Name:  FIFO_Controler
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VHDL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VHDL
    PORT(
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0);
         Rd : IN  std_logic;
         Rw : IN  std_logic;
         clk : IN  std_logic;
         full : OUT  std_logic;
         empty : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic_vector(7 downto 0) := (others => '0');
   signal Rd : std_logic := '0';
   signal Rw : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);
   signal full : std_logic;
   signal empty : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VHDL PORT MAP (
          din => din,
          dout => dout,
          Rd => Rd,
          Rw => Rw,
          clk => clk,
          full => full,
          empty => empty
        );

			clk <= not(clk) after 50 ns;
			din <= "01010101" after 400 ns,"10101010" after 1200 ns;
			rw <= '1' after 420 ns,'0' after 500 ns,'1' after 1220 ns,'0' after 1400 ns;
			rd <= '1' after 610 ns,'0' after 670 ns,'1' after 1360 ns,'0' after 1600 ns;
		

END;
