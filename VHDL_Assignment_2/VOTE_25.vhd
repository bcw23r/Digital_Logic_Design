LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


--entityx
ENTITY vote13 IS
	PORT (
		vt : IN std_logic_vector(25 DOWNTO 1);
		res : OUT std_logic
	);
END ENTITY vote13;

--arcitecture
ARCHITECTURE bhv OF vote13 IS

BEGIN
	PROCESS(vt)
	VARIABLE sum : integer RANGE 0 TO 25;
	BEGIN
		sum := 0;
		FOR i IN 1 TO 25 LOOP
			IF (vt(i) = '1') THEN
				sum := sum+1;
				IF sum >= 13 THEN
					res <= '1';
				ELSE
					res <= '0';
				END IF;
			END IF;
		END LOOP;
	END PROCESS;

END ARCHITECTURE bhv;
