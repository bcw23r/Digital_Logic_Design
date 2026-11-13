LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY JK_FlipFlop IS
PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	set : IN std_logic;
	J   : IN std_logic;
	K   : IN std_logic;
	Q   : OUT std_logic
);
END JK_FlipFlop;


ARCHITECTURE bhv OF JK_FlipFlop IS

BEGIN

	PROCESS(clk,clr,set)
	BEGIN
		IF clr = '1' THEN   -- CLEAR (RESET)
			Q <= '0';
		ELSIF set = '1' THEN   -- SET
			Q <= '1';
		ELSIF (clk'event AND clk = '1') THEN
			IF (J = '1' and K = '0') THEN    -- SET
				Q <= '1'
			ELSIF (J = '0' and K = '1') THEN -- RESET
				Q <= '0'
			ELSIF (J = '1' and K = '1') THEN -- TOGLE
				Q <= NOT Q;
					
			END IF;	-- EX) HOLD
		END IF;
		
	END PROCESS;
END bhv;
