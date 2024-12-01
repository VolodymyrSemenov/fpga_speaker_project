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

signal pwm_counter: UNSIGNED(11 downto 0) := (others => '0');
signal sound_counter: UNSIGNED(19 downto 0) := (others => '0');

signal comparator_value: UNSIGNED(11 downto 0);
signal audio_input : STD_LOGIC_VECTOR(11 downto 0);

signal out_data: std_logic_vector(11 downto 0) := (others => '0');
signal ready : std_logic;

signal slow_clock_out: std_logic := '0';
signal counter: unsigned(26 downto 0) := (others => '0');

type state_type is (IDLE, NOTE1, NOTE2, NOTE3, NOTE4);
signal state: state_type := IDLE;
signal state_generated_value: UNSIGNED(15 downto 0);

begin

mic_codec : entity work.ssm2603_i2s port map (
    r_data => X"000" & audio_input,
    l_data => X"000" & audio_input,
    mclk => codec_clock,
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
    clk_out1 => codec_clock,    --12.288
    clk_out2 => pwm_clock,      --163.84
    locked => open,
    reset => '0'
);

mclk <= codec_clock;


--audio_input <= mic_data(22) & mic_data(20) & mic_data(18) & mic_data(16) & mic_data(14) & mic_data(12) & mic_data(10) & mic_data(8) & mic_data(6) & mic_data(4) & mic_data(2) & mic_data(0);
comparator_value <= unsigned(audio_input);
--comparator_value <= unsigned(out_data);
--audio_input <= out_data;


pwm_proc : process(pwm_clock)
begin
    if rising_edge(pwm_clock) then
        pwm_counter <= pwm_counter + 1;
        if comparator_value < pwm_counter then
            modulated <= '0';
        else 
            modulated <= '1'; 
        end if;
        
        sound_counter <= sound_counter + 1;
        if sound_counter < state_generated_value then
            audio_input <= x"400";
        elsif sound_counter < (state_generated_value(15 downto 0) * "10") then 
            audio_input <= x"800";
        elsif sound_counter < (state_generated_value(15 downto 0) * "11") then 
            audio_input <= x"400";
        elsif sound_counter < (state_generated_value(15 downto 0) * "100") then 
            audio_input <= x"000";
        else
            sound_counter <= (others => '0');
        end if;
    end if;
end process pwm_proc;


slow_clock_gen: process(codec_clock)
begin 
    if rising_edge(codec_clock) then 
        if counter = (4110079) then
            slow_clock_out <= '1'; 
            counter <= (others => '0');
        else 
            slow_clock_out <= '0';
            counter <= counter + 1;
        end if;
    end if;
end process slow_clock_gen;

 
state_transition: process(codec_clock)
begin   
     if rising_edge(codec_clock) then
        case state is 
            when IDLE =>  
                if start = '1' then 
                    state <= NOTE1;
                    state_generated_value <= x"F000";
                end if; 
            
            when NOTE1 =>  
                if slow_clock_out = '1' then 
                    state <= NOTE2;
                    state_generated_value <= x"8000";
                end if; 
            
            when NOTE2 =>  
                if slow_clock_out = '1' then 
                    state <= NOTE3;
                    state_generated_value <= x"4000";
                end if; 
            
            when NOTE3 =>  
                if slow_clock_out = '1' then 
                    state <= NOTE4;
                    state_generated_value <= x"2000";
                end if; 
            
            when NOTE4 =>  
                if slow_clock_out = '1' then 
                    state <= IDLE;
                    state_generated_value <= x"0000";
                end if; 
        end case;
    end if;
end process state_transition;


end Behavioral;
