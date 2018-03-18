# categories = [
#   "Vegetarian",
#   "Vegan",
#   "Indian",
#   "Desserts",
#   "Italian"
# ]

# categories.each do |category|
#   Category.create!(name: category)
# end 

@vegetarian = Category.create!(name: "Vegetarian")
@vegan = Category.create!(name: "Vegan")
@indian = Category.create!(name: "Indian")
@desserts = Category.create!(name: "Desserts")
@italian = Category.create!(name: "Italian")



Recipe.create!(name: "Chilli", categories: [@vegan])
Recipe.create!(name: "Curry", categories: [@vegetarian, @indian])
Recipe.create!(name: "Tiramisu", categories: [@desserts, @italian])
Recipe.create!(name: "Chocolate Mousse", categories: [@vegetarian, @desserts])
Recipe.create!(name: "Vegan Chicken and Waffles", categories: [@vegan])