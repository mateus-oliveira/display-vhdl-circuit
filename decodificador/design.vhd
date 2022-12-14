LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;


ENTITY decodificador IS
  -- Component declaration
  GENERIC(W : NATURAL := 4);
  PORT (
    n : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- number to display
    on_off : IN STD_LOGIC; -- BIT to On/Off LEDs
    a, b, c, d, e, f, g : OUT STD_LOGIC  -- LEDs
  );
END decodificador;


ARCHITECTURE structural OF decodificador IS
  -- Signals declaration
  SIGNAL nA, nB, nC, nD : STD_LOGIC;
BEGIN
  nA <= n(3);
  nB <= n(2);
  nC <= n(1);
  nD <= n(0);
    
  a <= on_off AND ((NOT nB AND NOT nD) OR (nC AND NOT nD) OR (nA AND NOT nB) OR (nB AND NOT nC AND nD) OR (NOT nA AND nC));
  b <= on_off AND ((nA XNOR nB) OR (NOT nC AND NOT nD) OR (nA AND NOT nC) OR (nB AND nC AND nD));
  c <= on_off AND (NOT nC OR nD OR (nA XOR nB));
  d <= on_off AND ((NOT nB AND NOT nD) OR (nC AND NOT nD) OR (nB AND NOT nC AND nD) OR (NOT nB AND nC));
  e <= on_off AND (NOT nD AND (NOT nB OR nC));
  f <= on_off AND ((NOT nC AND NOT nD) OR (nA XOR nB));
  g <= on_off AND ((NOT nD AND (nA OR nC)) OR (nB XOR nC));
END structural;