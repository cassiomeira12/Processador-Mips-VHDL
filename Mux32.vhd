--Projeto de Circuitos Digitais
--Alunos: Cassio Meira Silva
--		  	 Dionleno Silva Oliveira
--Inicio  28/03/18
--Termino 28/03/18

library IEEE; --Adicionadno Biblioteca IEEE
use IEEE.std_logic_1164.all; --Incluindo toda a biblioteca do padrao 1164

entity Mux32 is
port (
		input: in std_logic_vector(4 downto 0); --Endereco do Registrador
		output: out std_logic_vector(31 downto 0); --Entrada para habilitar escritar
	
		entrada0: in std_logic_vector(31 downto 0);
		entrada1: in std_logic_vector(31 downto 0);
		entrada2: in std_logic_vector(31 downto 0);
		entrada3: in std_logic_vector(31 downto 0);
		entrada4: in std_logic_vector(31 downto 0);
		entrada5: in std_logic_vector(31 downto 0);
		entrada6: in std_logic_vector(31 downto 0);
		entrada7: in std_logic_vector(31 downto 0);
	
		entrada8: in std_logic_vector(31 downto 0);
		entrada9: in std_logic_vector(31 downto 0);
		entrada1a: in std_logic_vector(31 downto 0);
		entrada1b: in std_logic_vector(31 downto 0);
		entrada1c: in std_logic_vector(31 downto 0);
		entrada1d: in std_logic_vector(31 downto 0);
		entrada1e: in std_logic_vector(31 downto 0);
		entrada1f: in std_logic_vector(31 downto 0);
	
		entrada1g: in std_logic_vector(31 downto 0);
		entrada1h: in std_logic_vector(31 downto 0);
		entrada1i: in std_logic_vector(31 downto 0);
		entrada1j: in std_logic_vector(31 downto 0);
		entrada2k: in std_logic_vector(31 downto 0);
		entrada2l: in std_logic_vector(31 downto 0);
		entrada2m: in std_logic_vector(31 downto 0);
		entrada2n: in std_logic_vector(31 downto 0);
		
		entrada2o: in std_logic_vector(31 downto 0);
		entrada2p: in std_logic_vector(31 downto 0);
		entrada2q: in std_logic_vector(31 downto 0);
		entrada2r: in std_logic_vector(31 downto 0);
		entrada2s: in std_logic_vector(31 downto 0);
		entrada2t: in std_logic_vector(31 downto 0);
		entrada3u: in std_logic_vector(31 downto 0);
		entrada3v: in std_logic_vector(31 downto 0)
	
	);
end Mux32;

architecture hardware of Mux32 is
begin

	process(input)
	begin
		
		case (input) is
			when "00000" => output <= entrada0;
			when "00001" => output <= entrada1;
			when "00010" => output <= entrada2;
			when "00011" => output <= entrada3;
			when "00100" => output <= entrada4;
			when "00101" => output <= entrada5;
			when "00110" => output <= entrada6;
			when "00111" => output <= entrada7;
			
			when "01000" => output <= entrada8;
			when "01001" => output <= entrada9;
			when "01010" => output <= entrada1a;
			when "01011" => output <= entrada1b;
			when "01100" => output <= entrada1c;
			when "01101" => output <= entrada1d;
			when "01110" => output <= entrada1e;
			when "01111" => output <= entrada1f;
			
			when "10000" => output <= entrada1g;
			when "10001" => output <= entrada1h;
			when "10010" => output <= entrada1i;
			when "10011" => output <= entrada1j;
			when "10100" => output <= entrada2k;
			when "10101" => output <= entrada2l;
			when "10110" => output <= entrada2m;
			when "10111" => output <= entrada2n;
			
			when "11000" => output <= entrada2o;
			when "11001" => output <= entrada2p;
			when "11010" => output <= entrada2q;
			when "11011" => output <= entrada2r;
			when "11100" => output <= entrada2s;
			when "11101" => output <= entrada2t;
			when "11110" => output <= entrada3u;
			when "11111" => output <= entrada3v;
		end case;
		
	end process;

end hardware;