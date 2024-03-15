/*
 * Crie um algoritmo que inclua numa matriz o nome, o sobrenome e a rua de 5 pessoas
 * Crie uma função para localizar a pessoa pelo nome e outra para localizar pelo
 * sobrenome e outra pelo endereço.
 * Crie também uma função para listar todos
 * 
 */



programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia pessoas[5][3]

		incluirDados(pessoas)
		imprimirPessoa(localizarNomePessoa(pessoas), pessoas)
		imprimirPessoa(localizarSobrenomePessoa(pessoas), pessoas)
		imprimirPessoa(localizarEnderecoPessoa(pessoas), pessoas)
		listarPessoas(pessoas)
	}

	funcao incluirDados(cadeia matriz[][]) {
		cadeia opcao
		
		para (inteiro i = 0; i < 5; i++) {
			escreva("\nInforme o nome: ")
			leia(matriz[i][0])
	
			escreva("Informe o sobrenome: ")
			leia(matriz[i][1])
	
			escreva("Informe o endereço: ")
			leia(matriz[i][2])

			escreva("\nPressione 'S' para continuar?")
			leia(opcao)

			se(t.caixa_alta(opcao) != "S")
				pare
		}
	}

	funcao inteiro localizarNomePessoa(cadeia m1[][]) {
		cadeia nome
		inteiro pos = -1

		escreva("Informe o nome a localizar: ")
		leia(nome)

		para (inteiro i = 0; i < 5; i++){
			se(m1[i][0] == nome) {
				pos = i
				pare
			}
		}

		retorne pos
	}

	funcao inteiro localizarSobrenomePessoa(cadeia m2[][]) {
		cadeia sobrenome
		inteiro pos = -1

		escreva("Informe o sobrenome a localizar: ")
		leia(sobrenome)

		para (inteiro i = 0; i < 5; i++){
			se(m2[i][1] == sobrenome) {
				pos = i
				pare
			}
		}

		retorne pos
		
	}

	funcao inteiro localizarEnderecoPessoa(cadeia m3[][]) {
		cadeia endereco
		inteiro pos = -1

		escreva("Informe o endereco a localizar: ")
		leia(endereco)

		para (inteiro i = 0; i < 5; i++){
			se(m3[i][2] == endereco) {
				pos = i
				pare
			}
		}

		retorne pos
		
	}

	funcao listarPessoas(cadeia m4[][]) {

		para (inteiro i = 0; i < 5; i++){
			escreva("Nome: " + m4[i][0] + " " + m4[i][1])
			escreva("Endereço: " + m4[i][2] + "\n\n")
		}		
	}
	
	funcao imprimirPessoa(inteiro indice, cadeia m5[][]) {
		se(indice >=0) {
			escreva("Nome: " + m5[indice][0] + " " + m5[indice][1])
			escreva("\nEndereço: " + m5[indice][2] + "\n\n")
		} senao
			escreva("Pessoa não encontrada")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 540; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoas, 17, 9, 7}-{matriz, 26, 28, 6}-{m1, 47, 43, 2}-{m2, 64, 48, 2}-{m3, 82, 47, 2}-{m4, 100, 29, 2}-{m5, 108, 46, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */