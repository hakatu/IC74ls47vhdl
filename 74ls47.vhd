library ieee;
use ieee.std_logic_1164.all;
entity thinghiem4 is
port ( LT,RBI,RBO : in  std_logic;
		A : in std_logic_vector(3 downto 0);
		y : out std_logic_vector(6 downto 0));
end entity;
architecture dataflow of thinghiem4 is
signal temp1,temp2 : std_logic_vector(6 downto 0);
begin
	with A select temp1 <=	"0000001" when "0000",
							"1001111" when "0001",
							"0010010" when "0010",
							"0000110" when "0011",
							"1001100" when "0100",
							"0100100" when "0101",
							"1100000" when "0110",
							"0001111" when "0111",
							"0000000" when "1000",
							"0001100" when "1001",
							"1110010" when "1010",
							"1100110" when "1011",
							"1011100" when "1100",
							"0110100" when "1101",
							"1110000" when "1110",
							"1111111" when "1111";
	with A select temp2 <=	"1111111" when "0000",
							"1001111" when "0001",
							"0010010" when "0010",
							"0000110" when "0011",
							"1001100" when "0100",
							"0100100" when "0101",
							"1100000" when "0110",
							"0001111" when "0111",
							"0000000" when "1000",
							"0001100" when "1001",
							"1110010" when "1010",
							"1100110" when "1011",
							"1011100" when "1100",
							"0110100" when "1101",
							"1110000" when "1110",
							"1111111" when "1111";
		y <= temp1 when ( LT and RBI ) = '1' else
			temp2 when ( LT and not RBI ) = '1' else
			"1111111" when RBO = '0' else
			"0000000";
end architecture;
