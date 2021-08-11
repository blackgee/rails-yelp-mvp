# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "465", category: "chinese", reviews: ""}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "45665", category: "chinese", reviews: ""}
pizza_south =  { name: "Pizza South", address: "South Haway", phone_number: "498455", category: "chinese", reviews: ""}
pizza_west =  { name: "Pizza West", address: "West Germany", phone_number: "418161661", category: "chinese", reviews: "" }
pizza_north =  { name: "Pizza North", address: "North Berlin", phone_number: "416156195", category: "chinese" , reviews: ""}


[ dishoom, pizza_east, pizza_north, pizza_south, pizza_west ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
