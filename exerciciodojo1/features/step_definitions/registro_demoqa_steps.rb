Dado(/^que eu esteja na página de registro$/) do
  visit ("http://demoqa.com/")
  find(:xpath, '//*[@id="menu-item-374"]/a').click
end

Quando(/^o formulario é enviado com os dados "([^"]*)" e "([^"]*)"$/) do |nome, email|
  fill_in('first_name', :with => nome)
  fill_in('last_name', :with => 'Souza')
  find(:xpath,'//*[@id="pie_register"]/li[2]/div/div/input[2]').click
  find(:xpath, '//*[@id="pie_register"]/li[3]/div/div/input[1]').click
  select('Algeria', :from => 'dropdown_7')
  find(:xpath, '//*[@id="phone_9"]').set('1231231231231')
  fill_in('username', :with => 'qualquerOutro22')
  fill_in('email_1', :with => email)
  fill_in('password_2', :with => 'a5aysydg273ge682uh3e8.,m.4')
  fill_in('confirm_password_password_2', :with => 'a5aysydg273ge682uh3e8.,m.4')
  find(:xpath, '//*[@id="pie_register"]').click
end

Então(/^é exibido a mensagem de sucesso$/) do
  	# assert_text('Thank you for your registration')
  	expect(find(:xpath, '//*[@id="post-49"]').text).to eq('Thank you for your registration')
end
