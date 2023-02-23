require 'faker'

Faker::Config.locale = 'en-GB'

Restaurant.destroy_all

puts "Generating seed file"

10.times do
  puts "Creating restaurant"
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant with id: #{restaurant.id} has been created"

  # rand(1..5).times do
  #   puts 'Creating reviews'
  #   Review.create!(
  #     rating: rand(0..5),
  #     content: Faker::Restaurant.review,
  #     restaurant_id: restaurant.id
  #   )
  # end
end

puts 'Seed file generated'
