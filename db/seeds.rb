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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Epicure", address: "75008 Paris", category: "french")
puts "Created Epicure"
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "RicefieldRESTO", address: "North of Canggu", category: "japanese")
puts "Created RicefieldRESTO"
Restaurant.create!(name: "Gusto", address: "Gorssel", category: "italian")
puts "Created Gusto"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
