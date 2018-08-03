#language: pt
#utf-8

Funcionalidade: Armazenar Conteudo
	Eu como Sistema front-end
	quero Guarda no campo "Count" e depois
	enviar um valor aleatório que seja superior
	ao armazenado

	@valor
	Cenario: Valor Aleatório
	Quando buscar valor na url especifica
	E exibo valor do campo da url
	Entao somo com um valor aleatório e exibo o mesmo