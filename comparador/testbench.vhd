LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;


ENTITY testbench IS
END testbench;


ARCHITECTURE test OF testbench IS
  CONSTANT W : NATURAL := 4;
  CONSTANT DELAY : TIME := 10 ns;

  COMPONENT decodificador IS
    -- Component declaration
    PORT (
        x : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- number to display
        a, b, c, d, e, f, g : OUT STD_LOGIC  -- LEDs
    );
  END COMPONENT;
  
  -- Signals
  SIGNAL a_tb, b_tb, c_tb : STD_LOGIC;
  SIGNAL d_tb, e_tb, f_tb, g_tb : STD_LOGIC;
  SIGNAL x_tb : STD_LOGIC_VECTOR(W-1 DOWNTO 0);

BEGIN

  DUT : decodificador PORT MAP (
    x_tb, a_tb, b_tb, c_tb,
    d_tb, e_tb, f_tb, g_tb
  );

  PROCESS
  BEGIN
    -- 0000
    x_tb <= "0000";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '0000' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '0000' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0000' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '0000' ---" SEVERITY error;
    ASSERT (e_tb = '1') REPORT "--- 'e' incorreto para '0000' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '0000' ---" SEVERITY error;
    ASSERT (g_tb = '0') REPORT "--- 'g' incorreto para '0000' ---" SEVERITY error;

    -- 0001
    x_tb <= "0001";
    WAIT FOR DELAY;

    ASSERT (a_tb = '0') REPORT "--- 'a' incorreto para '0001' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '0001' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0001' ---" SEVERITY error;
    ASSERT (d_tb = '0') REPORT "--- 'd' incorreto para '0001' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '0001' ---" SEVERITY error;
    ASSERT (f_tb = '0') REPORT "--- 'f' incorreto para '0001' ---" SEVERITY error;
    ASSERT (g_tb = '0') REPORT "--- 'g' incorreto para '0001' ---" SEVERITY error;

    -- 0010
    x_tb <= "0010";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '0010' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '0010' ---" SEVERITY error;
    ASSERT (c_tb = '0') REPORT "--- 'c' incorreto para '0010' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '0010' ---" SEVERITY error;
    ASSERT (e_tb = '1') REPORT "--- 'e' incorreto para '0010' ---" SEVERITY error;
    ASSERT (f_tb = '0') REPORT "--- 'f' incorreto para '0010' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '0010' ---" SEVERITY error;

    -- 0011
    x_tb <= "0011";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '0011' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '0011' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0011' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '0011' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '0011' ---" SEVERITY error;
    ASSERT (f_tb = '0') REPORT "--- 'f' incorreto para '0011' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '0011' ---" SEVERITY error;

    -- 0100
    x_tb <= "0100";
    WAIT FOR DELAY;

    ASSERT (a_tb = '0') REPORT "--- 'a' incorreto para '0100' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '0100' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0100' ---" SEVERITY error;
    ASSERT (d_tb = '0') REPORT "--- 'd' incorreto para '0100' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '0100' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '0100' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '0100' ---" SEVERITY error;

    -- 0101
    x_tb <= "0101";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '0101' ---" SEVERITY error;
    ASSERT (b_tb = '0') REPORT "--- 'b' incorreto para '0101' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0101' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '0101' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '0101' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '0101' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '0101' ---" SEVERITY error;

    -- 0110
    x_tb <= "0110";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '0110' ---" SEVERITY error;
    ASSERT (b_tb = '0') REPORT "--- 'b' incorreto para '0110' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0110' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '0110' ---" SEVERITY error;
    ASSERT (e_tb = '1') REPORT "--- 'e' incorreto para '0110' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '0110' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '0110' ---" SEVERITY error;

    -- 0111
    x_tb <= "0111";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '0111' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '0111' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '0111' ---" SEVERITY error;
    ASSERT (d_tb = '0') REPORT "--- 'd' incorreto para '0111' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '0111' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '0111' ---" SEVERITY error;
    ASSERT (g_tb = '0') REPORT "--- 'g' incorreto para '0111' ---" SEVERITY error;

    -- 1000
    x_tb <= "1000";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '1000' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '1000' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1000' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '1000' ---" SEVERITY error;
    ASSERT (e_tb = '1') REPORT "--- 'e' incorreto para '1000' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '1000' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '1000' ---" SEVERITY error;

    -- 1001
    x_tb <= "1001";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '1001' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '1001' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1001' ---" SEVERITY error;
    ASSERT (d_tb = '0') REPORT "--- 'd' incorreto para '1001' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '1001' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '1001' ---" SEVERITY error;
    ASSERT (g_tb = '0') REPORT "--- 'g' incorreto para '1001' ---" SEVERITY error;

    -- 1010
    x_tb <= "1010";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '1010' ---" SEVERITY error;
    ASSERT (b_tb = '0') REPORT "--- 'b' incorreto para '1010' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1010' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '1010' ---" SEVERITY error;
    ASSERT (e_tb = '1') REPORT "--- 'e' incorreto para '1010' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '1010' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '1010' ---" SEVERITY error;

    -- 1011
    x_tb <= "1011";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '1011' ---" SEVERITY error;
    ASSERT (b_tb = '0') REPORT "--- 'b' incorreto para '1011' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1011' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '1011' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '1011' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '1011' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '1011' ---" SEVERITY error;

    -- 1100
    x_tb <= "1100";
    WAIT FOR DELAY;

    ASSERT (a_tb = '0') REPORT "--- 'a' incorreto para '1100' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '1100' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1100' ---" SEVERITY error;
    ASSERT (d_tb = '0') REPORT "--- 'd' incorreto para '1100' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '1100' ---" SEVERITY error;
    ASSERT (f_tb = '1') REPORT "--- 'f' incorreto para '1100' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '1100' ---" SEVERITY error;

    -- 1101
    x_tb <= "1101";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '1101' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '1101' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1101' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '1101' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '1101' ---" SEVERITY error;
    ASSERT (f_tb = '0') REPORT "--- 'f' incorreto para '1101' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '1101' ---" SEVERITY error;

    -- 1110
    x_tb <= "1110";
    WAIT FOR DELAY;

    ASSERT (a_tb = '1') REPORT "--- 'a' incorreto para '1110' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '1110' ---" SEVERITY error;
    ASSERT (c_tb = '0') REPORT "--- 'c' incorreto para '1110' ---" SEVERITY error;
    ASSERT (d_tb = '1') REPORT "--- 'd' incorreto para '1110' ---" SEVERITY error;
    ASSERT (e_tb = '1') REPORT "--- 'e' incorreto para '1110' ---" SEVERITY error;
    ASSERT (f_tb = '0') REPORT "--- 'f' incorreto para '1110' ---" SEVERITY error;
    ASSERT (g_tb = '1') REPORT "--- 'g' incorreto para '1110' ---" SEVERITY error;

    -- 1111
    x_tb <= "1111";
    WAIT FOR DELAY;

    ASSERT (a_tb = '0') REPORT "--- 'a' incorreto para '1111' ---" SEVERITY error;
    ASSERT (b_tb = '1') REPORT "--- 'b' incorreto para '1111' ---" SEVERITY error;
    ASSERT (c_tb = '1') REPORT "--- 'c' incorreto para '1111' ---" SEVERITY error;
    ASSERT (d_tb = '0') REPORT "--- 'd' incorreto para '1111' ---" SEVERITY error;
    ASSERT (e_tb = '0') REPORT "--- 'e' incorreto para '1111' ---" SEVERITY error;
    ASSERT (f_tb = '0') REPORT "--- 'f' incorreto para '1111' ---" SEVERITY error;
    ASSERT (g_tb = '0') REPORT "--- 'g' incorreto para '1111' ---" SEVERITY error;

    WAIT;
  END PROCESS;
	
END test;