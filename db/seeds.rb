require "faker"

Booking.destroy_all
Car.destroy_all
User.destroy_all

user = User.new(email: "wow121212@email.com", password: "password123123", name: "Schumacher")
user.save!

car = Car.new(manufacturer: "ferrari", year: 2022, model: "F1", category:"F1", day_price: 1, user: user)
car.save!

12.times {
  new_car = Car.new(
    manufacturer: Faker::Vehicle.manufacture,
    year: rand(1900..2022),
    model: Faker::Vehicle.model,
    category: Faker::Vehicle.car_type,
    day_price: rand(1..100),
    user: user
  )
  new_car.save!
  puts "New Car Made"
}

Booking.create!(total_price: "2", start_date: "01/01/20", end_date: "12/12/22", user: user, car: car)
