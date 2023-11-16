# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01252466346", category: "chinese" }
bstreet = {name: "bstreet", address: "Evry", phone_number: "01252466346", category: "chinese" }
bk = {name: "bk", address: "spot", phone_number: "01252466346", category: "chinese" }
pittaya = {name: "pittaya", address: "Spot2", phone_number: "01252466346", category: "chinese" }
pizza = {name: "Pizza", address: "Evry 3", phone_number: "01252466346", category: "chinese" }

[dishoom, bstreet, bk, pittaya, pizza].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
