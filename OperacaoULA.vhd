--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  28/03/18
--Termino 30/03/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity OperacaoULA is
port(
		ULAOp: in std_logic_vector(1 downto 0);
		Instrucao: in std_logic_vector(5 downto 0);
		Operacao: out std_logic_vector(2 downto 0)
	  );
end OperacaoULA;

architecture hardware of OperacaoULA is

	constant AAND : std_logic_vector(2 downto 0) := "000";--Codigo da Operacao AND
	constant OOR  : std_logic_vector(2 downto 0) := "001";--Codigo da Operacao OR
	constant AADD : std_logic_vector(2 downto 0) := "010";--Codigo da Operacao ADD
	constant SSUB : std_logic_vector(2 downto 0) := "110";--Codigo da Operacao SUB
	constant SSLT : std_logic_vector(2 downto 0) := "111";--Codigo da Operacao SLT

begin
	
	process(ULAOp, Instrucao)
	begin 
		case ULAOp is
			when "00" => Operacao <= AADD;--Envia Operacao ADD para ULA
			when "01" => Operacao <= SSUB;--Envia Operacao SUB para ULA
			when "10" =>
				case Instrucao is
					when "100000" => Operacao <= AADD;--Envia Operacao ADD para ULA
					when "100010" => Operacao <= SSUB;--Envia Operacao SUB para ULA
					when "100100" => Operacao <= AAND;--Envia Operacao AND para ULA
					when "100101" => Operacao <= OOR;--Envia Operacao OR para ULA
					when "101010" => Operacao <= SSLT;--Envia Operacao SLT para ULA
					when others   => Operacao <= "XXX";	
				end case;
			when others => Operacao <= "XXX";
		end case;
	end process;
	
end hardware;