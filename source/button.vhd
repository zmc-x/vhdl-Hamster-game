library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity button is
port(
clk:in std_logic;
reset_in:in std_logic_vector(7 downto 0);
com:out std_logic_vector(7 downto 0):="00000000"
);
end;
architecture one of button is
begin
process(clk,reset_in(7),reset_in(6),reset_in(5),reset_in(4),reset_in(3),reset_in(2),reset_in(1),reset_in(0))
variable cnt:integer range 0 to 20:=0;
begin
if reset_in(7)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="10000000";
	cnt:=0;
	end if;
elsif reset_in(6)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="01000000";
	cnt:=0;
	end if;
elsif reset_in(5)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="00100000";
	cnt:=0;
	end if;
elsif reset_in(4)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="00010000";
	cnt:=0;
	end if;
elsif reset_in(3)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="00001000";
	cnt:=0;
	end if;
elsif reset_in(2)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="00000100";
	cnt:=0;
	end if;
elsif reset_in(1)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="00000010";
	cnt:=0;
	end if;
elsif reset_in(0)='0' then 
	if clk='1'and cnt<20 then 
	cnt:=cnt+1;
	elsif cnt=20 then 
	com<="00000001";
	cnt:=0;
	end if;
else com<="00000000";end if;
end process;
end;