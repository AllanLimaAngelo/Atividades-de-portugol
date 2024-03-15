/** 
 *     Crie um programa que leia 5 números do usuário, informe o valor desse número ao quadrado e finalize  
 * o programa.
 *     Utilize o laço 'enquanto' para ler os números.
 */


programa
{
	
	funcao inicio()
	{
		inteiro numero, contador = 1
		caracter opcao = 'S'

		escreva("INICIANDO enquanto\n\n")
		
		enquanto (contador <= 3) {		
			escreva("\nInforme o número " + contador + ": ")
			leia(numero)
	
			escreva("\nO quadrado do número " + numero + " é " + numero * numero)
			escreva("\n")
			contador++

			escreva("\nDeseja continuar? (S/N)")
			leia(opcao)

			se ((opcao != 'S') e (opcao != 's')) {
				pare
			}
		}

		escreva("\nINICIANDO faca enquanto\n\n")
		contador = 1
		
		faca {
			escreva("\nInforme o número " + contador + ": ")
			leia(numero)
	
			escreva("\nO quadrado do número " + numero + " é " + numero * numero)
			escreva("\n")
			
			escreva("\nDeseja continuar? (S/N)")
			leia(opcao)

			contador++

		} enquanto ((opcao == 'S') ou (opcao == 's'))


		escreva("\nINICIANDO para\n\n")
		
		para (inteiro i = 1; i <= 5; i++) {
			escreva("\nInforme o número " + i + ": ")
			leia(numero)
	
			escreva("\nO quadrado do número " + numero + " é " + numero * numero)
			escreva("\n")

			escreva("\nDeseja continuar? (S/N)")
			leia(opcao)

			se ((opcao != 'S') e (opcao != 's')) {
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 582; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */