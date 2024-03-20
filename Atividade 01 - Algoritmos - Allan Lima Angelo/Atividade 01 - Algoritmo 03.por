/* 
 * 	3) Crie um algoritmo que solicite o dia, o mês e o ano e informe se a data é válida ou inválida.
 *	Considere o mês de fevereiro com 28 dias. 
*/


programa
{
	
	funcao inicio()
	{
		inteiro dia, mes, ano
		logico data = falso
		
		escreva("Informe o dia: ")
		leia(dia)
		escreva("Informe o mês: ")
		leia(mes)
		escreva("Informe o ano: ")
		leia(ano)

		se(mes >= 1 e mes <= 12) {
			se ((mes == 4 ou mes == 6 ou mes == 9 ou mes == 11) e (dia >= 1 e dia <= 30)) {
				data = verdadeiro
			} senao se((mes == 1 ou mes == 3 ou mes == 5 ou mes == 7 ou mes == 8 ou mes == 10 ou mes == 12) e (dia >= 1 e dia <= 31)) {
				data = verdadeiro 
			} senao se((mes == 2) e (dia >= 1 e dia <= 28)){
				data = verdadeiro
			} senao {
				data = falso
			}
		}

		se(data == verdadeiro) {
			escreva("A data informada é válida.")
		} senao {
			escreva("A data informada é inválida.")
		}
	}
}
		
			
	



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */