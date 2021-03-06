library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity random is
port(
clk :in std_logic;
finish:in std_logic;
random_out:out std_logic_vector(7 downto 0)
);
end;
architecture one of random is
signal rd:std_logic_vector(4 downto 0):="10000";
signal mid:std_logic;
signal put:std_logic_vector(2 downto 0);
begin
process(clk)
begin
if clk'event and clk='1' then 
if finish='1' then 
	mid<=rd(0);
	rd(0)<=rd(1);
	rd(1)<=rd(2);
	rd(2)<=rd(3);
	rd(3)<=rd(4);
	rd(4)<=rd(4) xor mid;
	put<=rd(4 downto 2); 
	if put="000" then random_out<="00000001";
	elsif put="001" then random_out<="00000010";
	elsif put="010" then random_out<="00000100";
	elsif put="011" then random_out<="00001000";
	elsif put="100" then random_out<="00010000";
	elsif put="101" then random_out<="00100000";
	elsif put="110" then random_out<="01000000";
	else random_out<="10000000";
	end if;
end if;
end if;
end process;
end;