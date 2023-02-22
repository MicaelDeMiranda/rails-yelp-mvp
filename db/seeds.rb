# frozen_string_literal: true

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants'
10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number
  categories = Restaurant::CATEGORIES
  Restaurant.create(name:, address:, phone_number:, category: categories.sample)
end
puts 'Finished!'
