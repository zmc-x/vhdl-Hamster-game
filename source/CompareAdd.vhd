library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CompareAdd is
port(
clk,clr:in std_logic;
com,random_out:in std_logic_vector(7 downto 0);
finish:in std_logic;
grade_s,grade_g:out std_logic_vector(3 downto 0)
);
end;
architecture one of CompareAdd is
signal s,g:std_logic_vector(3 downto 0):="0000";
begin
process(clk)
begin
if clk'event and clk='1' then 
	if clr<='0' then grade_s<="0000";grade_g<="0000";s<="0000";g<="0000";
	elsif com=random_out and finish='1'  then
	if g="1001" then g<="0000";
			if s="1001" then s<="0000";g<="0000";
			else s<=s+1;
			end if;
	else g<=g+1;
    end if;
	grade_s<=s;
    grade_g<=g;
	end if;
end if;
end process;
end;