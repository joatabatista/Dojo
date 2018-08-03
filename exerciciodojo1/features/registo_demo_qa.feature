#language:pt
#encode: UTF-8


@cadastro
Funcionalidade: Registro DemoQa
	Eu como usuario do site demoqa(http://demoqa.com) 
	quero acessar a aplicação/página de registro
	para acessar suas funcionalidades

Cenario: Cadastro de usuario
	Dado que eu esteja na página de registro 
	Quando o formulario é enviado com os dados "testecadastro1" e "testecadastr222o1@gmail.com"
	Então é exibido a mensagem de sucesso