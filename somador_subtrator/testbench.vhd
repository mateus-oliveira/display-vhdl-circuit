LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;


ENTITY testbench IS
END testbench;


ARCHITECTURE test OF testbench IS
  CONSTANT W : NATURAL := 4;
  CONSTANT DELAY : TIME := 10 ns;

  -- Component declaration
  COMPONENT somador_subtrator IS
    PORT (
      n: IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);  -- entrada X
		  somar : IN STD_LOGIC;						 -- menor que 0
      subtrair : IN STD_LOGIC; 					 -- maior que 0
		  s : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0)
    );
  END COMPONENT;
  
  -- Signals
  SIGNAL somar_tb, subtrair_tb : STD_LOGIC;
  SIGNAL n_tb : STD_LOGIC_VECTOR(W-1 DOWNTO 0);
  SIGNAL s_tb : STD_LOGIC_VECTOR(W-1 DOWNTO 0);

BEGIN

  DUT : somador_subtrator PORT MAP (n_tb, somar_tb, subtrair_tb, s_tb);

  PROCESS
  BEGIN
    -- 0000 (0)
    n_tb <= "0000";
    somar_tb <= '0';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0000") REPORT "--- 's' incorreto para '0000' ---" SEVERITY error;

    -- 0001 (1)
    n_tb <= "0001";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0000") REPORT "--- 's' incorreto para '0001' ---" SEVERITY error;

    -- 0010 (2)
    n_tb <= "0010";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0001") REPORT "--- 's' incorreto para '0010' ---" SEVERITY error;

    -- 0011 (3)
    n_tb <= "0011";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0010") REPORT "--- 's' incorreto para '0011' ---" SEVERITY error;

    -- 0100 (4)
    n_tb <= "0100";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0011") REPORT "--- 's' incorreto para '0100' ---" SEVERITY error;

    -- 0101 (5)
    n_tb <= "0101";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0100") REPORT "--- 's' incorreto para '0101' ---" SEVERITY error;

    -- 0110 (6)
    n_tb <= "0110";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0101") REPORT "--- 's' incorreto para '0110' ---" SEVERITY error;

    -- 0111 (7)
    n_tb <= "0111";
    somar_tb <= '0';
    subtrair_tb <= '1';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0110") REPORT "--- 's' incorreto para '0111' ---" SEVERITY error;

    -- 1000 (-8)
    n_tb <= "1000";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1001") REPORT "--- 's' incorreto para '1000' ---" SEVERITY error;

    -- 1001 (-7)
    n_tb <= "1001";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1010") REPORT "--- 's' incorreto para '1001' ---" SEVERITY error;

    -- 1010 (-6)
    n_tb <= "1010";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1011") REPORT "--- 's' incorreto para '1010' ---" SEVERITY error;

    -- 1011 (-5)
    n_tb <= "1011";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1100") REPORT "--- 's' incorreto para '1011' ---" SEVERITY error;

    -- 1100 (-4)
    n_tb <= "1100";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1101") REPORT "--- 's' incorreto para '1100' ---" SEVERITY error;

    -- 1101 (-3)
    n_tb <= "1101";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1110") REPORT "--- 's' incorreto para '1101' ---" SEVERITY error;

    -- 1110 (-2)
    n_tb <= "1110";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "1111") REPORT "--- 's' incorreto para '1110' ---" SEVERITY error;

    -- 1111 (-1)
    n_tb <= "1111";
    somar_tb <= '1';
    subtrair_tb <= '0';
    WAIT FOR DELAY;

    ASSERT (s_tb = "0000") REPORT "--- 's' incorreto para '1111' ---" SEVERITY error;

    WAIT;
  END PROCESS;
	
END test;
