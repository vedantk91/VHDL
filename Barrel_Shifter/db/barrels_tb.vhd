library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity barrels_tb is
end entity;

architecture barrels_tb_arch of barrels_tb is
component barrels is
	 port (
			  din: in std_logic_vector(7 downto 0);
			 shift: in std_logic_vector(2 downto 0);
			 con: in std_logic_vector(1 downto 0);
			 dout: out std_logic_vector(7 downto 0)
     );
end component;

signal  din:  std_logic_vector(7 downto 0):="11111111";
signal shift:  std_logic_vector(2 downto 0):="000";
signal con:  std_logic_vector(1 downto 0):="00";
signal dout:  std_logic_vector(7 downto 0);

begin
uut: barrels port map(din,shift,con,dout);
process
begin
    for b in 0 to 7 loop
            shift<=shift+1;
       wait for 20 ns;
       end loop;
        wait for 20 ns;
       for i in 0 to 2 loop
            con<=con+1;
       wait for 20 ns;
       end loop;
	end process;
end;