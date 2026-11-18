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
restaurants = [
  { name: "Golden Dragon",   address: "12 Rue de Rivoli, Paris",        phone_number: "+33 1 42 60 12 34", category: "chinese" },
  { name: "Trattoria Nonna", address: "45 Via Roma, Milan",             phone_number: "+39 02 1234 5678",  category: "italian" },
  { name: "Sakura Sushi",    address: "3-1 Shibuya, Tokyo",             phone_number: "+81 3-1234-5678",   category: "japanese" },
  { name: "Le Petit Bistro", address: "8 Place du Tertre, Paris",       phone_number: "01 46 06 12 34",    category: "french" },
  { name: "Frituur Fritkot", address: "22 Grand-Place, Brussels",       phone_number: "+32 2 123 45 67",   category: "belgian" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Done! #{Restaurant.count} restaurants created."
