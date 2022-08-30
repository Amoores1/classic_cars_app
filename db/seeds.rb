# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Car.destroy_all
User.destroy_all
user = User.new(email: "wow121212@email.com", password: "password123123", name: "Schumacher")
user.save!
car = Car.new(manufacturer: "ferrari", year: 2022, model: "F1", category:"F1", day_price: 1, user: user)
car.save!
Booking.create!(total_price: "2", start_date: "01/01/20", end_date: "12/12/22", user: user, car: car)
