ENTITY DEMUX1X4 IS
	PORT (
		I : IN BIT;
		S : IN BIT_VECTOR (1 DOWNTO 0);
      A : OUT BIT_VECTOR (3 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE RTL OF DEMUX1X4 IS
   
BEGIN
		  
	A(0) <= '0' WHEN ((S = "00") and (I = '0')) ELSE             
			  '1' WHEN ((S = "00") and (I = '1')) ELSE
			  '0';
			  
	A(1) <= '0' WHEN ((S = "01") and (I = '0')) ELSE             
			  '1' WHEN ((S = "01") and (I = '1')) ELSE
			  '0';
			  
	A(2) <= '0' WHEN ((S = "10") and (I = '0')) ELSE             
			  '1' WHEN ((S = "10") and (I = '1')) ELSE
			  '0';
			  
	A(3) <= '0' WHEN ((S = "11") and (I = '0')) ELSE             
			  '1' WHEN ((S = "11") and (I = '1')) ELSE
			  '0';
   
END ARCHITECTURE;