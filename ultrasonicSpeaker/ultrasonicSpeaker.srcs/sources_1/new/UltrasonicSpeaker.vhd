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
signal mic_data_12: UNSIGNED(11 downto 0);
signal test : STD_LOGIC_VECTOR(11 downto 0);

signal out_data: std_logic_vector(11 downto 0) := (others => '0');
signal ready : std_logic;

signal slow_clock_out: std_logic := '0';
signal counter: unsigned(26 downto 0) := (others => '0');

signal tone_terminal_count: unsigned(6 downto 0) := (others => '0');
signal tone_counter: unsigned(6 downto 0) := (others => '0');
signal half_tone_terminal_count: unsigned(6 downto 0) := (others => '0');

constant COUNT_C5 : unsigned (6 downto 0) := TO_UNSIGNED(92, 7);
constant COUNT_E5 : unsigned (6 downto 0) := TO_UNSIGNED(73, 7);
constant COUNT_G5 : unsigned (6 downto 0) := TO_UNSIGNED(61, 7);
constant COUNT_C6 : unsigned (6 downto 0) := TO_UNSIGNED(46, 7);

type state_type is (IDLE, NOTE1, NOTE2, NOTE3, NOTE4);
signal state: state_type := IDLE;

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
half_tone_terminal_count <= '0' & tone_terminal_count(6 downto 1); 


--test <= mic_data(22) & mic_data(20) & mic_data(18) & mic_data(16) & mic_data(14) & mic_data(12) & mic_data(10) & mic_data(8) & mic_data(6) & mic_data(4) & mic_data(2) & mic_data(0);
--mic_data_12 <= unsigned(test);
mic_data_12 <= unsigned(out_data);
test <= out_data;


pwm_proc : process(pwm_clock)
begin
    if rising_edge(pwm_clock) then
        pwm_counter <= pwm_counter + 1;
        if mic_data_12 < pwm_counter then
            modulated <= '0';
        else 
            modulated <= '1'; 
        end if;
        
--        sound_counter <= sound_counter + 1;
--        if sound_counter < X"4000" then
--            test <= x"400";
--        elsif sound_counter < X"8000" then 
--            test <= x"800";
--        elsif sound_counter < X"C000" then 
--            test <= x"400";
--        else
--            test <= x"000";
--        end if;
    end if;
end process pwm_proc;


slow_clock_gen: process(codec_clock)
begin 
    if rising_edge(codec_clock) then 
        if counter = (8110079) then
            slow_clock_out <= '1'; 
            counter <= (others => '0');
        else 
            slow_clock_out <= '0';
            counter <= counter + 1;
        end if;
    end if;
end process slow_clock_gen;

tone_counter_proc: process(codec_clock)
begin 
    if rising_edge(codec_clock) then
        --if ready = '1' then 
            if tone_counter = tone_terminal_count then
                tone_counter <= (others => '0');
            else
                tone_counter <= tone_counter + 1;
            end if;
            
            if tone_counter < half_tone_terminal_count then     
                out_data <= X"FFF" ; 
            else 
                out_data <= (others => '0');
            end if;
        --end if; 
    end if; 
 end process tone_counter_proc;
 
 state_transition: process(codec_clock)
begin   
     if rising_edge(codec_clock) then
        case state is 
            when IDLE =>  
                if start = '1' then 
                    tone_terminal_count <= COUNT_C5;
                    state <= NOTE1;
                end if; 
            
            when NOTE1 =>  
                if slow_clock_out = '1' then 
                    tone_terminal_count <= COUNT_E5;
                    state <= NOTE2;
                end if; 
            
            when NOTE2 =>  
                if slow_clock_out = '1' then 
                    tone_terminal_count <= COUNT_G5;
                    state <= NOTE3;
                end if; 
            
            when NOTE3 =>  
                if slow_clock_out = '1' then 
                    tone_terminal_count <= COUNT_C6;
                    state <= NOTE4;
                end if; 
            
            when NOTE4 =>  
                if slow_clock_out = '1' then 
                    tone_terminal_count <= (others=>'0');
                    state <= IDLE;
                end if; 
        end case;
    end if;
end process state_transition;


end Behavioral;
