library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity barrels is
port(
     din: in std_logic_vector(7 downto 0);
     shift: in std_logic_vector(2 downto 0);
     con: in std_logic_vector(1 downto 0);
     dout: out std_logic_vector(7 downto 0)
     );
end barrels;     

architecture barrels_arch of barrels is
--function to convert shift input to integer

function conv_int(shift: std_logic_vector(2 downto 0))
return integer is
variable ret_var: integer range 0 to 7;

begin
		case shift is
			when "000" => ret_var:=0;
			when "001" => ret_var:=1;
			when "010" => ret_var:=2;
			when "011" => ret_var:=3;
			when "100" => ret_var:=4;
			when "101" => ret_var:=5;
			when "110" => ret_var:=6;
			when "111" => ret_var:=7;
			when others => NULL;
		end case;
return ret_var;
end conv_int;

--function to rotate input data to right by n

function f_ror(din: std_logic_vector(7 downto 0); n: integer range 0 to 7)
return std_logic_vector is
variable ret_var: std_logic_vector(7 downto 0);
begin
	ret_var:=din;
	for i in 0 to 7 loop
		if(i<(n)) then
		ret_var:=ret_var(0)&ret_var(7 downto 1);
		end if;
	end loop;
	return(ret_var);
	end f_ror;

--function to rotate input data to left by n

function f_rol(din: std_logic_vector(7 downto 0); n: integer range 0 to 7)
return std_logic_vector is
variable ret_var: std_logic_vector(7 downto 0);
	begin
	ret_var:=din;
	for i in 0 to 7 loop
		if(i<(n)) then
			ret_var:=ret_var(6 downto 0)&ret_var(7);
		end if;
	end loop;
	return(ret_var);
	end f_rol;

--function to shift input data to right by n

function f_shr(din: std_logic_vector(7 downto 0); n: integer range 0 to 7)
return std_logic_vector is
variable ret_var: std_logic_vector(7 downto 0);
begin
	ret_var:=din;
	for i in 0 to 7 loop
		if(i<(n)) then
			ret_var:='0'&ret_var(7 downto 1);
		end if;
	end loop;
	return(ret_var);
end f_shr;

--function to shift input data to left by n

function f_shl(din: std_logic_vector(7 downto 0); n: integer range 0 to 7)
return std_logic_vector is
variable ret_var: std_logic_vector(7 downto 0);
begin
	ret_var:=din;
		for i in 0 to 7 loop
			if(i<(n)) then
				ret_var:=ret_var(6 downto 0)&'0';
			end if;
		end loop;
	return(ret_var);
end f_shl;

signal n: integer range 0 to 7;
--Architecture begins
begin
	n<=conv_int(shift);
	process(din,n,con)
begin
		case con is
			when "00" => dout <= f_ror(din,n);
			when "01" => dout <= f_rol(din,n);
			when "10" => dout <= f_shr(din,n);
			when "11" => dout <= f_shl(din,n);
			when others => NULL;
		end case;
end process;
end barrels_arch;