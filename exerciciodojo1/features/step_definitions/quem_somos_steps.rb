
Dado(/^que eu esteja na pagina da inmetrics$/) do
     visit "http://www.inmetrics.com.br"
end

Quando(/^acessar a página "([^"]*)"$/) do |arg1|
  find("#menu-item-2960").click
end

Então(/^o texto é exibido "([^"]*)"$/) do |mensagem_esperada|
  assert_text(mensagem_esperada)
end
