library ieee ;
use ieee.std_logic_1164.all ;

entity my_main is
	port (
		main_clock : in std_logic ;
		main_segments : out std_logic_vector (6 downto 0)
	);
end my_main;

architecture structural of my_main is
	signal raw_data : std_logic ;
	signal raw_data1 : integer ;
begin
	module1 : entity work.gen_pulse port map( my_clock => main_clock , my_pulse => raw_data );
	module2 : entity work.compteur port map( clock => raw_data , my_led => raw_data1 );
	module3 : entity work.dec_7seg port map( digit => raw_data1 , segments => main_segments );
end structural;
