library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity new_clock is
port(
clk:in std_logic;
n_clk:buffer std_logic:='0'
);
end;

architecture one of new_clock is
begin
process(clk)
variable cnt:integer range 0 to 50000:=0;
begin
if clk'event and clk='1' then
	if cnt=50000 then cnt:=0;n_clk<=not n_clk;
	else cnt:=cnt+1;end if;
end if;
end process;
end;