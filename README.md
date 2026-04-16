<img width="1920" height="1080" alt="Screenshot 2026-02-26 114038" src="https://github.com/LogEman/VHDL-Lab11/blob/main/20260416_161809225_iOS.gif?raw=true"/>


<img width="264" height="515" alt="image" src="https://github.com/user-attachments/assets/dfd2c78f-4cc5-4066-be74-d0c60f0ea117" />

**Truth Table for Diagram:**
| A2 | A1 | A0 | Z0 | Z1 | Z2 | Z3 | Z4 | Z5 | Z6 | Z7 |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |

**Equations for Diagram:**

| Z(0-7)= | (A0, | A1, | A2) |
| :---- | :---- | :---- | :---- |
| Z0= | (\!A0 | \!A1 | \!A2) |
| Z1= | (A0 | \!A1 | \!A2) |
| Z2= | (\!A0 | A1 | \!A2) |
| Z3= | (A0 | A1 | \!A2) |
| Z4= | (\!A0 | \!A1 | A2) |
| Z5= | (A0 | \!A1 | A2) |
| Z6= | (\!A0 | A1 | A2) |
| Z7= | (A0 | A1 | A2) |

**Inputs**: Z(0-7)
**Output(s)**: A(0-2)

Tested on hardware and matches table    

"Lab11\Lab11.srcs\sources_1\imports\lab11_helper\encoder.vhd"
```vhdl
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
```
