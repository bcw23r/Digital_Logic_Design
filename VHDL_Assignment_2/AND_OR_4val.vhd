LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


--entity

ENTITY logic_test IS
	PORT (
		
a,b,c,d : IN std_logic;
		and_out, or_out : OUT std_logic
	);
END ENTITY logic_test;


--arcitecture
ARCHITECTURE bhv OF logic_test IS

BEGIN
	and_out <= a and b and c and d;
	or_out <= a or b or c or d;


END ARCHITECTURE bhv;
