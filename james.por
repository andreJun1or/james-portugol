programa
{

	inclua biblioteca Sons --> s
	inclua biblioteca Util --> u
	 
	const inteiro tempoDeReproducaoAudioJames = 32000
	const inteiro tempoDeReproducaoAudioAtumalaca = 3000
	const inteiro tempoDeEspera = 2000
	
	funcao inicio()
	{
		cadeia resposta
		logico repete = verdadeiro
		cadeia next
		inteiro audioJames = s.carregar_som("./james-audio.mp3")
		inteiro audioAtumalaca = s.carregar_som("./atumalaca.mp3")

		enquanto(repete == verdadeiro) {
			escreva("James está passando na sua frente. Você quer uma salada de frutas? [s/n]\n-> ")
			leia(resposta)

			
			se(resposta == "s" ou resposta == "S") {
				escreva("Você chama pelo James. Ao ouvir ele se aproxima.")
				u.aguarde(tempoDeEspera)
				s.reproduzir_som(audioJames, falso)
				u.aguarde(tempoDeReproducaoAudioJames)
				repete = falso
				retorne
		}
			se(resposta == "n" ou resposta == "N") {
				escreva("James passa direto e vende sua salada de frutas para outra pessoa.")
				s.reproduzir_som(audioAtumalaca, falso)
				u.aguarde(tempoDeReproducaoAudioAtumalaca)
				repete = falso
				retorne
			}
			limpa()
			escreva("Valor inválido, digite S/s para sim ou N/n para não\nPressione enter para continuar")
			leia(next)
			limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */