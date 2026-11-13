LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_FlipFlop_clr_set IS
PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	set : IN std_logic;
	D   : IN std_logic;
	Q   : OUT std_logic
);
END D_FlipFlop_clr_set;


ARCHITECTURE bhv OF D_FlipFlop_clr_set IS

BEGIN

	PROCESS(clk,clr,set)
	BEGIN
		IF clr = '1' THEN
			Q <= '0'
		ELSIF set = '1' THEN
			Q <= '1'
		ELSIF (clk'event AND clk = '1') THEN
			Q <= D;

		END IF;
		
	END PROCESS;
END bhv;
