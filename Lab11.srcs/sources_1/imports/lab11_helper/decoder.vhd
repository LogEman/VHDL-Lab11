library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity decoder is
    Port ( A : in STD_LOGIC_VECTOR(2 DOWNTO 0);
           Z : out STD_LOGIC_VECTOR(7 DOWNTO 0));
           
end decoder;

architecture Behavioral of decoder is

begin

Z(0) <= (NOT  A(0)) AND (NOT  A(1)) AND (NOT  A(2));
Z(1) <= (A(0) ) AND ( NOT  A(1) ) AND ( NOT  A(2));
Z(2) <= (NOT  A(0) ) AND ( A(1) ) AND ( NOT  A(2));
Z(3) <= (A(0) ) AND ( A(1) ) AND ( NOT  A(2));
Z(4) <= (NOT  A(0) ) AND ( NOT  A(1) ) AND ( A(2));
Z(5) <= (A(0) ) AND ( NOT  A(1) ) AND ( A(2));
Z(6) <= (NOT  A(0) ) AND ( A(1) ) AND ( A(2));
Z(7) <= (A(0) ) AND ( A(1) ) AND ( A(2));

end Behavioral;
