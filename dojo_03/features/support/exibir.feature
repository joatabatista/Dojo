#language: pt
#utf-8

Funcionalidade: Exibir Conteudo
	Eu como Sistema front-end
	quero Exibir Conteudo do
	campo "Title"

	@exibir
	Cenario: Exibir Campo
		Quando buscar as informções do campo especifico
		Então exibo mensagem do campo esperado   