--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  28/03/18
--Termino 28/03/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity Demux is
port (
		enable: in std_logic; --Entrada para habilitar escritar
		input: in std_logic_vector(4 downto 0); --Endereco do Registrador
		
		output_0: out std_logic;
		output_1: out std_logic;
		output_2: out std_logic;
		output_3: out std_logic;
		output_4: out std_logic;
		output_5: out std_logic;
		output_6: out std_logic;
		output_7: out std_logic;
		
		output_8: out std_logic;
		output_9: out std_logic;
		output_10: out std_logic;
		output_11: out std_logic;
		output_12: out std_logic;
		output_13: out std_logic;
		output_14: out std_logic;
		output_15: out std_logic;
		
		output_16: out std_logic;
		output_17: out std_logic;
		output_18: out std_logic;
		output_19: out std_logic;
		output_20: out std_logic;
		output_21: out std_logic;
		output_22: out std_logic;
		output_23: out std_logic;
		
		output_24: out std_logic;
		output_25: out std_logic;
		output_26: out std_logic;
		output_27: out std_logic;
		output_28: out std_logic;
		output_29: out std_logic;
		output_30: out std_logic;
		output_31: out std_logic
	);
end Demux;

architecture hardware of Demux is
begin

	process(enable, input)
	begin
		--if (enable'event or enable = '1') then
		
		if (input = "00000") then output_0 <= enable; else output_0 <= '0'; end if;
		if (input = "00001") then output_1 <= enable; else output_1 <= '0'; end if;
		if (input = "00010") then output_2 <= enable; else output_2 <= '0'; end if;
		if (input = "00011") then output_3 <= enable; else output_3 <= '0'; end if;
		if (input = "00100") then output_4 <= enable; else output_4 <= '0'; end if;
		if (input = "00101") then output_5 <= enable; else output_5 <= '0'; end if;
		if (input = "00110") then output_6 <= enable; else output_6 <= '0'; end if;
		if (input = "00111") then output_7 <= enable; else output_7 <= '0'; end if;
		
		if (input = "01000") then output_8 <= enable; else output_8 <= '0'; end if;
		if (input = "01001") then output_9 <= enable; else output_9 <= '0'; end if;
		if (input = "01010") then output_10 <= enable; else output_10 <= '0'; end if;
		if (input = "01011") then output_11 <= enable; else output_11 <= '0'; end if;
		if (input = "01100") then output_12 <= enable; else output_12 <= '0'; end if;
		if (input = "01101") then output_13 <= enable; else output_13 <= '0'; end if;
		if (input = "01110") then output_14 <= enable; else output_14 <= '0'; end if;
		if (input = "01111") then output_15 <= enable; else output_15 <= '0'; end if;
		
		if (input = "10000") then output_16 <= enable; else output_16 <= '0'; end if;
		if (input = "10001") then output_17 <= enable; else output_17 <= '0'; end if;
		if (input = "10010") then output_18 <= enable; else output_18 <= '0'; end if;
		if (input = "10011") then output_19 <= enable; else output_19 <= '0'; end if;
		if (input = "10100") then output_20 <= enable; else output_20 <= '0'; end if;
		if (input = "10101") then output_21 <= enable; else output_21 <= '0'; end if;
		if (input = "10110") then output_22 <= enable; else output_22 <= '0'; end if;
		if (input = "10111") then output_23 <= enable; else output_23 <= '0'; end if;
		
		if (input = "11000") then output_24 <= enable; else output_24 <= '0'; end if;
		if (input = "11001") then output_25 <= enable; else output_25 <= '0'; end if;
		if (input = "11010") then output_26 <= enable; else output_26 <= '0'; end if;
		if (input = "11011") then output_27 <= enable; else output_27 <= '0'; end if;
		if (input = "11100") then output_28 <= enable; else output_28 <= '0'; end if;
		if (input = "11101") then output_29 <= enable; else output_29 <= '0'; end if;
		if (input = "11110") then output_30 <= enable; else output_30 <= '0'; end if;
		if (input = "11111") then output_31 <= enable; else output_31 <= '0'; end if;
	
		--end if;
	end process;
	
end hardware;