ENTITY DEMUX1X2 IS
    PORT (
	     I :	IN BIT;
		  S : IN BIT;
        A : OUT BIT_VECTOR (1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE RTL OF DEMUX1X2 IS
   
BEGIN
		
	A(0) <= '0' WHEN ((S = '0') and (I = '0')) ELSE             
			  '1' WHEN ((S = '0') and (I = '1')) ELSE
			  '0';
			  
	A(1) <=  '0' WHEN ((S = '1') and (I = '0')) ELSE             
			   '1' WHEN ((S = '1') and (I = '1')) ELSE
				'0';
   
END ARCHITECTURE;