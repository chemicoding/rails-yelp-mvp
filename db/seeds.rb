# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NAMES = %w(fork spoon salmorejo chuletón BurgerMasters ShittyFood FastFooders)
CATEGORIES = %w(chinese italian japanese french belgian)
ADDRESSES = ["Calle falsa 1,2,3", "Doctor Esquerdo 72", "Calle Barquillo 18", "Calle Desengaño 14", "Calle Oscura 152", "Calle Fake 234", "Calle Pez 2"]
PHONE_NUMBERS = ["602-924314", "555-213489", "666-666095", "645-963582", "642-148576", "649-234567"]

5.times do
  puts "Creating a restaurant..."
  Restaurant.create name: NAMES.sample, category: CATEGORIES.sample, address: ADDRESSES.sample, phone_number: PHONE_NUMBERS.sample
end