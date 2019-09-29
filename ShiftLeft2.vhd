--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  09/05/18
--Termino 09/05/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity ShiftLeft2 is
port (
		input : in std_logic_vector(31 downto 0) ;
		output : out std_logic_vector(31 downto 0)
		);
end ShiftLeft2;

architecture hardware of ShiftLeft2 is
	signal size : integer := 32;
	signal temp : std_logic_vector(31 downto 0) := (others => '0');
begin
	
	process(input)
	begin
		for i in 0 to size-(2+1) loop
			temp(i+2) <= input(i);
		end loop;
	end process;
	
	output <= temp;
	
end hardware;