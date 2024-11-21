library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UltrasonicSpeaker is
    Port ( clk : in STD_LOGIC;
           start : in STD_LOGIC;
           mclk : out STD_LOGIC;
           bclk : out STD_LOGIC;
           mute : out STD_LOGIC;
           pblrc : out STD_LOGIC;
           pbdat : out STD_LOGIC;
           reclrc: out STD_LOGIC;
           recdat : in STD_LOGIC;
           modulated : out STD_LOGIC);
end UltrasonicSpeaker;


architecture Behavioral of UltrasonicSpeaker is
signal codec_clock: STD_LOGIC;
signal pwm_clock: STD_LOGIC;
signal mic_data: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
signal ready: STD_LOGIC;

signal pwm_counter: UNSIGNED(11 downto 0) := (others => '0');
signal sound_counter: UNSIGNED(19 downto 0) := (others => '0');
signal mic_data_12: UNSIGNED(11 downto 0);
signal test : STD_LOGIC_VECTOR(11 downto 0);

begin

mic_codec : entity work.ssm2603_i2s port map (
    mclk => codec_clock,
    r_data => X"000" & test,
    l_data => X"000" & test,
    recdat => recdat,
    m_data => mic_data,
    bclk => bclk,
    pbdat => pbdat,
    pblrc => pblrc,
    reclrc => reclrc,
    mute => mute,
    ready => ready
);

clk_gen : entity work.combined_clock_gen port map (
    clk_in1 => clk,
    clk_out1 => codec_clock,
    clk_out2 => pwm_clock,
    locked => open,
    reset => '0'
);

mclk <= codec_clock;

pwm_proc : process(pwm_clock)
begin
    if rising_edge(pwm_clock) then
        pwm_counter <= pwm_counter + 1;
        if mic_data_12 < pwm_counter then
            modulated <= '0';
        else 
            modulated <= '1'; 
        end if;
        
        sound_counter <= sound_counter + 1;
        if sound_counter < X"4000" then
            test <= x"400";
        elsif sound_counter < X"8000" then 
            test <= x"800";
        elsif sound_counter < X"C000" then 
            test <= x"400";
        else
            test <= x"000";
        end if;
    end if;
end process pwm_proc;

--test <= mic_data(22) & mic_data(20) & mic_data(18) & mic_data(16) & mic_data(14) & mic_data(12) & mic_data(10) & mic_data(8) & mic_data(6) & mic_data(4) & mic_data(2) & mic_data(0);
-- test <= "0111"& x"FF";
mic_data_12 <= unsigned(test);


end Behavioral;
