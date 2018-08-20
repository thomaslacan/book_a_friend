# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(username: "alberror", first_name: "Antoine", last_name: "Duvauchelle", email: "alberror@gmail.com", password: "tamereenslip")
user.save
user2 = User.new(username: "krispies", first_name: "Bill", last_name: "Le Bottier", email: "gonzo@gmail.com", password: "tamereenslip")
user.save
user3 = User.new(username: "tony", first_name: "Tony", last_name: "Le Tigre", email: "tony@gmail.com", password: "tamereenslip")
user.save

activity1 = Activity.new(name: "Futsal", category: "Sport", description: "C'comme du foot, mais en salle.")
activity1.save
activity2 = Activity.new(name: "Le soldat Bryan", category: "Culture", description: "Spoiler alert: en fait il est mort.")
activity2.save
activity3 = Activity.new(name: "Bowling", category: "Entertainment", description: "Ca va striker !")
activity3.save

moment1 = Moment.new(activity: 1, user: 1, description: "On va tellement s'éclater !", location: "Paris", level: 3, start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment1.save
moment2 = Moment.new(activity: 2, user: 1, description: "On va tellement s'éclater !", location: "Paris", level: 3, start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment2.save
moment3 = Moment.new(activity: 1, user: 2, description: "On va tellement s'éclater !", location: "Paris", level: 3, start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment3.save
moment4 = Moment.new(activity: 2, user: 3, description: "On va tellement s'éclater !", location: "Paris", level: 3, start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment4.save
moment5 = Moment.new(activity: 3, user: 2, description: "On va tellement s'éclater !", location: "Paris", level: 3, start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment5.save
moment6 = Moment.new(activity: 3, user: 3, description: "On va tellement s'éclater !", location: "Paris", level: 3, start_time: "01.09.2018 00:00", end_time: "01.09/2018 13.00")
moment6.save

booking1 = Booking.new(moment: 1, user: 2, description: "Tain j'ai trop hâte.")
booking1.save
booking2 = Booking.new(moment: 3, user: 3, description: "Trop cool, samedi en plus j'aurai bien dormi")
booking2.save
