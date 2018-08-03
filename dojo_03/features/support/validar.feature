#language: pt
#utf-8

Funcionalidade: Validar Titulos
	Eu como Sistema Front-end, quero validar
	todos os titulos que seja do Diretor "George Lucas"
	e Produtor "Rick McCallum"

	@diretor
	Cenario: Buscar Diretor
		Quando buscar as informaçoes no campo especifica do Status-code
		Então Validar que seja dos Diretor 'George Lucas' e Produtor 'Rick McCallum'