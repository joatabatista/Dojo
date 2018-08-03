Dado(/^que eu esteja na home do site DemoQA$/) do
	PageHome.new.load
end

Quando(/^eu clico em 'Contact'$/) do
	PageHome.new.contato.click
end

Quando(/^envio um formulario de contato preenchido$/) do
	@formulario = PageFormulario.new
	@formulario.prencher_formulario('Paulo','paulo2017@gmail.com','teste','teste01')
	@formulario.enter.click
end

Entao(/^visualizo a mensagem "([^"]*)"$/) do |resultado|
	expect(PageFormulario.new.resultado.text).to eq(resultado)
end

Entao(/^visualizo a mensagem de insucesso "([^"]*)"$/) do |resultado_negativo|
  expect(PageFormulario.new.resultado_negativo.text).to eq(resultado_negativo)
end

Entao(/^a mensagem "([^"]*)" abaixo do campo correspondente$/) do |retorno_campo|
expect(PageFormulario.new.retorno_campo.text).to eq(retorno_campo)
end

Dado(/^que eu esteja na home DemoQa$/) do
  @formulario = PageFormulario.new
  @formulario.enter.click
end

Quando(/^efetiva um cadastro com "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |nome, email, subjecto, messagem|
  @formulario = PageFormulario.new
  @formulario.prencher_formulario(nome, email, subjecto, messagem)
  @formulario.enter.click
end







# estava dessa forma e agora esta igual esse de cima
#Entao(/^a mensagem "([^"]*)" abaixo do campo correspondente$/) do |retorno_campo|

#	assert_text(retorno_campo)
#end

#Quando(/^envio um formulario de contato com campo "([^"]*)" preenchido incorretamente$/) do |campo_incorreto|
#	fill_in('your-name', with: "Teste Teste")
#	fill_in('your-email', with: "teste.teste")
#	fill_in('your-subject', with: "#{campo_incorreto} incorreto")
#	fill_in('your-message', with: "Testetestestst")
#	click_button('Send')
#end
