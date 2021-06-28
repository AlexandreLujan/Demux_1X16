LIBRARY work;
USE work.MyPackage.all;

ENTITY DEMUX1X8 IS
    PORT (
	     ENT 	: IN BIT;
		  SEL 	: IN BIT_VECTOR (2 DOWNTO 0);
        OUTPUT : OUT BIT_VECTOR (7 DOWNTO 0)   
		);
END ENTITY;

ARCHITECTURE RTL OF DEMUX1X8 IS

	 SIGNAL AUX : BIT_VECTOR(1 DOWNTO 0);

BEGIN

	 DEMUX1X2_0 : DEMUX1X2 
	 PORT MAP(
		  I => ENT,
		  S => SEL(2), 
        A => AUX(1 DOWNTO 0)
	 );

	 DEMUX1X4_0 : DEMUX1X4
	 PORT MAP(
		  I => AUX(1),
		  S => SEL(1 DOWNTO 0), 
        A => OUTPUT(7 DOWNTO 4)
	 );
    DEMUX1X4_1 : DEMUX1X4 
	 PORT MAP(
		  I => AUX(0),
		  S => SEL(1 DOWNTO 0), 
        A => OUTPUT(3 DOWNTO 0)	 
	 );
   
END ARCHITECTURE;