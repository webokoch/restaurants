# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing database'
Restaurant.destroy_all

puts 'generating restaurants'

30.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    food: Faker::Restaurant.type,
    description: Faker::Restaurant.description,
    location: ['Mitte', 'Kreuzberg', 'Friedrichshain', 'Moabit', 'Wedding', 'Charlottenburg'].sample
    )
end

puts 'Ready to dine'
