# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

Ingredient.delete_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data = open(url).read
ingredients_json = JSON.parse(data)

ingredients_json["drinks"].each do |hash|
  Ingredient.create!(name: hash["strIngredient1"])
end

# ingredients_json["drinks"][0]["strIngredient1"]

# ingredients_json["drinks"][1]["strIngredient1"]