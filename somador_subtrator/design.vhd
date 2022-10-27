LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;


ENTITY somador_subtrator IS
  GENERIC(W : NATURAL := 4);
  PORT (
    n: IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- entrada X
	  somar : IN STD_LOGIC;						 -- menor que 0
	  subtrair : IN STD_LOGIC; 					 -- maior que 0
	  s : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0)
  );
END somador_subtrator;


ARCHITECTURE structural OF somador_subtrator IS
BEGIN
  s <= n + 1 WHEN somar = '1' ELSE n - 1 WHEN subtrair = '1' ELSE n;
END structural;