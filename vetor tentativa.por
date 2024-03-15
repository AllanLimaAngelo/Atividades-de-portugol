/**
 * Melhore o código abaixo criando métodos separados para cadastrar o nome e a idade e também 
 * para imprimir os dados.
 * Crie um menu onde se possa selecionar qual opção deseja executar: cadastrar nome / cadastrar idade
 * imprimir dados
 * 
 * Exemplo:
 * 
 * ----------------------
 * 1- Cadastrar nomes
 * 2- Cadastrar idades
 * 3- Imprimir dados
 * 4- Sair
 * ----------------------
 */

programa

{
	const inteiro T = 5
	cadeia vNomes[T]
	cadeia vIdade[T]

	funcao cadastrarNome(inteiro indice) 
	{
		para (inteiro i = 0; i < T; i++){
			escreva ("Informe o nome: ")
			leia(vNomes[i])
		}
	}
	
	funcao cadastrarIdade(inteiro indice)
	{
		para (inteiro i = 0; i < T; i++){
			escreva ("Informe o idade: ")
			leia(vIdade[i])
		}
	}

	funcao imprimirDados(){
    		para (inteiro i = 0; i < T; i++){				
        		escreva(i + "- Nome: " + vNomes[i])
        		escreva(" - Idade: " + vIdade[i] + "\n")
   		}
	}	

	funcao menu(){
    		
    		inteiro opcao

    		escreva("----------------------\n")
        	escreva("1- Cadastrar nomes\n")
        	escreva("2- Cadastrar idades\n")
        	escreva("3- Imprimir dados\n")
        	escreva("4- Sair\n")
        	escreva("----------------------\n")
        	escreva("Escolha uma opcao: ")
        	leia(opcao)

		escolha (opcao) {
	
          	caso 1:cadastrarNome(0) pare
          	caso 2:cadastrarIdade(0) pare
          	caso 3:imprimirDados() pare
          	caso 4:escreva("Saindo...\n")pare
          	caso contrario:escreva("Opcao invalida. Tente novamente.\n")
			} enquanto (opcao != 4) {
				menu()
				}
		}
	
	funcao inicio(){
		menu()
	}
}








/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1456; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */