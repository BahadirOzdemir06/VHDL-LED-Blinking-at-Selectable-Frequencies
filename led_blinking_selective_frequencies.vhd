library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity led_blinking_selective_frequencies is
Port ( clk , sw_e : in std_logic;
        sw        : in std_logic_vector(2 downto 0);
       led_0 : out std_logic


);
end led_blinking_selective_frequencies;

architecture Behavioral of led_blinking_selective_frequencies is
 constant c_cnt_1Hz : natural := 50000000;
 constant c_cnt_2Hz : natural := 25000000;
 constant c_cnt_4Hz : natural := 12500000;
 constant c_cnt_8Hz : natural := 6250000;
 constant c_cnt_05Hz : natural :=100000000; -- 1/2 Hz
 constant c_cnt_025Hz : natural := 200000000;-- 1/4 Hz
 constant c_cnt_0125Hz : natural := 400000000;-- 1/8 Hz
 constant c_cnt_0625Hz : natural := 800000000;-- 1/16 Hz
 
 signal r_cnt_1Hz : natural range 0 to c_cnt_1Hz;
 signal r_cnt_2Hz : natural range 0 to c_cnt_2Hz;
 signal r_cnt_4Hz : natural range 0 to c_cnt_4Hz;
 signal r_cnt_8Hz : natural range 0 to c_cnt_8Hz;
 signal r_cnt_05Hz : natural range 0 to c_cnt_05Hz;
 signal r_cnt_025Hz : natural range 0 to c_cnt_025Hz;
 signal r_cnt_0125Hz : natural range 0 to c_cnt_0125Hz;
 signal r_cnt_0625Hz : natural range 0 to c_cnt_0625Hz;
  
 signal r_toggle_1Hz : std_logic:= '0';
 signal r_toggle_2Hz : std_logic:= '0';
 signal r_toggle_4Hz : std_logic:= '0';
 signal r_toggle_8Hz : std_logic:= '0';
 signal r_toggle_05Hz : std_logic:= '0';
 signal r_toggle_025Hz : std_logic:= '0';
 signal r_toggle_0125Hz : std_logic:= '0';
 signal r_toggle_0625Hz : std_logic:= '0';
 
 signal w_led_select : std_logic;

begin
   p_1_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_1Hz = c_cnt_1Hz-1 then  
        r_toggle_1Hz <= not r_toggle_1Hz;
        r_cnt_1Hz    <= 0;
      else
        r_cnt_1HZ <= r_cnt_1Hz + 1;
      end if;
    end if;
  end process p_1_Hz;
  
   p_2_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_2Hz = c_cnt_2Hz-1 then  
        r_toggle_2Hz <= not r_toggle_2Hz;
        r_cnt_2Hz    <= 0;
      else
        r_cnt_2HZ <= r_cnt_2Hz + 1;
      end if;
    end if;
  end process p_2_Hz;
  
   p_4_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_4Hz = c_cnt_4Hz-1 then  
        r_toggle_4Hz <= not r_toggle_4Hz;
        r_cnt_4Hz    <= 0;
      else
        r_cnt_4HZ <= r_cnt_4Hz + 1;
      end if;
    end if;
  end process p_4_Hz;
  
   p_8_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_8Hz = c_cnt_8Hz-1 then 
        r_toggle_8Hz <= not r_toggle_8Hz;
        r_cnt_8Hz    <= 0;
      else
        r_cnt_8HZ <= r_cnt_8Hz + 1;
      end if;
    end if;
  end process p_8_Hz;
  
   p_05_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_05Hz = c_cnt_05Hz-1 then 
        r_toggle_05Hz <= not r_toggle_05Hz;
        r_cnt_05Hz    <= 0;
      else
        r_cnt_05HZ <= r_cnt_05Hz + 1;
      end if;
    end if;
  end process p_05_Hz;
  
   p_025_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_025Hz = c_cnt_025Hz-1 then  
        r_toggle_025Hz <= not r_toggle_025Hz;
        r_cnt_025Hz    <= 0;
      else
        r_cnt_025HZ <= r_cnt_025Hz + 1;
      end if;
    end if;
  end process p_025_Hz;
  
   p_0125_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_0125Hz = c_cnt_0125Hz-1 then  
        r_toggle_0125Hz <= not r_toggle_0125Hz;
        r_cnt_0125Hz    <= 0;
      else
        r_cnt_0125HZ <= r_cnt_0125Hz + 1;
      end if;
    end if;
  end process p_0125_Hz;
  
   p_0625_HZ : process (clk) is
  begin
    if rising_edge(clk) then
      if r_cnt_0625Hz = c_cnt_0625Hz-1 then  
        r_toggle_0625Hz <= not r_toggle_0625Hz;
        r_cnt_0625Hz    <= 0;
      else
        r_cnt_0625HZ <= r_cnt_0625Hz + 1;
      end if;
    end if;
  end process p_0625_Hz;
  
  w_led_select <= r_toggle_1Hz when (sw = "000") else
                  r_toggle_2Hz when (sw = "001") else
                  r_toggle_4Hz when (sw = "010") else
                  r_toggle_8Hz when (sw = "011") else
                  r_toggle_05Hz when (sw = "100") else
                  r_toggle_025Hz when (sw = "101") else
                  r_toggle_0125Hz when (sw = "110") else
                  r_toggle_0625Hz when (sw = "111");
                  
                  
   led_0 <= w_led_select and sw_e;
                  
                   
  
  
  

end Behavioral;
