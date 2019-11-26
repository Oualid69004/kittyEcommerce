# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  i = Item.new(title: Faker::Address.street_address,
                   price: rand(600..5000),
                   description: Faker::Address.full_address)
#  i = Image.new(item_id: i.id, description: 'Super appart', url: 'https://s-ec.bstatic.com/images/hotel/max1024x768/716/71622578.jpg')
  i.save
#  p.save
#  puts "Property n° #{p.id} created"
end
