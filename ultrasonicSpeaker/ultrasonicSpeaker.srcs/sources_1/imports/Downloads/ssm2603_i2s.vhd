library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ssm2603_i2s is
    Port ( r_data : in STD_LOGIC_VECTOR (23 downto 0);
           l_data : in STD_LOGIC_VECTOR (23 downto 0);
           mclk : in STD_LOGIC;
           recdat : in STD_LOGIC;
           reclrc : out STD_LOGIC;
           m_data : out STD_LOGIC_VECTOR (23 downto 0);
           bclk : out STD_LOGIC;
           pbdat : out STD_LOGIC;
           pblrc : out STD_LOGIC;
           mute : out STD_LOGIC;
           ready : out STD_LOGIC);
end ssm2603_i2s;

architecture Behavioral of ssm2603_i2s is
signal mclk_sig : std_logic;
signal bclk_sig : std_logic := '0';
signal lrc_sig  : std_logic := '0';
signal mclk_cnt : std_logic := '0';
signal bclk_cnt : unsigned(5 downto 0) := (others => '0');
signal lr_cnt   : unsigned(6 downto 0) := (others => '0');
signal tx_data  : std_logic_vector(63 downto 0);
signal rx_data  : std_logic_vector(63 downto 0);

begin

bclk_proc : process(mclk_sig)
begin
    if rising_edge(mclk_sig) then
        mclk_cnt <= not mclk_cnt;
        lr_cnt <= lr_cnt + 1;
        if mclk_cnt = '1' then
            bclk_sig <= not bclk_sig;
            if bclk_sig = '1' then
                bclk_cnt <= bclk_cnt + 1;
            end if;
        end if;
        if lr_cnt = 127 then
            lrc_sig <= not lrc_sig;
        end if;
    end if;
end process bclk_proc;

tx_data <= '0' & r_data & X"00" & r_data & "0000000";
pbdat <= tx_data(to_integer(bclk_cnt));
rx_data(to_integer(bclk_cnt)) <= recdat;

mclk_sig <= mclk;
m_data <= rx_data(24 downto 1);
bclk <= bclk_sig;
pblrc <= lrc_sig;
reclrc <= lrc_sig;
mute <= '1';

end Behavioral;
