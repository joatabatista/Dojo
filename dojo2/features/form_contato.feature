#language: pt

Funcionalidade: Formulário de Contato
	Eu como usuario do site
	Desejo enviar um formulario de contato
	Para entrar em contato com a empresa

Contexto: Usuaria acessa a area de Contrato
		Dado que eu esteja na home do site DemoQA
		E eu clico em 'Contact'

	Cenario: Enviar formulario de contato
		Quando envio um formulario de contato preenchido
		Entao visualizo a mensagem "Your message was sent successfully. Thanks."

		@erro
	Esquema do Cenario: Enviar formulario de contato Inválido
		Quando efetiva um cadastro com "<nome>", "<email>", "<subjecto>", "<messagem>"
		Entao visualizo a mensagem de insucesso "Validation errors occurred. Please confirm the fields and submit it again."
		E a mensagem "<error>" abaixo do campo correspondente



		Exemplos:
		|	nome		|	email						|	subjecto	|	messagem		|	error													|
		|					|	sp@gmail.com		|	teste01		|	teste01.tes	|Please fill the required field.|
		|	Marcos	|									|	teste02		|	teste02.tes	|Please fill the required field.|
