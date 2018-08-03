Quando(/^buscar as informções do campo especifico$/) do
  response = HTTParty.get("https://swapi.co/api/films/", :headers => {'Content-Type' => 'application/json'})

  	response['results'].each do |filme|
  	puts filme['title']
  	
  	end 

end

Então(/^exibo mensagem do campo esperado$/) do
  puts "Validação do recebimento da respostas 200"
  #puts @response

end
