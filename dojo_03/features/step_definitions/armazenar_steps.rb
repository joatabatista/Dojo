Quando(/^buscar valor na url especifica$/) do                                
  response = HTTParty.get("https://swapi.co/api/planets/", :headers => {'Content-Type' => 'application/json'})
  	@count = response['count']
  	puts @count
  	
end                                                                          
                                                                             
Quando(/^exibo valor do campo da url$/) do                                   
  	@aleatorio = @count+rand(61..100)
  	puts @aleatorio
end                                                                          
                                                                             
Entao(/^somo com um valor aleatório e exibo o mesmo$/) do                    
  	@reponse_aleatorio = HTTParty.get("https://swapi.co/api/planets/#{@aleatorio}")
  	expect(@reponse_aleatorio.code).to eq 404
  	puts "validação do valor"
end                                                                          