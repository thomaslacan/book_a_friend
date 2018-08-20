# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do
  user = User.new
  user.username = Faker::Name.middle_name
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.password = Faker::Internet.password
  user.save
end
