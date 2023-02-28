"Deleting old data..."
Product.destroy_all
User.destroy_all
require "faker"

puts "Seeding data"

40.times do
    User.create(
        name: Faker::Name.name,
        
    )
end

60.times do
    Product.create(
        name: Faker::Commerce.product_name,
        price: rand(1..1000)
    )
end



240.times do
    Review.create(
        star_rating: rand(1..10),
        comment: Faker::Lorem.paragraph(sentence_count: 3),
        product_id: rand(Product.first.id..Product.last.id),
        user_id: rand(User.first.id..User.last.id)

    )
end

puts "Done seeding"