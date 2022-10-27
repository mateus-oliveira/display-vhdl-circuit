LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;

ENTITY comparador IS
  GENERIC(W : NATURAL := 4);
  PORT (
    n : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		eq : OUT STD_LOGIC;  -- n = 0
		gt : OUT STD_LOGIC;  -- n > 0
		lt : OUT STD_LOGIC   -- n < 0
  ); 
END comparador;

------------------------------------------------------------------

ARCHITECTURE structural OF comparador IS
BEGIN
  lt <= '1' WHEN (n < 0) ELSE '0';
  eq <= '1' WHEN (n = 0) ELSE '0';
  gt <= '1' WHEN (n > 0) ELSE '0';
END structural;
