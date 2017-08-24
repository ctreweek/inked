Booking.destroy_all
Tattoo.destroy_all
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


tattoo = Tattoo.new({
  url: "https://68.media.tumblr.com/1edcf2d3cb3eb781032764138bb443a1/tumblr_ov59uamA3O1u80dlxo1_1280.jpg",
  artist_id: Artist.first.id
  })
tattoo.save!

puts "done!"
