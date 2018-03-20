library ieee;
use ieee.std_logic_1164.all;

entity dff_u is
	port (
		d,clk,rst : in std_logic;
		q : out std_logic
	);
end entity dff_u;

architecture rtl of dff_u is

begin
	process(rst,clk)
	begin
		if rst = '1' then
			q <= '0';
		elsif clk' event and clk = '1' then
			q <= d;
		end if ;
	end process;
end architecture rtl;