--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  11/05/18
--Termino 11/05/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity Concatenador is
port(
		input1: in std_logic_vector(25 downto 0);--28
		input2: in std_logic_vector(5 downto 0);--  4
		output: out std_logic_vector(31 downto 0)
	  );
end Concatenador;

architecture hardware of Concatenador is
	signal temp : std_logic_vector(31 downto 0) := (others => '0');
begin
	
	process(input1, input2)
	begin
		for i in 26 to 31 loop
			temp(i) <= input2(i-26);
		end loop;
		for i in 0 to 25 loop
			temp(i) <= input1(i);
		end loop;
	end process;
	
	output <= temp;

end hardware;