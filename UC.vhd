--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  28/03/18
--Termino 28/05/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity UC is
port(
		clk : in std_logic;
		
		enable_opcode : in std_logic;
		opcode : in std_logic_vector(5 downto 0); --Instrucao
		
		sempre1 : out std_logic_vector(31 downto 0);--Sinal para primeira instrucao e para o somador
		sel : out std_logic;--Seletor do Multiplexador de instrucao
		primeira_instrucao : out std_logic;
		enable_instrucao : out std_logic;
		enablePC : out std_logic;
		RegDst : out std_logic;
		DVI : out std_logic;
		DvC : out std_logic;
		LerMem : out std_logic;
		MemParaReg : out std_logic;
		ULAOp : out std_logic_vector(1 downto 0);
		EscMem : out std_logic;
		ULAFonte : out std_logic;
		EscReg : out std_logic;
		
		estado : out std_logic_vector(3 downto 0)
	  );
end UC;


--Instrucao do tipo R
-- 1. Busca da instrucao na memoria de instrucoes e incremento do PC
-- 2. Leitura dos registradores 1 e 2
-- 3. A ULA opera sobre os dados lidos
-- 4. O resultado eh escrito no banco de registradores

--Instrucao do tipo I
-- 1. Busca da instrucao na memoria de instrucoes e incremento do PC
-- 2. Leitura do conteudo do registrador 1
-- 3. Calculo da soma do valor lido com o resultado da extensao (deslocamento)
-- 4. O resultado da soma eh usado para enderecar a memoria de dados
-- 5. O dado vindo da unidade de memoria eh escrito no banco de registradores

--Instrucao Branch Equal
-- 1. Busca da instrucao na memoria de instrucoes e incremento do PC
-- 2. Leitura do conteudo dos registradores 1 e 2
-- 3. Realizacao de uma subtracao pela ULA sobre os dois valores. O valor de PC+4 eh
--		somado ao resultado da extensao do sinal dos 16 bits menos significativos da instrucao (deslocamento)
--		deslocado de dois bits a esquerda. O resultado dessa soma eh o endereco alvo do desvio.
-- 4. A saida "zero" da ULA eh usada para decidir se o PC deve ser atualizado com o valor de PC+4 ou
--		com o valor do endereco-alvo do desvio condicional.

architecture hardware of UC is
	
	constant TIPO_R: std_logic_vector(5 downto 0) := "000000";--Codigo da instrucao Tipo_R
	constant BEQ   : std_logic_vector(5 downto 0) := "000100";--Codigo da instrucao BEQ
	constant SW    : std_logic_vector(5 downto 0) := "101011";--Codigo da instrucao SW
	constant LW    : std_logic_vector(5 downto 0) := "100101";--Codigo da instrucao LW
	constant JUMP  : std_logic_vector(5 downto 0) := "000010";--Codigo da instrucao JUMP
	
	signal instrucao_opcode : std_logic_vector(5 downto 0) := "111111";--Instrucao falsa
	
	signal cont_sel : integer range 0 to 2 := 0;--Contador 
	--signal cont_primeira_instrucao : integer range 0 to 4 := 0;--Contador

	--Estados da Maquina de Estados da Unidade de Controle
	type estados is(busca_instrucao, decodificacao_instrucao, calculo_endereco_memoria,
					 execucao, fim_desvio_condicional, fim_desvio_incondicional,
					 fim_instrucao_r, acesso_memoria_leitura, acesso_memoria_escrita, 
					 passo_escrita, fim_instrucao);
					 
					 
	signal estado_atual : estados := fim_instrucao;--estado atual da UC
	signal proximo_estado : estados := fim_instrucao;--proximo estado da UC
					 					 
-- MAQUINA DE ESTADOS

-- decodificacao_instrucao  -> (LW/SW)  -> calculo_endereco_memoria				 
-- decodificacao_instrucao  -> (TIPO_R) -> execucao
-- decodificacao_instrucao  -> (BEQ)    -> fim_desvio_condicional
-- decodificacao_instrucao  -> (JUMP)   -> fim_desvio_incondicional	
-- calculo_endereco_memoria -> (LW)	    -> acesso_memoria_leitura
-- calculo_endereco_memoria -> (SW)     -> acesso_memoria_escrita
-- execucao                 -> () -> fim_instrucao_r
-- acesso_memoria_leitura   -> () -> passo_escrita
-- passo_escrita            -> () -> busca_instrucao
-- acesso_memoria_escrita   -> () -> busca_instrucao
-- fim_instrucao_r          -> () -> busca_instrucao
-- fim_desvio_condicional   -> () -> busca_instrucao
-- fim_desvio_incondicional -> () -> busca_instrucao
					 
begin

	sempre1 <= "00000000000000000000000000000001";
	
	-- Processo para alterar estado atual
	process(clk)
	begin
		if(clk'event and clk = '1') then
			estado_atual <= proximo_estado;--Altera o estado_atual para o proximo_estado a cada ciclo de clock	
		end if;
	end process;
	
	process(clk)
	begin
		if (clk'event and clk = '0') then
			case (cont_sel) is
				when 0 =>
					sel <= '1';--Usado para habilitar o endereco da primeira intrucao
					primeira_instrucao <= '0';--Desabilita para esperar o sinal do opcode estabilizar
					cont_sel <= cont_sel + 1;
				when 1 =>
					sel <= '1';--Usado para habilitar o endereco da primeira instrucao
					primeira_instrucao <= '1';--Habilita para receber o upcode da primeira instrucao
					cont_sel <= cont_sel + 1;
				when 2 =>
					sel <= '0';--Desabilita para o endereco da proxima instrucao vir do PC+1
					primeira_instrucao <= '1';--Dexa o sinal sempre habilitado
				when others =>
			end case;
		end if;
	end process;
	
	-- Processo que permite receber o opcode da proxima instrucao
	process(enable_opcode)
	begin
		if(enable_opcode'event and enable_opcode = '1') then
			instrucao_opcode <= opcode;--Atualiza a instrucao_opcode para o novo opcode de instrucao
		end if;
	end process;

	-- Processo que controla a maquina de estados
	maquina_estados: process(clk)
	begin
		if(clk'event and clk = '1') then
			
			case(instrucao_opcode) is
				when TIPO_R => --INSTRUCAO [TIPO R]
					case(estado_atual) is
						
						when busca_instrucao => estado <= "0000";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= decodificacao_instrucao;--Atualiza a proxima instrucao
						
						when decodificacao_instrucao => estado <= "0001";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado<= execucao;--Atualiza a proxima instrucao
							
						when execucao => estado <= "0110";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= '1';--Seleciona o Registrador de Escrita vendo dos bits [15..11] (campo rd)
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "10";--Envia um sinal para OperacaoULA (Instrucao Tipo_R)
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado<= fim_instrucao_r;--Atualiza a proxima instrucao
							
						when fim_instrucao_r =>	estado <= "0111";
							enable_instrucao <= '0';
							enablePC   <= '1';--Habilita o registrador que guarda o endereco da proxima instrucao atualizar
				 			RegDst     <= '1';--Seleciona o Registrador de Escrita vendo dos bits [15..11] (campo rd)
				         DVI        <= '0';
				   		DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';--Seleciona o resultado da ULA para ser o dado escrito no Banco de Registradores
							ULAOp      <= "10";--Envia um sinal para OperacaoULA (Instrucao Tipo_R)
							EscMem     <= '0';
							ULAFonte   <= '0';--"data2" de entrada da ULA vem do "read_data_2" do Banco de Registradores
							EscReg     <= '1';--Habilita o Banco de Registradores para escrita
							proximo_estado<= fim_instrucao;--Atualiza a proxima instrucao
							
						when fim_instrucao => estado <= "1111";
							enable_instrucao <= '1';--Habilita o Progam Counter a se atualizar para o endereco da proxima instrucao
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= busca_instrucao;--Atualiza a proxima instrucao
							
						when others => proximo_estado<= estado_atual;
					end case;
					
				when BEQ =>    --INSTRUCAO BEQ
					case(estado_atual) is
						
						when busca_instrucao => estado <= "0000";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= 'X';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "00";
							EscMem     <= '0';	
							ULAFonte   <= '0';
							EscReg     <= '0';
						   proximo_estado <= decodificacao_instrucao;--Atualiza a proxima instrucao
						
						when decodificacao_instrucao => estado <= "0001";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= 'X';
				         DVI        <= '0';
							DvC        <= '1';--Habilita o sinal de Desvio Condicional
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "01";--Manda para OperacaoULA o codigo para um SUBTRACAO
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado<= fim_desvio_condicional;--Atualiza a proxima instrucao
						
						when fim_desvio_condicional => estado <= "1000";
							enable_instrucao <= '0';
							enablePC   <= '1';--Habilita o registrador que guarda o endereco da proxima instrucao atualizar
							RegDst     <= 'X';
				         DVI        <= '0';
							DvC        <= '1';--Habilita o sinal de Desvio Condicional
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "01";--Manda para OperacaoULA o codigo para um SUBTRACAO
							EscMem     <= '0';	
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado<= fim_instrucao;--Atualiza a proxima instrucao
							
						when fim_instrucao => estado <= "1111";
							enable_instrucao <= '1';--Habilita o Progam Counter a se atualizar para o endereco da proxima instrucao
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= busca_instrucao;--Atualiza a proxima instrucao
							
						when others => proximo_estado<= estado_atual;
					end case;
						
				when SW =>     --INSTRUCAO SW [TIPO I]
					case(estado_atual) is
						
						when busca_instrucao => estado <= "0000";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= 'X';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= decodificacao_instrucao;--Atualiza a proxima instrucao
						
						when decodificacao_instrucao => estado <= "0001";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= 'X';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado<= calculo_endereco_memoria;--Atualiza a proxima instrucao
							
						when calculo_endereco_memoria => estado <= "0010";
							enable_instrucao <= '0';
							enablePC   <= '0';
			   			RegDst     <= 'X';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "00";--Manda para OperacaoULA o codigo para um ADICAO
							EscMem     <= '0';
							ULAFonte   <= '1';--"data2" de entrada da ULA vem do Extensor de Sinal
							EscReg     <= '0';
							proximo_estado<= acesso_memoria_escrita;--Atualiza a proxima instrucao
							
						when acesso_memoria_escrita => estado <= "0101";
							enable_instrucao <= '0';
							enablePC   <= '1';--Habilita o registrador que guarda o endereco da proxima instrucao atualizar
			 				RegDst     <= 'X';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "00";
							EscMem     <= '1';--Habilita a Memoria de Dados para escrita
							ULAFonte   <= '1';--"data2" de entrada da ULA vem do Extensor de Sinal
							EscReg     <= '0';
							proximo_estado<= fim_instrucao;--Atualiza a proxima instrucao
						
						when fim_instrucao => estado <= "1111";
							enable_instrucao <= '1';--Habilita o Progam Counter a se atualizar para o endereco da proxima instrucao
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= busca_instrucao;--Atualiza a proxima instrucao
							
						when others => proximo_estado<= estado_atual;
					end case;
				
				when LW =>     --INSTRUCAO LW [TUPO I]
					case(estado_atual) is
					
						when busca_instrucao => estado <= "0000";
							enable_instrucao <= '0';
							enablePC   <= '0';
	   					RegDst     <= '0';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= decodificacao_instrucao;--Atualiza a proxima instrucao
						
						when decodificacao_instrucao => estado <= "0001";
							enable_instrucao <= '0';
							enablePC   <= '0';
	   					RegDst     <= '0';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado<= calculo_endereco_memoria;--Atualiza a proxima instrucao
						
						when calculo_endereco_memoria => estado <= "0010";
							enable_instrucao <= '0';
							enablePC   <= '0';
	   					RegDst     <= '0';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '1';--Habilita a Memoria de Dados para leitura
							MemParaReg <= '0';
							ULAOp      <= "00";--Manda para OperacaoULA o codigo para um ADICAO
							EscMem     <= '0';
							ULAFonte   <= '1';--"data2" de entrada da ULA vem do Extensor de Sinal
			   			EscReg     <= '0';
							proximo_estado<= acesso_memoria_leitura;--Atualiza a proxima instrucao
							
						when acesso_memoria_leitura => estado <= "0011";
							enable_instrucao <= '0';
							enablePC   <= '0';
	   					RegDst     <= '0';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '1';--Habilita a Memoria de Dados para leitura
							MemParaReg <= '1';--Seleciona o Mux para passar o dado vindo da Memoria de Dados
							ULAOp      <= "00";--Manda para OperacaoULA o codigo para um ADICAO
							EscMem     <= '0';
							ULAFonte   <= '1';--"data2" de entrada da ULA vem do Extensor de Sinal
							EscReg     <= '0';
							proximo_estado<= passo_escrita;--Atualiza a proxima instrucao
							
						when passo_escrita => estado <= "0100";
							enable_instrucao <= '0';
							enablePC   <= '1';--Habilita o registrador que guarda o endereco da proxima instrucao atualizar
	   					RegDst     <= '0';
			            DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '1';--Habilita a Memoria de Dados para leitura
							MemParaReg <= '1';--Seleciona o Mux para passar o dado vindo da Memoria de Dados
							ULAOp      <= "00";--Manda para OperacaoULA o codigo para um ADICAO
							EscMem     <= '0';
							ULAFonte   <= '1';--"data2" de entrada da ULA vem do Extensor de Sinal
							EscReg     <= '1';--Habilita o Banco de Registradores para escrita
							proximo_estado<= fim_instrucao;--Atualiza a proxima instrucao
						
						when fim_instrucao => estado <= "1111";
							enable_instrucao <= '1';--Habilita o Progam Counter a se atualizar para o endereco da proxima instrucao
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= busca_instrucao;--Atualiza a proxima instrucao
						
						when others => proximo_estado<= estado_atual;
					end case;
			
				when JUMP =>   --INSTRUCAO JUMP [TIPO J]
					case(estado_atual) is
						
						when busca_instrucao => estado <= "0000";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= 'X';
			      	   DVI        <= '0';
							DvC        <= 'X';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "XX";
							EscMem     <= '0';
							ULAFonte   <= 'X';
							EscReg     <= '0';
							proximo_estado <= decodificacao_instrucao;--Atualiza a proxima instrucao
						
						when decodificacao_instrucao => estado <= "0001";
							enable_instrucao <= '0';
							enablePC   <= '0';
							RegDst     <= 'X';
			       	   DVI        <= '1';--Habilita o Desvio Incondicional
							DvC        <= 'X';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "XX";
							EscMem     <= '0';
							ULAFonte   <= 'X';
							EscReg     <= '0';
							proximo_estado<= fim_desvio_incondicional;--Atualiza a proxima instrucao
							
						when fim_desvio_incondicional => estado <= "1001";
							enable_instrucao <= '0';
							enablePC   <= '1';--Habilita o registrador que guarda o endereco da proxima instrucao atualizar
							RegDst     <= 'X';
			      	   DVI        <= '1';--Habilita o Desvio Incondicional
							DvC        <= 'X';
							LerMem     <= '0';
							MemParaReg <= 'X';
							ULAOp      <= "XX";
							EscMem     <= '0';
							ULAFonte   <= 'X';
							EscReg     <= '0';
							proximo_estado<= fim_instrucao;--Atualiza a proxima instrucao
							
						when fim_instrucao => estado <= "1111";
							enable_instrucao <= '1';--Habilita o Progam Counter a se atualizar para o endereco da proxima instrucao
							enablePC   <= '0';
							RegDst     <= '0';
				         DVI        <= '0';
							DvC        <= '0';
							LerMem     <= '0';
							MemParaReg <= '0';
							ULAOp      <= "00";
							EscMem     <= '0';
							ULAFonte   <= '0';
							EscReg     <= '0';
							proximo_estado <= busca_instrucao;--Atualiza a proxima instrucao
							
						when others => proximo_estado <= estado_atual;
					end case;

				when "111111" =>--INSTRUCAO FALSA
					enable_instrucao <= '1';--Ativa o enable_instrucao para receber a proxima instrucao
				when others =>
			end case;
		
		end if;	
	end process;


end hardware;
