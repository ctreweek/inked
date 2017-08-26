Booking.destroy_all
Tattoo.destroy_all
User.destroy_all
Artist.destroy_all

puts "creating seeds.."

3.times do
  artist = Artist.new({
    name: Faker::Name.first_name,
    city: "Gainesville",
    info: "I've been tattooing for 5 years. Specialize in watercolor and geometric.",
    email: Faker::Internet.email,
    password: "1234567890"
    })
  artist.save!
end

3.times do
  artist = Artist.new({
    name: Faker::Name.first_name,
    city: "Orlando",
    info: "I've been tattooing for 5 years. Specialize in watercolor and geometric.",
    email: Faker::Internet.email,
    password: "1234567890"
    })
  artist.save!
end

3.times do
  artist = Artist.new({
    name: Faker::Name.first_name,
    city: "Miami",
    info: "I've been tattooing for 5 years. Specialize in watercolor and geometric.",
    email: Faker::Internet.email,
    password: "1234567890"
    })
  artist.save!
end

4.times do
  user = User.new({
    email: Faker::Internet.email,
    password: "1234567890"
    })
  user.save!
end



id = Artist.first.id
while id < Artist.last.id + 1
  12.times do
   tat = Tattoo.create({
    url: "https://unsplash.it/200/300/?random",
    artist_id: id
   })
   tat.save!
  end
id += 1
end

puts "done!"
