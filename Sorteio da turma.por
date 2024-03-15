/* Clique no [+] à esquerda par aabrir o comentário
 *  
 * PROGRAMA QUE FAZ SORTEIO DE UMA LISTA DE ALUNOS E OS DIVIDE EM 6 GRUPOS
 * 
 * Criado por Ricardo de Jesus Oliveira 
 * contato: ricdejoliveira@gmail.com
 * 
 * Criação: 19/08/2021
 */

programa
{
	inclua biblioteca Util --> u	
	const inteiro NUMERO_ALUNOS = 35, NR_PARTICIPANTES = 7

	inteiro vSorteados[NUMERO_ALUNOS], nr
	//inteiro vteste[NUMERO_ALUNOS]
	
	funcao inicio()
	{
		inteiro 	vGrupo1[7], vGrupo2[7], 
				vGrupo3[7], vGrupo4[7],
				vGrupo5[7], vGrupo6[5]
		
		//nr = NR_PARTICIPANTES
		//Inicializa o vetor com -1
		InicializaVetorSorteados()
		
		// Faz o sorteio de um grupo por vez
		// O vetor de cada grupo é passado por parâmetro para o sorteio
		// O segundo parâmetro é a quantidade de elementos do grupo
		Sorteio(vGrupo1, 7)
		Sorteio(vGrupo2, 7)
		Sorteio(vGrupo3, 7)
		Sorteio(vGrupo4, 7)
		Sorteio(vGrupo5, 7)
		//Sorteio(vGrupo6, 5)
		
		// Imprime um grupo por vez
		// O vetor de cada grupo é passado por parâmetro para a impressão
		// O segundo parâmetro é a quantidade de elementos do grupo
		// O terceiro parâmetro é o número do grupo para impressão
		Imprime(vGrupo1, 7, '1')
		Imprime(vGrupo2, 7, '2')
		Imprime(vGrupo3, 7, '3')
		Imprime(vGrupo4, 7, '4')
		Imprime(vGrupo5, 7, '5')
		//Imprime(vGrupo6, 5, '6')
	}

	funcao InicializaVetorSorteados()
	{
		para (inteiro k=0; k<NUMERO_ALUNOS; k++){
				vSorteados[k] = -1
			}
	}

	funcao Sorteio(inteiro pVet[], inteiro pNumParticipantes)
	{			
		logico Sorteia = verdadeiro, Achou = falso
		inteiro sorteado
		inteiro p, na

		na = NUMERO_ALUNOS
		// p recebe número de elementos que cabem no grupo (6 ou 7)
		p = pNumParticipantes

		//sorteia um índice dos alunos para cada posição do grupo
		para (inteiro i=0; i<p; i++){
			faca{
				// sorteia um índice de 0 a 35, que corresponde ao nome de um dos alunos
				// são 36 alunos de modo que o índice 0 correposnde ao aluno 1 
				// e o índice 35 ao aluno 36
				sorteado = u.sorteia(0, na-1)

				// rotina que verifica se o número sorteado já havia sido sorteado antes
				para (inteiro j=0; j<na; j++){
					se (sorteado == vSorteados[j]){
						Achou = verdadeiro
						Sorteia = verdadeiro
						pare
					}
					senao{
						Achou = falso
						Sorteia = falso
					}
				}				
			}enquanto (Sorteia) // Enquanto o sorteado não for válido, continua sorteando

			// se o sorteado não foi encontrado no vetor de sorteados
			// então grava o sorteado no grupo
			se (nao Achou)
				pVet[i] = sorteado

			// grava o sorteado numa posição válida do vetor dos sorteados
			// posição válida é aquela que ainda esta com -1
			// posições diferentes de -1 já está com algum sorteado gravado
			// é necessário percorrer todo vetor de sorteados, pois os grupos são sorteados
			// em momentos diferentes. Então não sei qual posição do vetor de sorteados
			// já está preenchida
			para (inteiro k=0; k<na; k++){
				se (vSorteados[k] == -1){
					vSorteados[k] = sorteado
					pare
				}
			}
		}
	}

	funcao Imprime(inteiro pVet[], inteiro pNumParticipantes, caracter pNrGrupo)
	{
		cadeia vetor[] = {  
			"01-ALLAN ANGELO",       "02-ANDRE TOYMOTO", 	"03-ANDRÉ LUIZ",		"04-ANDRÉ SATHLER",		"05-ANDRESSA COMBAT", 
			"06-ARTHUR CANTO",   	"07-ARTHUR PEREIRA",	"08-CAROLINA ROCHA",     "09-CRISTIANO ARRUDA",	"10-DANIEL RIBEIRO", 
			"11-DANIELA BULHÕES",	"12-DANILO SIQUEIRA",   	"13-EVELYN ANICETO",	"14-FERNANDA MELO",      "15-GUSTAVO OLIVEIRA", 
			"16-JOHON GOMES",		"17-JONATHAN CARDOSO",	"18-JOSÉ LUIZ",		"19-JULIA FERREIRA",	"20-KAREN CÂMARA", 
			"21-KENNY LUCAS",		"22-LARISSA RAHAL",		"23-LEILSON MARQUES",	"24-LEONARD HIMMELSEHER","25-LUCIANO COSTA", 
			"26-LUIS FERNANDO",		"27-MARCELO SOUZA",		"28-MARCIO BOKEL",		"29-MIGUEL RAMOS",       "30-PÁBULLO MOTTA", 
			"31-PAULA BEATRIZ",		"32-PAULO HENRIQUE",   	"33-RAPAHEL GOMES", 	"34-RODRIGO MARQUES",	"35-WILLIAM SILVA"}
		inteiro p

		p = pNumParticipantes

		// Imprime o número do grupo
		escreva("GRUPO ", pNrGrupo, "\n")
		escreva("---------------------------\n")

		// Percorre a lista de elementos do grupo para imprimir um a um
		para (inteiro i=0; i<p; i++)
		{
			// Imprime uma lista dos sorteados, mostrando um contador,
			// o nome do aluno com sua ordem  na lista e um número que
			// é o índice sorteado anteriormente
			// 
			// A expressão vetor[pVet[i]] faz o seguinte:
			//
			// vetor[] -> é o vetor com a lista de nomes. Possui 36 elementos com posição de 0 a 35
			// pVet[i] -> representa o vetor do grupo passado por parâmetro na chamada da 
			//            funcao inicio. Os grupos de 1 a 5 possuem 6 elementos com posição de 0 a 5.
			//            resulta no índice armazenado no sorteio em cada posição do grupo.
			// vetor[pVet[i]] -> Os dois juntos trazem como retorno o nome do aluno que está no 
			//                   índice retornado do grupo
								    
			escreva(i+1, " - ", vetor[pVet[i]], " - ", pVet[i], "\n")
		}
		escreva("---------------------------\n") // Finaliza a impressão do grupo
	}
}







/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {sorteado, 61, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */