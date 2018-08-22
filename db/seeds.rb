j# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(username: "hotriridu92", first_name: "Antoine", last_name: "Duvauchelle", email: "alberror@gmail.com", password: "tamereenslip")
user1.save
user2 = User.new(username: "krispies", first_name: "Bill", last_name: "Le Bottier", email: "gonzo@gmail.com", password: "tamereenslip")
user2.save
user3 = User.new(username: "tony", first_name: "Tony", last_name: "Le Tigre", email: "tony@gmail.com", password: "tamereenslip")
user3.save
p User.all

moment1 = Moment.new(category: 'Food', activity: 'activity1', user: user1, description: "On va tellement s'éclater !", location: "Paris", level: 'Easy', start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment1.save!
moment2 = Moment.new(category: 'Culture', activity: 'activity2', user: user1, description: "On va tellement s'éclater !", location: "Paris", level: 'Beginner', start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment2.save
moment3 = Moment.new(category: 'Sport', activity: 'activity1', user: user2, description: "On va tellement s'éclater !", location: "Paris", level: 'Medium', start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment3.save
moment4 = Moment.new(category: 'Food', activity: 'activity2', user: user3, description: "On va tellement s'éclater !", location: "Paris", level: 'Hell', start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment4.save
moment5 = Moment.new(category: 'Culture', activity: 'activity3', user: user2, description: "On va tellement s'éclater !", location: "Paris", level: 'Medium', start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment5.save
moment6 = Moment.new(category: 'Sport', activity: 'activity3', user: user3, description: "On va tellement s'éclater !", location: "Paris", level: 'Easy', start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment6.save
p Moment.all

booking1 = Booking.new(moment: moment1, user: user2, description: "Tain j'ai trop hâte.")
booking1.save
booking2 = Booking.new(moment: moment3, user: user3, description: "Trop cool, samedi en plus j'aurai bien dormi")
booking2.save
p Booking.all
