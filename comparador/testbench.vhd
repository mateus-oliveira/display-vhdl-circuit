LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_signed.ALL;


ENTITY testbench IS
END testbench;


ARCHITECTURE test OF testbench IS
  CONSTANT W : NATURAL := 4;
  CONSTANT DELAY : TIME := 10 ns;

  COMPONENT comparador IS
    -- Component declaration
    PORT (
      n : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
      eq : OUT STD_LOGIC;  -- n = 0
      gt : OUT STD_LOGIC;  -- n > 0
      lt : OUT STD_LOGIC   -- n < 0
    );
  END COMPONENT;
  
  -- Signals
  SIGNAL eq_tb, gt_tb, lt_tb : STD_LOGIC;
  SIGNAL n_tb : STD_LOGIC_VECTOR(W-1 DOWNTO 0);

BEGIN

  DUT : comparador PORT MAP (n_tb, eq_tb, gt_tb, lt_tb);

  PROCESS
  BEGIN
    -- 0000
    n_tb <= "0000";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '1') REPORT "--- 'eq' incorreto para '0000' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '0000' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0000' ---" SEVERITY error;
 
    -- 0001
    n_tb <= "0001";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0001' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0001' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0001' ---" SEVERITY error;

    -- 0010
    n_tb <= "0010";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0010' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0010' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0010' ---" SEVERITY error;

    -- 0011
    n_tb <= "0011";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0011' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0011' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0011' ---" SEVERITY error;

    -- 0100
    n_tb <= "0100";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0100' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0100' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0100' ---" SEVERITY error;

    -- 0101
    n_tb <= "0101";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0101' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0101' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0101' ---" SEVERITY error;

    -- 0110
    n_tb <= "0110";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0110' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0110' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0110' ---" SEVERITY error;

    -- 0111
    n_tb <= "0111";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '0111' ---" SEVERITY error;
    ASSERT (gt_tb = '1') REPORT "--- 'gt' incorreto para '0111' ---" SEVERITY error;
    ASSERT (lt_tb = '0') REPORT "--- 'lt' incorreto para '0111' ---" SEVERITY error;

    -- 1000
    n_tb <= "1000";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1000' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1000' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1000' ---" SEVERITY error;

    -- 1001
    n_tb <= "1001";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1001' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1001' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1001' ---" SEVERITY error;

    -- 1010
    n_tb <= "1010";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1010' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1010' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1010' ---" SEVERITY error;

    -- 1011
    n_tb <= "1011";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1011' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1011' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1011' ---" SEVERITY error;

    -- 1100
    n_tb <= "1100";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1100' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1100' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1100' ---" SEVERITY error;

    -- 1101
    n_tb <= "1101";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1101' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1101' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1101' ---" SEVERITY error;
  
    -- 1110
    n_tb <= "1110";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1110' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1110' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1110' ---" SEVERITY error;

    -- 1111
    n_tb <= "1111";
    WAIT FOR DELAY;

    ASSERT (eq_tb = '0') REPORT "--- 'eq' incorreto para '1111' ---" SEVERITY error;
    ASSERT (gt_tb = '0') REPORT "--- 'gt' incorreto para '1111' ---" SEVERITY error;
    ASSERT (lt_tb = '1') REPORT "--- 'lt' incorreto para '1111' ---" SEVERITY error;

    WAIT;
  END PROCESS;
	
END test;