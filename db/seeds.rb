

user1 = User.new(username: "alberror", first_name: "Antoine", last_name: "Duvauchelle", email: "alberror@gmail.com", password: "mdpmdp", description: "Je suis super content d'être là, j'ai envie de me faire plein d'amis et de participer à des milliers d'activités parce que mes amis actuels sont des cons.", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1534943774/yiqzxkbceyioxzdaazoq.jpg", rating: 5)
user1.save

user2 = User.new(username: "curly", first_name: "Intersnack", last_name: "french", email: "curly@gmail.com", password: "mdpmdp", description: "I am a salty delicious person who loves to meet new people. I also love peanuts. ", remote_photo_url:"https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/curly.jpg", rating: 4)
user2.save

user3 = User.new(username: "harveywein", first_name: "Harvey", last_name: "Weinstein", email: "harvey@gmail.com", password: "mdpmdp", description: " Hello there ! I am a movie producer and during my free time i like to party hard !", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/harvey.jpg", rating: 1)
user3.save

user4 = User.new(username: "songoku", first_name: "Son", last_name: "Goku", email: "songoku@gmail.com", password: "mdpmdp", description: "I am a Saiyan born on vegeta planet. I like martial arts, hairdressing and i have a secret weapon.. Here to meet human people ! Kaméhaméha ! ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/sangoku.jpg", rating: 5)
user4.save

user5 = User.new(username: "brigmac", first_name: "Brigitte", last_name: "Macron", email: "brigitte@gmail.com", password: "mdpmdp", description: " Hey ! I'm a french teacher and i'm here to meet young people to have a drink or others ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/brigittef.jpg", rating: 4)
user5.save

user7 = User.new(username: "empereurdusale", first_name: "Lorenzo", last_name: "Rico", email: "lorenzo@gmail.com", password: "mdpmdp", description: "Hey mamen wanna made some activities like video games, singin or have a drink with mamen rico ? ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535107313/lolo.jpg", rating: 3)
user7.save






moment2 = Moment.new(category: 'Drink', activity: 'Test this new bar ! ', user: user3, description: " I'm in Amsterdam this friday and i want to test this new bar in the red light district ! Some young women interested? (not you brigitte) ", location: 'Oudezijds Voorburgwal 132, 1012 GH Amsterdam, Pays-Bas', level: 'Hell', start_time: '24.08.2018 17:00', end_time: '25.08.2018 14:00')
moment2.save!

moment3 = Moment.new(category: 'Games', activity: 'video game night', user: user4, description: " Need to relax and have a good time ! I love to play fifa ! Interested?", location: "20 Rue d'Arènes, 25000 Besançon", level: 'Hard', start_time: '29.08.2018 19:00', end_time: '30.08.2018 02:00')
moment3.save!

moment1 = Moment.new(category: 'Cinema', activity: 'See a movie', user: user7, description: "1 or 2 people available to see en eaux troubles with me and my friend Rico ? ", location: '50 Rue Rambuteau, 75003 Paris', level: 'Easy', start_time: '01.09.2018 17:00', end_time: '01.09.2018 19:00')
moment1.save!

moment4 = Moment.new(category: 'Food', activity: 'Apero time for healthy people', user: user2, description: " Wanna share your healthy recipes ? I organise an apero in my house feel free to join ", location: "246-268 N Occidental Blvd Los Angeles, CA 90026, États-Unis", level: 'Easy', start_time: '01.10.2018 19:00', end_time: '02.10.2018 01:00')
moment4.save!

moment5 = Moment.new(category: 'Travel', activity: 'Trip to Vegeta !', user: user4, description: " Do you want to discover my planet with me ?", location: "412 Lewers St, Honolulu, HI 96815, États-Unis", level: 'Easy', start_time: '19.10.2018 05:00', end_time: '29.10.2018 12:00')
moment5.save!

moment7 = Moment.new(category: 'Sport', activity: 'Fitness trainning', user: user5, description: " Anyone interested with a fitness trainning in DC10 ", location: "Carretera las salinas, km 1, 07818 Sant Josep de sa Talaia, Illes Balears, Espagne", level: 'Average', start_time: '03.11.2018 10:00', end_time: '03.11.2018 12:00')
moment7.save!

moment10 = Moment.new(category: 'Games', activity: 'Fortnite Battle', user: user7, description: " Fortnite tournament at home with mamen Rico join us bro !", location: "Av. das Américas, 7607 - Barra da Tijuca, Rio de Janeiro - RJ, 22793-081, Brésil", level: 'Easy', start_time: '10.11.2018 18:00', end_time: '10.11.2018 20:00')
moment10.save!

moment8 = Moment.new(category: 'Drink', activity: 'Wanna try this place', user: user5, description: " Search a german friend to make me discover Berghain by night.. ", location: "Am Wriezener Bahnhof, 10243 Berlin, Allemagne", level: 'Hell', start_time: '09.09.2018 20:00', end_time: '10.09.2018 02:00')
moment8.save!

moment9 = Moment.new(category: 'Sport', activity: 'Tennis match', user: user4, description: " Search 1 people to join me for a tennis match ", location: "Church Rd, Wimbledon, London SW19 5AG, Royaume-Uni", level: 'Hard', start_time: '12.11.2018 18:00', end_time: '12.11.2018 20:00')
moment9.save!

moment6 = Moment.new(category: 'Exhibition', activity: 'Visit cougar museum', user: user5, description: " I'd love to see the cougar museum with someone.. Interested? ", location: "Cougar Mountain, Bellevue, Washington, États-Unis", level: 'Beginenr', start_time: '06.12.2018 14:00', end_time: '06.12.2018 19:00')
moment6.save!

moment11 = Moment.new(category: 'Travel', activity: 'Travel to Tokyo', user: user5, description: " I'd love to discover this country  ", location: "2 Chome-12-１０ Kabukichō, Shinjuku-ku, Tōkyō-to 160-0021, Japon", level: 'Beginenr', start_time: '01.01.2019 11:00', end_time: '05.01.2019 19:00')
moment6.save!







