library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Subtract is
    Port ( pixel1 : in STD_LOGIC_VECTOR(7 downto 0);
           pixel2 : in STD_LOGIC_VECTOR(7 downto 0);
           clk    : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR(7 downto 0));
end entity Subtract;

architecture Behavioral of Subtract is
--    signal diff: STD_LOGIC_VECTOR(7 downto 0);
    signal diff : STD_LOGIC_VECTOR(8 downto 0);

begin
    process (clk)
    begin
if(clk='1' and clk' event) then
--            shifted_pixel1 <= '0' & pixel1(7 downto 1);
--			shifted_pixel2 <= '0' & pixel2(7 downto 1);
-- result<= shifted_pixel1 - shifted_pixel2;
--			 shifted_diff<= '0' &diff(7 downto 1);
    diff<= ('0' & pixel1) -('0' & pixel2);
          result<=diff(8 downto 1);
		  end if;
    end process;
--    result <= shifted_diff;
end Behavioral;