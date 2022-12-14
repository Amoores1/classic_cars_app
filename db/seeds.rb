require "faker"
require "open-uri"

Booking.destroy_all
Car.destroy_all
User.destroy_all

user1 = User.new(email: "wow121212@email.com", password: "password123123", name: "David")
user1.photo.attach(io: URI.open("https://randomuser.me/api/portraits/men/38.jpg"), filename: "david.jpg", content_type: "image/jpg")
user1.save!
puts "generated user"

user2 = User.new(email: "wow12121@email.com", password: "password123123", name: "Aaron")
user2.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/98755174?v=4"), filename: "aaron.jpg", content_type: "image/jpg")
user2.save!
puts "generated user"

user3 = User.new(email: "wow1212@email.com", password: "password123123", name: "Hashim")
user3.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/109346636?v=4"), filename: "hashim.jpg", content_type: "image/jpg")
user3.save!
puts "generated user"

user4 = User.new(email: "wow121@email.com", password: "password123123", name: "Ernesto")
user4.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/95420474?v=4"), filename: "ernesto.jpg", content_type: "image/jpg")
user4.save!
puts "generated user"

user5 = User.new(email: "wow12@email.com", password: "password123123", name: "Claudio")
user5.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/58989756?v=4"), filename: "claudio.jpg", content_type: "image/jpg")
user5.save!
puts "generated user"

user6 = User.new(email: "wow1@email.com", password: "password123123", name: "John")
user6.photo.attach(io: URI.open("https://randomuser.me/api/portraits/men/0.jpg"), filename: "john.jpg", content_type: "image/jpg")
user6.save!
puts "generated user"

user7 = User.new(email: "wow21@email.com", password: "password123123", name: "Sarah")
user7.photo.attach(io: URI.open("https://randomuser.me/api/portraits/women/23.jpg"), filename: "sarah.jpg", content_type: "image/jpg")
user7.save!
puts "generated user"

user8 = User.new(email: "wow212@email.com", password: "password123123", name: "Jane")
user8.photo.attach(io: URI.open("https://randomuser.me/api/portraits/women/44.jpg"), filename: "jane.jpg", content_type: "image/jpg")
user8.save!
puts "generated user"

user9 = User.new(email: "wow2121@email.com", password: "password123123", name: "Dave")
user9.photo.attach(io: URI.open("https://randomuser.me/api/portraits/men/4.jpg"), filename: "dave.jpg", content_type: "image/jpg")
user9.save!
puts "generated user"


car1 = Car.new(manufacturer: "Ferrari", year: 1987, model: "F40", category: "Sports", day_price: rand(90..300), user: user1)
car1.photo.attach(io: URI.open("https://upload.wikimedia.org/wikipedia/commons/c/cb/F40_Ferrari_20090509.jpg"), filename: "ferrari.jpg", content_type: "image/jpg")
car1.save!
puts "generated car"

car2 = Car.new(manufacturer: "Audi", year: 1985, model: "Quattro", category: "Coupe", day_price: rand(90..300), user: user2)
car2.photo.attach(io: URI.open("https://digismak.com/wp-content/uploads/2022/03/Audi-Quattro-one-of-the-best-Audi-cars-in-history.jpg"), filename: "audi.jpg", content_type: "image/jpg")
car2.save!
puts "generated car"

car3 = Car.new(manufacturer: "Jaguar", year: 1961, model: "E-Type", category: "Sports", day_price: rand(90..300), user: user3)
car3.photo.attach(io: URI.open("https://pendine.com/wp-content/uploads/2018/10/DSC_3633-edited-21-e1570454025238-1500x842.jpg"), filename: "jaguar.jpg", content_type: "image/jpg")
car3.save!
puts "generated car"

car4 = Car.new(manufacturer: "Maserati", year: 1969, model: "Ghibli", category: "Coupe", day_price: rand(90..300), user: user4)
car4.photo.attach(io: URI.open("https://images.hgmsites.net/lrg/1969-maserati-ghibli-4-7-via-ebay-motors_100366460_l.jpg"), filename: "maserati.jpg", content_type: "image/jpg")
car4.save!
puts "generated car"

car5 = Car.new(manufacturer: "Aston Martin", year: 1964, model: "DB5", category: "Coupe", day_price: rand(90..300), user: user5)
car5.photo.attach(io: URI.open("http://classicmotorhub.com/wp-content/uploads/1964-Aston-Martin-DB5-33.jpg"), filename: "aston.jpg", content_type: "image/jpg")
car5.save!
puts "generated car"

car6 = Car.new(manufacturer: "Chevrolet", year: 1965, model: "Corvet", category: "Muscle", day_price: rand(90..300), user: user6)
car6.photo.attach(io: URI.open("https://silodrome.com/wp-content/uploads/2016/03/Chevrolet-Corvette-1.jpg"), filename: "chev.jpg", content_type: "image/jpg")
car6.save!
puts "generated car"

car7 = Car.new(manufacturer: "Lamborghini", year: 1970, model: "Miura", category: "Sports", day_price: rand(90..300), user: user7)
car7.photo.attach(io: URI.open("https://i.pinimg.com/originals/00/b0/42/00b0427d4019ac224bf9879ab2f21a85.jpg"), filename: "lambo.jpg", content_type: "image/jpg")
car7.save!
puts "generated car"

car8 = Car.new(manufacturer: "Porsche", year: 1970, model: "911", category: "Coupe", day_price: rand(90..300), user: user8)
car8.photo.attach(io: URI.open("https://www.historics.co.uk/media/1588784/1970-porsche-911-t-1.jpg"), filename: "porsche.jpg", content_type: "image/jpg")
car8.save!
puts "generated car"

car9 = Car.new(manufacturer: "Rolls Royce", year: 1949, model: "Dawn Drophead", category: "Classic", day_price: rand(90..300), user: user9)
car9.photo.attach(io: URI.open("https://i.redd.it/shaiq07raih71.jpg"), filename: "RR.jpg", content_type: "image/jpg")
car9.save!
puts "generated car"
