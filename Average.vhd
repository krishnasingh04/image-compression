library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Average is
    Port ( pixel1 : in STD_LOGIC_VECTOR(7 downto 0);
           pixel2 : in STD_LOGIC_VECTOR(7 downto 0);
           clk    : in STD_LOGIC;
           result11 : out STD_LOGIC_VECTOR(7 downto 0));
end entity Average;

architecture Behavioral of Average is
--    signal shifted_sum,sum : STD_LOGIC_VECTOR(7 downto 0);
	 signal sum : std_logic_vector(8 downto 0);
begin
    process (clk)
    begin
	 if(clk='1' and clk' event) then
--			shifted_pixel1 <= '0' & pixel1(7 downto 1);
--			shifted_pixel2 <= '0' & pixel2(7 downto 1);
			sum <= ('0' & pixel1) + ('0' & pixel2);
          result11<= sum(8 downto 1);
        end if;
    end process;
end Behavioral;