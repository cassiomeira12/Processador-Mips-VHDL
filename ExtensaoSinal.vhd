--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  09/05/18
--Termino 09/05/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity ExtensaoSinal is
port (
		input : in std_logic_vector(15 downto 0);
		output : out std_logic_vector(31 downto 0)
		);
end ExtensaoSinal;

architecture hardware of ExtensaoSinal is
begin

	output(input'range) <= input;

end hardware;