# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "orange peel")
# Ingredient.create(name: "salt")
# Ingredient.create(name: "Gin")
# Ingredient.create(name: "tonic")
# Ingredient.create(name: "Rum")
# Ingredient.create(name: "Brandy")
# Ingredient.create(name: "Champagne")
# Ingredient.create(name: "Tomatoe juice")
# Ingredient.create(name: "Worcestershire sauce")
# Ingredient.create(name: "Aperol")
# Ingredient.create(name: "Apple juice")
# Ingredient.create(name: "Prosecco")
# Ingredient.create(name: "Red wine")
# Ingredient.create(name: "White wine")
# Ingredient.create(name: "Bitters")
# Ingredient.create(name: "Egg white")
# Ingredient.create(name: "Cream")
# Ingredient.create(name: "Sugar")
# Ingredient.create(name: "Lime")
# Ingredient.create(name: "Pineapple juice")
# Ingredient.create(name: "Coconut juice")
# Ingredient.create(name: "Vodka")
Ingredient.create(name: "Ginger beer")
Ingredient.create(name: "lime juice")
Ingredient.create(name: "Ice cubes")
Ingredient.create(name: "White rum")
Ingredient.create(name: "Aperol")
Ingredient.create(name: "Prosecco")
Ingredient.create(name: "Orange peel")
Ingredient.create(name: "Soda")
Ingredient.create(name: "Coconut cream")
Ingredient.create(name: "Campari")
Ingredient.create(name: "Red Vermouth")



# # Cocktail.create(name: "Gin and Tonic")
# Dose.create(description: "50ml")
# Dose.create(description: "25ml")
# Dose.create(description: "100ml")


require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = JSON.parse(open(url).read)

json["drinks"].each do |ingredient|
    Ingredient.create(name: ingredient["strIngredient1"])
end

