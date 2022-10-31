LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;


ENTITY testbench IS
END testbench;


ARCHITECTURE test OF testbench IS
  CONSTANT W : NATURAL := 4;
  CONSTANT DELAY : TIME := 10 ns;

  COMPONENT trabalho1 IS
    -- Component declaration
    PORT (
      x, y : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);
      -- Displays A e B
      aA, bA, cA, dA, eA, fA, gA : OUT STD_LOGIC;
      aB, bB, cB, dB, eB, fB, gB : OUT STD_LOGIC;

      -- Displays C e D
      aC, bC, cC, dC, eC, fC, gC : OUT STD_LOGIC;
      aD, bD, cD, dD, eD, fD, gD : OUT STD_LOGIC

    );
  END COMPONENT;
  
  -- Signals
  SIGNAL x_tb, y_tb : STD_LOGIC_VECTOR(W-1 DOWNTO 0);
  SIGNAL xAa_tb, xAb_tb, xAc_tb, xAd_tb, xAe_tb, xAf_tb, xAg_tb : STD_LOGIC;
  SIGNAL xBa_tb, xBb_tb, xBc_tb, xBd_tb, xBe_tb, xBf_tb, xBg_tb : STD_LOGIC;
  SIGNAL yCa_tb, yCb_tb, yCc_tb, yCd_tb, yCe_tb, yCf_tb, yCg_tb : STD_LOGIC;
  SIGNAL yDa_tb, yDb_tb, yDc_tb, yDd_tb, yDe_tb, yDf_tb, yDg_tb : STD_LOGIC;

BEGIN

  DUT : trabalho1 PORT MAP (
    x_tb, y_tb,
    xAa_tb, xAb_tb, xAc_tb, xAd_tb, xAe_tb, xAf_tb, xAg_tb,
    xBa_tb, xBb_tb, xBc_tb, xBd_tb, xBe_tb, xBf_tb, xBg_tb,
    yCa_tb, yCb_tb, yCc_tb, yCd_tb, yCe_tb, yCf_tb, yCg_tb,
    yDa_tb, yDb_tb, yDc_tb, yDd_tb, yDe_tb, yDf_tb, yDg_tb
  );

  PROCESS
  BEGIN
    -- 0000
    x_tb <= "0000";
    y_tb <= "0000";
    WAIT FOR DELAY;

    -- 0001
    x_tb <= "0001";
    y_tb <= "0001";
    WAIT FOR DELAY;

    -- 0010
    x_tb <= "0010";
    y_tb <= "0010";
    WAIT FOR DELAY;

    -- 0011
    x_tb <= "0011";
    y_tb <= "0011";
    WAIT FOR DELAY;

    -- 0100
    x_tb <= "0100";
    y_tb <= "0100";
    WAIT FOR DELAY;

    -- 0101
    x_tb <= "0101";
    y_tb <= "0101";
    WAIT FOR DELAY;

    -- 0110
    x_tb <= "0110";
    y_tb <= "0110";
    WAIT FOR DELAY;

    -- 0111
    x_tb <= "0111";
    y_tb <= "0111";
    WAIT FOR DELAY;

    -- 1000
    x_tb <= "1000";
    y_tb <= "1000";
    WAIT FOR DELAY;

    -- 1001
    x_tb <= "1001";
    y_tb <= "1001";
    WAIT FOR DELAY;

    -- 1010
    x_tb <= "1010";
    y_tb <= "1010";
    WAIT FOR DELAY;

    -- 1011
    x_tb <= "1011";
    y_tb <= "1011";
    WAIT FOR DELAY;

    -- 1100
    x_tb <= "1100";
    y_tb <= "1100";
    WAIT FOR DELAY;

    -- 1101
    x_tb <= "1101";
    y_tb <= "1101";
    WAIT FOR DELAY;

    -- 1110
    x_tb <= "1110";
    y_tb <= "1110";
    WAIT FOR DELAY;

    -- 1111
    x_tb <= "1111";
    y_tb <= "1111";
    WAIT FOR DELAY;

    WAIT;
  END PROCESS;
	
END test;