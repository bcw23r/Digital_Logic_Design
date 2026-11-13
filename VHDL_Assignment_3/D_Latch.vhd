LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_Latch IS
PORT (
	clk : IN std_logic;
	D   : IN std_logic;
	Q   : OUT std_logic
);
END D_Latch;

ARCHITECTURE bhv OF D_Latch IS
BEGIN

	PROCESS(clk,D)
	BEGIN
		IF (clk = '1') THEN
			Q <= D;

		END IF;
		
	END PROCESS;
END bhv;
