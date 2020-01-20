# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Creature::Dog.meme_phrase, cost: Faker::Number.decimal(l_digits: 2), country_of_origin: Faker::Address.country, img: Faker::LoremFlickr.image(search_terms: ['dog treats', 'dog']))
  rand(3..7).times do
    product.reviews.new(author: Faker::Creature::Dog.name, rating: Faker::Number.between(from: 1, to: 5), content_body: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false), product_id: Faker::Number.between(from: 1, to: 50))
    product.save
  end
end

p "Created #{Product.count} products and #{Review.count} reviews"
