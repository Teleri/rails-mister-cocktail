require 'json'
require 'open-uri'

opened = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
data = JSON.parse(opened)

data.each do |drink|
  ingredient_list = []
  ingredients = drink[1]
  ingredients.each do |element|
    ingredient_list << element.values
  end
  result_array = ingredient_list.flatten
  result_array.each do |element|
    Ingredient.create(name: element)
  end
end
