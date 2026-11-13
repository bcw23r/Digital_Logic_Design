LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_FlipFlop IS
PORT (
	clk : IN std_logic;
	D   : IN std_logic;
	Q   : OUT std_logic
);
END D_FlipFlop;


ARCHITECTURE bhv OF D_FlipFlop IS

BEGIN

	PROCESS(clk)
	BEGIN
		IF (clk event AND clk = '1') THEN
			Q <= D;

		END IF;
		
	END PROCESS;
END bhv;
