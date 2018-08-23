user1 = User.new(username: "alberror", first_name: "Antoine", last_name: "Duvauchelle", email: "alberror@gmail.com", password: "mdpmdp", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1534943774/yiqzxkbceyioxzdaazoq.jpg")
user1.save


moment1 = Moment.new(category: 'Sport', activity: 'Futsal', user: user1, description: "Going there with a bunch of friends. One player would be welcome.", location: '16 Villa Gaudelet, Paris', level: 'Easy', start_time: '01.09.2018 11:00', end_time: '01.09.2018 13:00')
moment1.save!

