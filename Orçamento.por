programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> txt
	
	cadeia produtos[][] = 	{
							{"1", "2", "3", "4", "5", "6"},
							{"Parafuso", "Arruela", "Porca", "Chaves de fenda", "Broca", "Buchas"}
						}

	cadeia produtoOrcamento[6] // Os produtos orçados
	inteiro quantidadeProdutos[6] // quantidade dos produtos
	real valorDescontoProdutos[6] // valor dos descontos
	

	real valorProdutos[] = {1.9, 0.5, 1.2, 15.9, 10.89, 0.9} // Valor unitário do produto
	cadeia numeroOrcamento = ""
		
	funcao inicio()
	{		
		inicializaVetores() 
		menu()		
	}

	funcao incluir() {
		se (numeroOrcamento == "") {
			numeroOrcamento = "000001"
		}

		menuProduto()
		
	}

	funcao menuProduto() {
		cadeia sOpcao
		inteiro opcao = 0

		faca {
			limpa()
			header()
			escreva("Produtos")
			write("-", 30)
			escreva("Informe uma opção: ")br()
			escreva("1- Incluir\n")
			escreva("2- Alterar\n")
			escreva("3- Excluir\n")
			escreva("4- Listar tabela\n")
			escreva("5- Voltar\n")
			leia(sOpcao)

			limpa()
			opcao = validarInteiro(sOpcao)

			escolha(opcao) {
				caso 1: incluirProduto() pare
				caso 2: 
				caso 3: 
				caso 4: imprimirProdutos(produtos, valorProdutos) pare
				caso 5: br() pare
				caso contrario: escreva("\n\nOpção inválida\n\n")
			}

			se (opcao != 5)
				aguarde()

		} enquanto (opcao != 5)	
			
	}

	funcao incluirProduto() {
		cadeia sCodigo
		inteiro indice = -1
		logico produtoExiste

		faca {
			produtoExiste = falso
			limpa()
			write("-", 30)
			escreva("Inclusão de produto\n")
			write("-", 30)
			escreva("Informe o código do produto: ")
			leia(sCodigo)
	
			para (inteiro i=0; i<6; i++) {
				se(sCodigo == produtos[0][i]) {
					indice = i
					produtoExiste = verdadeiro
					pare
				}
			}
	
			se (produtoExiste) {
				logico produtoIncluido = falso
				
				para (inteiro i=0; i<6; i++) {
					se (produtos[0][indice] == produtoOrcamento[i]) {
						produtoIncluido = verdadeiro
						pare
					}
				}

				se (nao produtoIncluido) {
					para (inteiro i=0; i<6; i++) {
						se (produtoOrcamento[i] == "") {
							produtoOrcamento[i] = produtos[0][indice]
							indice = i
							pare
						}
					}

					inteiro quantidade = 0
					
					faca {
						escreva("Informe a quantidade: ")
						
						cadeia sQuantidade
						leia(sQuantidade)
	
						quantidade = validarInteiro(sQuantidade)

						se (quantidade <= 0) {
							escreva("Quantidade inválida\n")
						}
					} enquanto (quantidade <= 0)


					quantidadeProdutos[indice] = quantidade

					escreva("\nQuantidade incluída com sucesso!\n\n")
					u.aguarde(2000)

					real desconto

					faca {
						escreva("Desconto: ")
						cadeia sDesconto
						leia(sDesconto)
	
						desconto = validarReal(sDesconto)

						se (desconto < 0)
							escreva("Valor de desconto inválido")
							
					} enquanto (desconto < 0)

					valorDescontoProdutos[indice] = desconto
					
				} senao
					escreva("O produto já foi incluído no orçamento")
				
			} senao
				escreva("Produto não encontrado.")

			escreva("Deseja continuar informando produto? (S/N)")
			cadeia resposta
			leia(resposta)

			 produtoExiste = nao (resposta == "S" ou resposta == "s")
			 
		} enquanto (nao produtoExiste)
	}

	funcao header() {
		write("=", 30)br()
		escreva("       LOJA TEM DE TUDO")br()
		write("-", 30)br()
		escreva("     SISTEMA DE ORÇAMENTO")br()
		write("-", 30)br()
	}

	funcao cadeia ajustarTexto(cadeia texto, inteiro tamanho) {
		inteiro qtCaracteres = txt.numero_caracteres(texto)

		para (inteiro i = 1; i <= tamanho - qtCaracteres; i++) {
			texto = texto + " "
		}

		retorne texto
	}

	funcao cadeia formatarReal(real valor, inteiro tamanho) {
		
		cadeia novoValor = t.real_para_cadeia(valor)
		inteiro pos = txt.posicao_texto(".", novoValor, 0)
		inteiro qtCaracteres = txt.numero_caracteres(novoValor)
		
		cadeia decimais = txt.extrair_subtexto(novoValor, pos, qtCaracteres)
		inteiro qtCasasDecimais = 2 - txt.numero_caracteres(decimais)	
		
		novoValor = txt.extrair_subtexto(novoValor, 0, pos)
		
		para(inteiro i=0; i <= qtCasasDecimais; i++) {
			decimais = decimais + "0"
		}

		novoValor = novoValor + decimais
		novoValor = txt.preencher_a_esquerda(' ', tamanho, novoValor)
		
		retorne novoValor 
	}

	funcao imprimirProdutos(cadeia prod[][], real vlProdutos[]) {
		escreva("Cód\tDescrição do produto\tPreço\n")
		write("-", 41) br()
		
		para (inteiro i=0; i<6; i++) {
			escreva(prod[0][i] +"\t"+ 
				ajustarTexto(prod[1][i], 15) +"\t\tR$ "+ 
				formatarReal(m.arredondar(vlProdutos[i], 2), 7) +"\n")
				//m.arredondar(vlProdutos[i], 2) +"\n")
		}
	}

	funcao menu() {
		cadeia sOpcao
		inteiro opcao = 0

		faca {
			limpa()
			header()
			escreva("Informe uma opção para o orçamento: ")br()
			escreva("1- Incluir\n")
			escreva("2- Alterar\n")
			escreva("3- Excluir\n")
			escreva("4- Imprimir\n")
			escreva("5- Sair\n")
	
			leia(sOpcao)
			limpa()
	
			opcao = validarInteiro(sOpcao)

			escolha(opcao) {
				caso 1: incluir() pare
				caso 2: 
				caso 3: 
				caso 4: imprimirProdutos(produtos, valorProdutos) pare
				caso 5: escreva("\nObrigado por utilizar o Orçamento\n\n") pare
				caso contrario: escreva("\n\nOpção inválida\n\n")
			}

			se (opcao != 5)
				aguarde()

		} enquanto (opcao != 5)		
	}

	funcao inteiro validarInteiro(cadeia sOpcao) {
		se (t.cadeia_e_inteiro(sOpcao, 10)) {
			inteiro opcao = t.cadeia_para_inteiro(sOpcao, 10)
			retorne opcao
		}

		retorne -1
	}

	funcao real validarReal(cadeia sValor) {
		se (t.cadeia_e_real(sValor) ou t.cadeia_e_inteiro(sValor, 10)) {
			inteiro valor = t.cadeia_para_real(sValor)
			retorne valor
		}

		retorne 0.0
	}

	funcao write(cadeia a, inteiro n) {
		para (inteiro i=0; i<=n;i++) {
			escreva(a)
		}
	}

	funcao br() {
		escreva("\n")
	}

	funcao aguarde() {
		cadeia tecla

		escreva("Pressione uma tecla para continuar...")
		leia(tecla)
	}

	funcao inicializaVetores() {
		para (inteiro i=0; i<6; i++) {
			quantidadeProdutos[i] = 0
			valorDescontoProdutos[i]	 = 0.0
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 321; 
 * @DOBRAMENTO-CODIGO = [164, 172, 182, 203, 249, 258, 273, 277, 284];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {quantidadeProdutos, 14, 9, 18}-{valorDescontoProdutos, 15, 6, 21}-{produtoOrcamento, 13, 8, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */