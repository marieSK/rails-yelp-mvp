# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
nando = { name: 'Nando', address: '56A High St, Paris E1 6PQ', category: 'belgian' }
pizza_hut = { name: 'Pizza Hut', address: '12 Chopin, New York E1 6PQ', category: 'italian' }
naree = { name: 'Naree', address: '30 Wide St, LA E1 6PQ', category: 'japanese' }

[dishoom, pizza_east, nando, pizza_hut, naree].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
