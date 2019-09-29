--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  05/04/18
--Termino 07/04/18

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Somador is
	port(
			input1 : in std_logic_vector(31 downto 0);--Dado 1
			input2 : in std_logic_vector(31 downto 0);--Dado 2
			result : out std_logic_vector(31 downto 0)--Resultado da Soma
		);
end Somador;

architecture hardware of Somador is 
begin
	
	result <= input1 + input2;--Somando as duas entradas

end hardware;