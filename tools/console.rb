# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

#Recipes(name, description)
fried_chx = Recipe.new("Fried Chicken", "Fried Chicken Drumpsticks extra crispy" )
fig_galette = Recipe.new("Fig Galette", "A gaelette baked with the fresh figs of the season")
ava_toast = Recipe.new("Avacado Toast", "Sauteed Mushrooms sitting on a bed of Guac, all on top of Sourdough")
sphere = Recipe.new("Olive Spheres", "Spherification of Olives")
anarchy = Recipe.new("Anarchy", "A chaotic display of different pastry techniques all on one plate")
egg = Recipe.new("Boiled Egg", "Just a boiled egg, plain and boring")
oko = Recipe.new("Okonomiyaki", "Japanese Savory Everything Pancake")

#RestaurantOwner(name, age)
ferran = RestaurantOwner.new("Ferran Adria", 58)
roca_brothers = RestaurantOwner.new("Roca Brothers", 56)
dom_crenn = RestaurantOwner.new("Dominique Crenn", 55)
guy = RestaurantOwner.new("Guy Fieri", 52)


#Restaurant(owner, name, star_rating)
el_bulli = Restaurant.new(ferran, "elBulli", 5)
el_cellar = Restaurant.new(roca_brothers, "El Cellar de Can Roca", 3)
crenn = Restaurant.new(dom_crenn, "Atelier Crenn", 3)
petit = Restaurant.new(dom_crenn, "Petit Crenn", 2)
flavortown = Restaurant.new(guy, "Flavortown", 1)


#Menu_item(restaurant, recipe, price)
chx = MenuItem.new(flavortown, fried_chx, 26.75) 
dessert1 = MenuItem.new(el_cellar, anarchy, 27)
dessert2 = MenuItem.new(crenn, fig_galette, 17.28)
olive = MenuItem.new(el_bulli, sphere, 24.50)
toast = MenuItem.new(flavortown, ava_toast, 21)
toast2 = MenuItem.new(petit, ava_toast, 23.27)
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #

binding.pry
0
