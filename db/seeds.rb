# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning DB'
Restaurant.destroy_all
puts 'DB cleaned'

puts 'Creating restaurants'
  100.times do
    restaurant = Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.cell_phone_in_e164,
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
    puts "Restaurant #{restaurant.id} is created!"
  end

puts 'Done!'
