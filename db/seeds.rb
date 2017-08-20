Booking.destroy_all
User.destroy_all
Artist.destroy_all

puts "creating seeds.."

@cities = ["Gainesville", "Ocala", "Tampa", "Miami"]
12.times do
  artist = Artist.new({
    name: Faker::Name.first_name,
    city: @cities.sample,
    info: "I've been tattooing for 5 years. Specialize in watercolor and geometric.",
    email: Faker::Internet.email,
    password: "1234567890"
    })
  artist.save!
end

12.times do
  user = User.new({
    email: Faker::Internet.email,
    password: "1234567890"
    })
  user.save!
end

puts "done!"
