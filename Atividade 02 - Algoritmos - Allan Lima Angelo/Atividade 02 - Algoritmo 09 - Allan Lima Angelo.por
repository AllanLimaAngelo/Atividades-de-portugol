programa
{
	inclua biblioteca Tipos-->t
	const inteiro P = 10
	const cadeia LINHA = "------------------------------\n"
	cadeia vNomes[P]
	cadeia idade = "0"
	inteiro vIdade[P]
	
	funcao menu() {
		inteiro opcao = 0
		cadeia oPcao = "0"		
		
		faca {
			limpa()
			
			escreva(LINHA)
			escreva("Escolha uma opção\n")
			escreva(LINHA)
 			escreva("1- Incluir\n")
 			escreva("2- alterar\n")
 			escreva("3- excluir\n")
 			escreva("4- Imprimir cadastro\n")
 			escreva("5- Sair\n")
 			escreva(LINHA)
 			leia(oPcao)

 			se (t.cadeia_e_inteiro(oPcao, 10)) {
					opcao = (t.cadeia_para_inteiro(oPcao, 10))
				} senao {
					escreva("Opção inválida")
					aguarde()
				}

 			limpa()

			escolha(opcao) {
				caso 1: incluir() pare
				caso 2: alterar(localizarCadastro()) pare
				caso 3: excluir(localizarCadastro()) pare
				caso 4: imprimir() pare
				caso 5: escreva("\nObrigado por utilizar!") pare
				caso contrario: escreva("Opção inválida")
			}
			 			
		} enquanto (opcao != 5)
		
				
	}

	funcao incluir() {

		escreva(LINHA)
		escreva("Cadastro pessoas\n")
		escreva(LINHA)

		para (inteiro i = 0; i < P; i++) {
			se (vNomes[i] == "") {
				escreva("Índice " + i + ": Informe o nome: ")
				leia(vNomes[i])
				escreva("\nInforme a idade: ")
				leia(idade)
				
				se (t.cadeia_e_inteiro(idade, 10)) {
					vIdade[i] = (t.cadeia_para_inteiro(idade, 10))
				} senao {
					escreva("Idade invalida! Retornando ao menu.")
					aguarde()
				}	
			}	 

		}
	}	

	funcao alterar(inteiro indice) {
		se ((vNomes[indice] != "")){
			escreva("Índice " + indice + ": Informe o nome: ")
			leia(vNomes[indice])
			escreva("Informe a idade: ")
			leia(idade)
			
			se (t.cadeia_e_inteiro(idade, 10)) {
					vIdade[indice] = (t.cadeia_para_inteiro(idade, 10))
				} senao {
					escreva("Idade invalida!")	
				}
				
		
		} senao escreva("Índice vázio")
		aguarde()
	}

	funcao excluir(inteiro indice) {
		vNomes[indice] = ""
		vIdade[indice] = -1
	}

	funcao imprimir(){
		escreva(LINHA)
		escreva("Dados das pessoas")
		escreva(LINHA)
		escreva("Nr\tNome\tIdade\n")

		para (inteiro i = 0; i < P; i++) {
			
			se (vNomes[i] != "" ou vIdade[i] != -1)
				escreva((i+1) + "\t")
			
			se (vNomes[i] != "")
				escreva(vNomes[i])

			se (vIdade[i] != -1) 
				escreva("\t" + vIdade[i] + "\n")
		
		}
		aguarde()
	}

	funcao aguarde() {
		cadeia tecla
		
		escreva("\n\nPressione uma tecla")
		leia(tecla)
	}
	
	funcao inicializarVetores() {
		para (inteiro i = 0; i < P; i++) {
			vIdade[i] = -1
			vNomes[i] = ""
		}
	}

	funcao inteiro localizarCadastro() {
		inteiro indice
		
		escreva("Informe o código da pessoa: ")
		leia(indice)
		
		retorne indice
	}
	
	funcao inicio()
	{
		inicializarVetores()
		menu()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vNomes, 6, 8, 6}-{vIdade, 8, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */