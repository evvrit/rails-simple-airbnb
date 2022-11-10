require "faker"

puts "cleaning the DB..."
Flat.destroy_all
puts "DB is clean."

puts "Making 4 fake airbnbs..."

4.times do
  Flat.create!(
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.street_address,
    description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    price_per_night: Faker::Commerce.price,
    number_of_guests: rand(1..12)
  )
end

puts "Airbnbs made."
