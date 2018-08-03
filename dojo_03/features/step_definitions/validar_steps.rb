Quando(/^buscar as informaçoes no campo especifica do Status\-code$/) do
  @response = HTTParty.get("https://swapi.co/api/films/", :headers => {'Content-Type' => 'application/json'})
  expect(@response.code).to eq 200

end

Então(/^Validar que seja dos Diretor 'George Lucas' e Produtor 'Rick McCallum'$/) do
  @response['results'].each	do |filme|
  if filme['director'] == 'George Lucas' && filme['producer'].include?('Rick McCallum')
  	puts filme['title']

		end
	end
end