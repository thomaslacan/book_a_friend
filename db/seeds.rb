user1 = User.new(username: "alberror", first_name: "Antoine", last_name: "Duvauchelle", email: "alberror@gmail.com", password: "mdpmdp", photo: "o9bkepgtzkfmlbir17pw")
user1.save
user2 = User.new(username: "coluche", first_name: "Michel", last_name: "Colucci", email: "coluche@gmail.com", password: "mdpmdp", photo: "z4uvessihtzs8jfmgwgq")
user2.save
user3 = User.new(username: "dodo", first_name: "Dodo", last_name: "La Saumure", email: "dodo@gmail.com", password: "mdpmdp", photo: "mazj78iumuzfbgprfkyg")
user3.save
user4 = User.new(username: "franck", first_name: "Franck", last_name: "Ribery", email: "franck@gmail.com", password: "mdpmdp", photo: "xp1zx697yvn3r9pschnx")
user4.save
user5 = User.new(username: "zahia", first_name: "Zahia", last_name: "Dehar", email: "zahia@gmail.com", password: "mdpmdp", photo: "papewzhhvfjw3dg2fw6s")
user5.save
p User.all

moment1 = Moment.new(category: 'Sport', activity: 'Futsal', user: user2, description: "Going there with a bunch of friends. One player would be welcome.", location: 'Gymnase Lumière', level: 'Easy', start_time: '01.09.2018 11:00', end_time: '01.09.2018 13:00')
moment1.save!
moment2 = Moment.new(category: 'Cinema', activity: 'Save Private Ryan', user: user3, description: "UGC Châtelet, really fun.", location: 'Paris, France', level: 'Beginner', start_time: '01.09.2018 20:00', end_time: '01.09.2018 23:00')
moment2.save
moment3 = Moment.new(category: 'Concert', activity: 'Marilyn Manson', user: user2, description: "Two tickets available. I offer the concert, you pay for the beer.", location: "Bercy Arena", level: 'Hell', start_time: "03.09.2018 22:00", end_time: "04.09.2018 10:00")
moment3.save
moment4 = Moment.new(category: 'Travel', activity: 'Napoli', user: user4, description: "Lots of walks and pizzas. Get in shape!", location: "Napoli, Italy", level: 'Hard', start_time: "28.09.2018 20:00", end_time: "30.09.2018 13:00")
moment4.save
moment5 = Moment.new(category: 'Exhibition', activity: 'Beat Generation', user: user5, description: "Those guys are amazing!", location: "Beaubourg Museum", level: 'Hell', start_time: "15.09.2018 17:00", end_time: "15.09.2018 20.00")
moment5.save
moment6 = Moment.new(category: 'Visit', activity: 'Fontainebleau Castle', user: user3, description: "Nice castle, looking for a friend to join!", location: "Fontainebleau", level: 'Easy', start_time: "10.09.2018 11:00", end_time: "10.09.2018 20.00")
moment6.save
p Moment.all
