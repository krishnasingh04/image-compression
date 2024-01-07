library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestBench is 
end; 
architecture TB_BEHAVIOR of TestBench is 
Component Wavelet2D is
  Port ( clk: in std_logic;
    in_data1 : in  STD_LOGIC_VECTOR (63 downto 0);  -- 64-bit input row
			in_data2: in STD_LOGIC_VECTOR (63 downto 0);  -- Averaging results
      out_data1: out STD_LOGIC_VECTOR (63 downto 0);
     out_data2: out STD_LOGIC_VECTOR (63 downto 0)		-- Subtraction results
  );
end  component Wavelet2D;
signal in_datas1,in_datas2,out_data1,out_data2 : std_logic_vector(63 downto 0);
--signal L,H:  std_logic_vector(31 downto 0);
signal clk1: std_logic;
begin
clock_generate: process
begin
clk1 <='0';
wait for 10 ns;
clk1 <= '1';
wait for 10 ns;
end process;
--rst1 <='1','0' after 20ns;
in_datas1<= "1010101010101010101010101010101010101010101010101010101010101010";
in_datas2<= "1000101010101010101010101011101010101010101010101011001010101010";
dut_instance: Wavelet2D port map(clk1,in_datas1,in_datas2,out_data1,out_data2); 
end TB_BEHAVIOR;