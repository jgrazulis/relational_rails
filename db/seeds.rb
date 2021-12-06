# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

willamette_valley = Vineyard.find_or_create_by(name: "Willamette Valley", organic: true, years_established: 15)
pikachu_valley = Vineyard.find_or_create_by(name: "Pikachu Valley", organic: true, years_established: 10)

ash = Trainer.find_or_create_by(name: "Ash Ketchum", age: 11, awake: true)
