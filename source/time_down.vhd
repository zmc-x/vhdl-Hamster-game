library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity time_down is
port(
clk:in std_logic;
clr:in std_logic;
finish:out std_logic;
time_s,time_g:out std_logic_vector(3 downto 0)
);
end;

architecture one of time_down is
signal g:std_logic_vector(3 downto 0):="0000";
signal s:std_logic_vector(3 downto 0):="0000";
begin
process(clk)
variable cnt:integer range 0 to 60:=0;
begin
if clr='0' then time_s<="0000";time_g<="0000";
s<="0000";g<="0000";finish<='0';cnt:=0;
elsif clk'event and clk='1' then
	if cnt<60 or cnt=60 then 
		time_s<=s;
		time_g<=g;
		if g="1001" then 
			if s="0101" then s<="0000";
			else s<=s+1;finish<='1';
			end if;
		g<="0000";
		else g<=g+1;finish<='1';
		end if;
		cnt:=cnt+1;
	else finish<='0';
	end if;
end if;
end process;
end;