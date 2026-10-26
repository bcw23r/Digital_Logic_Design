LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


--entityx
ENTITY dis_7seg IS
	PORT (
		en   : IN std_logic;
		data : IN std_logic_vector(3 DOWNTO 0);
		dis  : OUT std_logic_vector(7 DOWNTO 0)
	);
END ENTITY dis_7seg	;

--arcitecture
ARCHITECTURE bhv OF dis_7seg IS

BEGIN
	PROCESS(en,data)
	BEGIN
		IF en = '0' THEN
			dis <= "ZZZZZZZZ";
		ELSE
			CASE data IS
				WHEN "0000" => dis <= "11101110"; -- A
				WHEN "0001" => dis <= "00111110"; -- b
				WHEN "0010" => dis <= "10011100"; -- C
				WHEN "0011" => dis <= "01111010"; -- d
				WHEN "0100" => dis <= "10001110"; -- F
				WHEN "0101" => dis <= "11110110"; -- g

				WHEN others => dis <= "00000000";
			END CASE;
		END IF;
	END PROCESS;

END ARCHITECTURE bhv;
