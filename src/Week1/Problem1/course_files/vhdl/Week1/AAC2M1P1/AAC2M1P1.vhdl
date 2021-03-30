-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.aac2m1p1_types.all;

entity AAC2M1P1 is
  port(A      : in std_logic_vector(1 downto 0);
       B      : in std_logic_vector(1 downto 0);
       Equals : out std_logic);
end;

architecture structural of AAC2M1P1 is
  signal \c$Equals_selection_res\ : boolean;

begin
  \c$Equals_selection_res\ <= A = B;

  Equals <= '1' when \c$Equals_selection_res\ else
            '0';


end;

