--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  08/05/18
--Termino 28/05/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity MemoriaInstrucao is
port(
		endereco_leitura : in std_logic_vector(31 downto 0);--Endereco da instrucao
		instrucao : out std_logic_vector(31 downto 0)--Codigo da Instrucao
	);
end MemoriaInstrucao;

architecture hardware of MemoriaInstrucao is
	signal endereco : std_logic_vector(5 downto 0);--Armazena o endereco da instrucao
	
	--OPCODE
	constant TIPO_R: std_logic_vector(5 downto 0) := "000000";
	constant BEQ   : std_logic_vector(5 downto 0) := "000100";
	constant SW    : std_logic_vector(5 downto 0) := "101011";
	constant LW    : std_logic_vector(5 downto 0) := "100101";
	constant JUMP  : std_logic_vector(5 downto 0) := "000010";
	--FUNCT
	constant ADD   : std_logic_vector(5 downto 0) := "100000";
	constant SUB   : std_logic_vector(5 downto 0) := "100010";
	constant OAND  : std_logic_vector(5 downto 0) := "100100";
	constant OOR   : std_logic_vector(5 downto 0) := "100101";
	constant SLT   : std_logic_vector(5 downto 0) := "101010";
	--REGISTRADORES
	constant Reg0  : std_logic_vector(4 downto 0) := "00000";
	constant Reg1  : std_logic_vector(4 downto 0) := "00001";
	constant Reg2  : std_logic_vector(4 downto 0) := "00010";
	constant Reg3  : std_logic_vector(4 downto 0) := "00011";
	constant Reg4  : std_logic_vector(4 downto 0) := "00100";
	--ENDERECO DE CADA INSTRUCAO
	constant L1    : std_logic_vector(5 downto 0) := "000001";
	constant L2    : std_logic_vector(5 downto 0) := "000010";
	constant L3    : std_logic_vector(5 downto 0) := "000011";
	constant L4    : std_logic_vector(5 downto 0) := "000100";
	constant L5    : std_logic_vector(5 downto 0) := "000101";
	constant L8    : std_logic_vector(5 downto 0) := "001000";
	constant L9    : std_logic_vector(5 downto 0) := "001001";
	constant L15   : std_logic_vector(5 downto 0) := "001111";
	
begin
	
	endereco <= endereco_leitura(5 downto 0);--Atribuindo o endereco da instrucao
	
	process(endereco)
	begin							    -- [31-26]  [25-21] [20-16] [15-11] [10-6]  [5-0]
		case (endereco) is       -- [opcode] [ rs  ] [ rt  ] [ rd  ] [shamt] [funct]
										 -- [Tipo_R] [font1] [font2] [desti] [deslo] [funcao] (ADD/SUB)
										 -- [Tipo_I] [font]  [desti] [endereco memoria de dados] (LW)
										 -- [Tipo_I] [desti] [font]  [endereco memoria de dados] (SW)
										 -- [ BEQ  ] [reg1]  [reg2]  [endereco    de     desvio]
										 -- [ JUMP ] [               endereco                  ]
			when L1 => instrucao <=    LW   &  Reg0 & Reg1 & "00000"&"00000"&"000000"; -- LW D1,S0(F0)
	      when L2 => instrucao <=    LW   &  Reg0 & Reg2 & "00000"&"00000"&"000000"; -- LW D2,S0(F0)
			
			when L3 => instrucao <=  TIPO_R &  Reg1 & Reg2 &  Reg3  &"00000"&  ADD;    -- ADD D3,F1,F2
--			when L3 => instrucao <=  TIPO_R &  Reg1 & Reg2 &  Reg3  &"00000"&  SUB;    -- SUB D3,F1,F2
--			when L3 => instrucao <=  TIPO_R &  Reg1 & Reg2 &  Reg3  &"00000"&  SLT;    -- SLT D3,F1,F2
			
			--Instrucao para salvar Dado na Memoria de Dados
		   when L4 => instrucao <=    SW   &  Reg2 & Reg1 & "00000"&"00000"&"000000"; -- SW F1,S0(D2)
			
			--Instrucao com Desvio Condicional
		   when L5 => instrucao <=    BEQ  &  Reg1 & Reg2 & "00000"&"00000"&"000010"; -- BEQ F1,F2,02
			--Desvia para L8 quando F1 == F2, soma o PC+1 com o valor do desvio 02
			when L8 => instrucao <=  TIPO_R &  Reg1 & Reg2 &  Reg3  &"00000"&  SUB;    -- SUB D3,F1,F2

			--Instrucao com Desvio Incondicional
			when L9 => instrucao <=   JUMP  &"00000"&"00000"&"00000"&"00000"&  L15; -- SW F2,S0(D1)
			when L15 => instrucao <=   SW   &  Reg2 & Reg1 & "00000"&"00000"&"000000"; -- SW F1,S0(D2)
			
			when others => instrucao <= (others => 'X');
		end case;
	end process;

end hardware;