library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity odev_uc_tb is
end;

architecture bench of odev_uc_tb is

  component odev_uc
      Port ( X : in STD_LOGIC;
             Y : in STD_LOGIC;
             Z : in STD_LOGIC;
             F : out STD_LOGIC);
  end component;

  signal X: STD_LOGIC;
  signal Y: STD_LOGIC;
  signal Z: STD_LOGIC;
  signal F: STD_LOGIC;

begin

  uut: odev_uc port map ( X => X,
                          Y => Y,
                          Z => Z,
                          F => F );

  stimulus: process
  begin
  
    -- Put initialisation code here
    X<='0';
    Y<='0';
    Z<='0';
    wait for 10 ns;
    X<='0';
    Y<='0';
    Z<='1';
    wait for 10 ns;
    X<='0';
    Y<='1';
    Z<='0';
    wait for 10 ns;
    X<='0';
    Y<='1';
    Z<='1';
    wait for 10 ns;
    X<='1';
    Y<='0';
    Z<='0';
    wait for 10 ns;
    X<='1';
    Y<='0';
    Z<='1';
    wait for 10 ns;
    X<='1';
    Y<='1';
    Z<='0';
    wait for 10 ns;
    X<='1';
    Y<='1';
    Z<='1';
    wait for 10 ns;
    -- Put test bench stimulus code here


  end process;


end;