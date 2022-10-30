LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;


ENTITY trabalho1 IS
  GENERIC(W : NATURAL := 4);
  PORT (
    x, y : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);
    -- Displays A e B
    aA, bA, cA, dA, eA, fA, gA : OUT STD_LOGIC;
    aB, bB, cB, dB, eB, fB, gB : OUT STD_LOGIC;

    -- Displays C e D
    aC, bC, cC, dC, eC, fC, gC : OUT STD_LOGIC;
    aD, bD, cD, dD, eD, fD, gD : OUT STD_LOGIC

  );
END trabalho1;


ARCHITECTURE structural OF trabalho1 IS
  --Component declaration
  COMPONENT comparador
    PORT (
      n : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
      eq : OUT STD_LOGIC;  -- n = 0
      gt : OUT STD_LOGIC;  -- n > 0
      lt : OUT STD_LOGIC   -- n < 0
    );
  END COMPONENT;

  COMPONENT somador_subtrator
    PORT (
      n : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- entrada X
      somar : IN STD_LOGIC;						 -- menor que 0
      subtrair : IN STD_LOGIC; 					 -- maior que 0
      s : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0)
    );
  END COMPONENT;

  COMPONENT decodificador
    PORT (
      n : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- number to display
      enabled : IN STD_LOGIC; -- BIT to On/Off LEDs
      a, b, c, d, e, f, g : OUT STD_LOGIC  -- LEDs
    );
  END COMPONENT;

  -- Signals declaration

  -- comparador X e Y outputs
  SIGNAL equalsX, equalsY : STD_LOGIC;
  SIGNAL greaterX, greaterY : STD_LOGIC;
  SIGNAL lowerX, lowerY : STD_LOGIC;

  -- somador_subtrator X e Y outputs
  SIGNAL sX, sY : STD_LOGIC_VECTOR(W-1 DOWNTO 0);
BEGIN
  compX : comparador PORT MAP (x, equalsX, greaterX, lowerX);
  somSubX : somador_subtrator PORT MAP (x, lowerX, greaterX, sX);
  displayA : decodificador PORT MAP (sX, greaterX, aA, bA, cA, dA, eA, fA, gA);
  displayB : decodificador PORT MAP (sX, lowerX, aB, bB, cB, dB, eB, fB, gB);
  
  compY : comparador PORT MAP (y, equalsY, greaterY, lowerY);
  somSubY : somador_subtrator PORT MAP (y, lowerY, greaterY, sY);
  displayC : decodificador PORT MAP (sY, greaterY, aC, bC, cC, dC, eC, fC, gC);
  displayD : decodificador PORT MAP (sY, lowerY, aD, bD, cD, dD, eD, fD, gD);
END structural;