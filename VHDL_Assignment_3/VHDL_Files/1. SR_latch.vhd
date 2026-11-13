LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY SR_latch IS
PORT ( 
	S,R : IN    STD_LOGIC;
     Q   : OUT   STD_LOGIC
);
END SR_latch;

ARCHITECTURE bhv OF SR_latch IS
SIGNAL notQ : STD_LOGIC;
SIGNAL Q_temp : STD_LOGIC;
BEGIN

Q   <= Q_temp;
Q_temp  <= R nor notQ;
notQ <= S nor Q_temp;
end bhv;

