puts "destroy all"

Booking.destroy_all
Moment.destroy_all
User.destroy_all


puts "je cree des user"
user1 = User.create!(username: "alberror", first_name: "Antoine", last_name: "Duvauchelle", email: "alberror@gmail.com", password: "mdpmdp", description: "Je suis super content d'être là, j'ai envie de me faire plein d'amis et de participer à des milliers d'activités parce que mes amis actuels sont des cons.", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1534943774/yiqzxkbceyioxzdaazoq.jpg", rating: 5)

user2 = User.create!(username: "curly", first_name: "Intersnack", last_name: "french", email: "curly@gmail.com", password: "mdpmdp", description: "I am a salty delicious person who loves to meet new people. I also love peanuts. ", remote_photo_url:"https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/curly.jpg", rating: 4)

user3 = User.create!(username: "harveywein", first_name: "Harvey", last_name: "Weinstein", email: "harvey@gmail.com", password: "mdpmdp", description: " Hello there ! I am a movie producer and during my free time i like to party hard !", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/harvey.jpg", rating: 1)

user4 = User.create!(username: "songoku", first_name: "Son", last_name: "Goku", email: "songoku@gmail.com", password: "mdpmdp", description: "I am a Saiyan born on vegeta planet. I like martial arts, hairdressing and i have a secret weapon.. Here to meet human people ! Kaméhaméha ! ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/sangoku.jpg", rating: 5)

user5 = User.create!(username: "brigmac", first_name: "Brigitte", last_name: "Macron", email: "brigitte@gmail.com", password: "mdpmdp", description: " Hey ! I'm a french teacher and i'm here to meet young people to have a drink or others ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/brigittef.jpg", rating: 4)

user7 = User.create!(username: "empereurdusale", first_name: "Lorenzo", last_name: "Rico", email: "lorenzo@gmail.com", password: "mdpmdp", description: "Hey mamen wanna made some activities like video games, singin or have a drink with mamen rico ? ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/lolo.jpg", rating: 3)

puts "je cree des moments"

moment2 = Moment.create!(category: 'Drink', activity: 'Test this new bar ! ', user: user3, description: " I'm in Amsterdam this friday and i want to test this new bar in the red light district ! Some young women interested? (not you brigitte) ", location: 'Oudezijds Voorburgwal 132, 1012 GH Amsterdam, Pays-Bas', level: 'Hell', start_time: '24.08.2018 17:00', end_time: '25.08.2018 14:00')

moment3 = Moment.create!(category: 'Games', activity: 'video game night', user: user4, description: " Need to relax and have a good time ! I love to play fifa ! Interested?", location: "20 Rue d'Arènes, 25000 Besançon", level: 'Hard', start_time: '29.08.2018 19:00', end_time: '30.08.2018 02:00')

moment1 = Moment.create!(category: 'Cinema', activity: 'See a movie', user: user7, description: "1 or 2 people available to see en eaux troubles with me and my friend Rico ? ", location: '50 Rue Rambuteau, 75003 Paris', level: 'Easy', start_time: '01.09.2018 17:00', end_time: '01.09.2018 19:00')

moment4 = Moment.create!(category: 'Food', activity: 'Apero time for healthy people', user: user2, description: " Wanna share your healthy recipes ? I organise an apero in my house feel free to join ", location: "246-268 N Occidental Blvd Los Angeles, CA 90026, États-Unis", level: 'Easy', start_time: '01.10.2018 19:00', end_time: '02.10.2018 01:00')

moment5 = Moment.create!(category: 'Travel', activity: 'Trip to Vegeta !', user: user4, description: " Do you want to discover my planet with me ?", location: "412 Lewers St, Honolulu, HI 96815, États-Unis", level: 'Easy', start_time: '19.10.2018 05:00', end_time: '29.10.2018 12:00')

moment7 = Moment.create!(category: 'Sport', activity: 'Fitness trainning', user: user5, description: " Anyone interested with a fitness trainning in DC10 ", location: "16, villa gaudelet, Paris", level: 'Average', start_time: '03.11.2018 10:00', end_time: '03.11.2018 12:00')

moment10 = Moment.create!(category: 'Games', activity: 'Fortnite Battle', user: user7, description: " Fortnite tournament at home with mamen Rico join us bro !", location: "Av. das Américas, 7607 - Barra da Tijuca, Rio de Janeiro - RJ, 22793-081, Brésil", level: 'Easy', start_time: '10.11.2018 18:00', end_time: '10.11.2018 20:00')

moment8 = Moment.create!(category: 'Drink', activity: 'Wanna try this place', user: user5, description: " Search a german friend to make me discover Berghain by night.. ", location: "Am Wriezener Bahnhof, 10243 Berlin, Allemagne", level: 'Hell', start_time: '09.09.2018 20:00', end_time: '10.09.2018 02:00')

moment9 = Moment.create!(category: 'Sport', activity: 'Tennis match', user: user4, description: " Search 1 people to join me for a tennis match ", location: "Church Rd, Wimbledon, London SW19 5AG, Royaume-Uni", level: 'Hard', start_time: '12.11.2018 18:00', end_time: '12.11.2018 20:00')

moment6 = Moment.create!(category: 'Exhibition', activity: 'Visit cougar museum', user: user5, description: " I'd love to see the cougar museum with someone.. Interested? ", location: "12, rue Oberkampf, Paris", level: 'Beginner', start_time: '06.12.2018 14:00', end_time: '06.12.2018 19:00')

moment11 = Moment.create!(category: 'Travel', activity: 'Travel to Tokyo', user: user5, description: " I'd love to discover this country  ", location: "2 Chome-12-１０ Kabukichō, Shinjuku-ku, Tokyo-to 160-0021, Japon", level: 'Beginner', start_time: '01.01.2019 11:00', end_time: '05.01.2019 19:00')

p Moment.all
puts "je cree des bookings"

booking1 = Booking.create!(user_id: user1.id,  moment_id: moment3.id,  description: "lorem ipsum",)
booking2 = Booking.create!(user_id: user1.id,  moment_id: moment9.id,  description: "lorem ipsum",)
booking3 = Booking.create!(user_id: user1.id,  moment_id: moment6.id,  description: "lorem ipsum",)
booking4 = Booking.create!(user_id: user5.id,  moment_id: moment1.id,  description: "lorem ipsum",)
booking5 = Booking.create!(user_id: user5.id,  moment_id: moment2.id,  description: "lorem ipsum",)
booking6 = Booking.create!(user_id: user5.id,  moment_id: moment4.id,  description: "lorem ipsum",)

