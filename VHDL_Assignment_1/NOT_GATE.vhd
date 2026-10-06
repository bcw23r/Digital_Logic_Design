--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOT_GATE IS
  PORT (
    a : IN  std_logic_vector(3 DOWNTO 0);
    y : OUT std_logic_vector(3 DOWNTO 0)
END NOT_GATE;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF NOT_GATE IS

BEGIN
y <= NOT a;

END TypeArchitecture;
