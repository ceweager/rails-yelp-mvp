# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts 'cleaning database'
Restaurant.destroy_all
puts 'done cleaning database'

puts 'creating restaurants'
5.times do 
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,   
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save
  puts "#{restaurant} created"
end

puts 'done creating restaurants'