--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  28/03/18
--Termino 30/03/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ULA is
port (
		 operacao : in std_logic_vector(2 downto 0);
		 data1 : in std_logic_vector(31 downto 0);
		 data2 : in std_logic_vector(31 downto 0);
		 zero : out std_logic;
		 resultado : out std_logic_vector(31 downto 0)		
		);
end ULA;

architecture hardware of ULA is

	constant AAND : std_logic_vector(2 downto 0) := "000";--Codigo da Operacao AND
	constant OOR  : std_logic_vector(2 downto 0) := "001";--Codigo da Operacao OR
	constant AADD : std_logic_vector(2 downto 0) := "010";--Codigo da Operacao ADD
	constant SSUB : std_logic_vector(2 downto 0) := "110";--Codigo da Operacao SUB
	constant SSLT : std_logic_vector(2 downto 0) := "111";--Codigo da Operacao SLT

begin

	process(operacao)
	variable temp : std_logic_vector(31 downto 0);
	begin
		case operacao is
			when AAND => --Operacao de AND
				temp := data1 AND data2;
			when OOR => --Operacao de OR
				temp := data1 OR data2;
			when AADD => --Operacao de SOMA
				temp := data1 + data2;
			when SSUB => --Operacao de SUBTRACAO
				temp := data1 - data2;
			when SSLT => --Operacao de SET LESS THAN
				if (data1 < data2) then
					temp := "11111111111111111111111111111111";
				else
					temp := "00000000000000000000000000000000";
				end if;
			when others =>
		end case;
		
		if (temp = "00000000000000000000000000000000") then
			zero <= '1';
		else
			zero <= '0';
		end if;
		
		resultado <= temp;
	end process;

end hardware;