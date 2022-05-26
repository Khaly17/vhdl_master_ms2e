library ieee ;
use ieee.std_logic_1164.all ;

entity gen_pulse is
	port (
		my_clock : in std_logic ;
		my_pulse : out std_logic
	);
end gen_pulse;

architecture behave of gen_pulse is
		--constant COUNT_MAX : natural := 50e6 -1;
		--variable count : natural range 0 to COUNT_MAX ;
		signal puls : std_logic :='0';
		signal count : integer range 0 to 50000000 := 0 ;

begin
	counter: process(my_clock)
		
		begin
		if rising_edge ( my_clock ) then
			if count = 49999999  then
				count <= 0;
				puls <= not puls;
			else
				count <=count + 1;
				--count := 0;
				--my_pulse <= '1';
			end if;
	  end if;
	end process ;
	my_pulse<=puls;
	
end behave;
