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
signal mic_data_12: UNSIGNED(11 downto 0);

begin

mic_codec : entity work.ssm2603_i2s port map (
    mclk => codec_clock,
    r_data => mic_data,
    l_data => mic_data,
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
            modulated <= '1';
        else 
            modulated <= '0'; 
        end if;
    end if;
end process pwm_proc;
mic_data_12 <= unsigned(mic_data(23 downto 12));

end Behavioral;
