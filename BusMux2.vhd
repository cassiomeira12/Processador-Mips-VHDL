--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  09/05/18
--Termino 09/0/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity BusMux2 is
port (
		sel: in std_logic; --Endereco do Registrador
		output: out std_logic_vector(4 downto 0); --Entrada para habilitar escritar
	
		input0: in std_logic_vector(4 downto 0);
		input1: in std_logic_vector(4 downto 0)
		);
end BusMux2;

architecture hardware of BusMux2 is
begin

	process(sel)
	begin
		case (sel) is
			when '0' => output <= input0;
			when '1' => output <= input1;
		end case;
	end process;
	
end hardware;
		