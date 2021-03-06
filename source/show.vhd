library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity show is
port(
time_g:in std_logic_vector(3 downto 0);
time_s:in std_logic_vector(3 downto 0);
grade_s,grade_g:in std_logic_vector(3 downto 0);
clk:in std_logic;
sel:out std_logic_vector(7 downto 0);
smg:out std_logic_vector(6 downto 0)
);
end;
architecture one of show is
begin
process(clk)
variable cnt:integer range 0 to 3:=0;
begin
if clk'event and clk='1' then  
	if cnt=0 then 
	sel<="10111111";
	case grade_g is
	when "0000"=>smg<="1111110";
	when "0001"=>smg<="0110000";
	when "0010"=>smg<="1101101";
	when "0011"=>smg<="1111001";
	when "0100"=>smg<="0110011";
    when "0101"=>smg<="1011011";
	when "0110"=>smg<="1011111";
	when "0111"=>smg<="1110000";
	when "1000"=>smg<="1111111";
	when "1001"=>smg<="1111011";
	when others=>smg<="0000000";
	end case;
	cnt:=cnt+1;
	elsif cnt=1 then 
	sel<="01111111";
	case grade_s is
	when "0000"=>smg<="1111110";
	when "0001"=>smg<="0110000";
	when "0010"=>smg<="1101101";
	when "0011"=>smg<="1111001";
	when "0100"=>smg<="0110011";
    when "0101"=>smg<="1011011";
	when "0110"=>smg<="1011111";
	when "0111"=>smg<="1110000";
	when "1000"=>smg<="1111111";
	when "1001"=>smg<="1111011";
	when others=>smg<="0000000";
	end case;
	cnt:=cnt+1;
	elsif cnt=2 then 
	sel<="11111101";
	case time_s is
	when "0000"=>smg<="1111110";
	when "0001"=>smg<="0110000";
	when "0010"=>smg<="1101101";
	when "0011"=>smg<="1111001";
	when "0100"=>smg<="0110011";
    when "0101"=>smg<="1011011";
	when "0110"=>smg<="1011111";
	when "0111"=>smg<="1110000";
	when "1000"=>smg<="1111111";
	when "1001"=>smg<="1111011";
	when others=>smg<="0000000";
	end case;
	cnt:=cnt+1;
	elsif cnt=3 then 
	sel<="11111110";
	case time_g is
	when "0000"=>smg<="1111110";
	when "0001"=>smg<="0110000";
	when "0010"=>smg<="1101101";
	when "0011"=>smg<="1111001";
	when "0100"=>smg<="0110011";
    when "0101"=>smg<="1011011";
	when "0110"=>smg<="1011111";
	when "0111"=>smg<="1110000";
	when "1000"=>smg<="1111111";
	when "1001"=>smg<="1111011";
	when others=>smg<="0000000";
	end case;
	cnt:=0;
	end if;
end if;
end process;
end;
