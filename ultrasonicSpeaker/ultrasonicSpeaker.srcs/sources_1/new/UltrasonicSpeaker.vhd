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
           pbdat : out STD_LOGIC);
end UltrasonicSpeaker;


architecture Behavioral of UltrasonicSpeaker is
signal codec_clock: STD_LOGIC;
signal pwm_clock: STD_LOGIC;

begin

mic_codec : entity work.ssm2603_i2s port map (
    mclk => codec_clock,
    r_data => open,
    l_data => open,
    bclk => open,
    pbdat => open,
    pblrc => open,
    mute => open,
    ready => open
);

clk_gen : entity work.combined_clock_gen port map (
    clk_in1 => clk,
    clk_out1 => codec_clock,
    clk_out2 => speaker_clock,
    locked => open,
    reset => '0'
);

end Behavioral;
