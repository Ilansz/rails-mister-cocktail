url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = HTTParty.get(url)
ingredients = response.parsed_response["drinks"]

ingredients.each do |ingredient|
  ingredient.each do |string|
    Ingredient.create(name: string[1])
  end
end

