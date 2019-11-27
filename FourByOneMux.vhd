--================
-- Kris Bickham ==
-- Fri 9.21.18  ==
-- 4x1 Mux 1 bit==
--================
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourByOneMux is
	Port (A, B, C, D: in std_logic;
			sel : in std_logic_vector (1 downto 0);
			Outp: out std_logic);
		
end FourByOneMux;

architecture Behavioral of FourByOneMux is
begin

mux : process(A,B,C,D,sel)
begin
	case sel is
		WHEN "00" => Outp <=A after 10 ns;
		WHEN "01" => Outp <=B after 10 ns;
		WHEN "10" => Outp <=C after 10 ns;
		WHEN "11" => Outp <=D after 10 ns;
		WHEN others => Outp <=D ;						
	end case;
End process mux;

end Behavioral;










