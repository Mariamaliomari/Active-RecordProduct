"Deleting old data..."
Product.destroy_all
User.destroy_all
require "faker"

puts "seeding data"

60.times do
    Product.create{name: Faker::Commerce.product_name}
end

40.times do
    User.create{name: Faker::Name.name}
end

100.times do
    Review.create{
        name: Faker::Commerce.product_name
        star_rating::Number.between
    }
end


puts "done"