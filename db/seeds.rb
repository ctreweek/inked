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
    password: "1234567890",
    avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAp26A0QmPzddI29HcIoMmaFQ4-Cf2_noyerx3dpSSuctkFs2_"
    })
  artist.save!
end

3.times do
  artist = Artist.new({
    name: Faker::Name.first_name,
    city: "Orlando",
    info: "I've been tattooing for 5 years. Specialize in watercolor and geometric.",
    email: Faker::Internet.email,
    password: "1234567890",
    avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAp26A0QmPzddI29HcIoMmaFQ4-Cf2_noyerx3dpSSuctkFs2_"

    })
  artist.save!
end

3.times do
  artist = Artist.new({
    name: Faker::Name.first_name,
    city: "Miami",
    info: "I've been tattooing for 5 years. Specialize in watercolor and geometric.",
    email: Faker::Internet.email,
    password: "1234567890",
    avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAp26A0QmPzddI29HcIoMmaFQ4-Cf2_noyerx3dpSSuctkFs2_"

    })
  artist.save!
end

4.times do
  user = User.new({
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: "1234567890"
    })
  user.save!
end


id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "http://68.media.tumblr.com/588a8debb15b290540cd47741a0f40fa/tumblr_ovbeiwfImz1vh1qoro1_1280.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://i.pinimg.com/736x/d6/85/3e/d6853e1d6c791c78f6bded304b09836d--rare-tattoos-black-rose-tattoos.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://static.tumblr.com/6ade2fec79f8e19871eec1107fd3f434/cuirv6s/6Xxn7a4w7/tumblr_static_filename_640_v2.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://i.pinimg.com/736x/24/6a/aa/246aaaafc7685bbcc6557586537551c3--tag-photo-tattoo-mermaid.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://s-media-cache-ak0.pinimg.com/originals/a2/67/d1/a267d10c3c971a142c5b420b935c3882.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://68.media.tumblr.com/e15d5bfc93bdd23f33b1787092f5a860/tumblr_n5xts1R3tg1t471b7o1_500.png",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://68.media.tumblr.com/031dac99ef663c9980ca979d76ec46f3/tumblr_ncdl25zQRq1qeo244o1_500.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://i.pinimg.com/736x/79/2e/de/792ede40d6fd59ef0829ddbb6e68dd34--seashell-tattoos-ocean-tattoos.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://68.media.tumblr.com/42ce6b97ec794b1376f873ddc7e4e6b4/tumblr_o4cffuz9d01v6luuko1_500.png",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://s-media-cache-ak0.pinimg.com/originals/20/5b/1c/205b1cff2eedcf9edbadd316d668acab.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://s-media-cache-ak0.pinimg.com/originals/38/f8/92/38f892e714133a22c9f3e4e108988df1.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end

id = Artist.first.id
while id < Artist.last.id + 1
   tat = Tattoo.create({
    url: "https://s-media-cache-ak0.pinimg.com/736x/82/72/e3/8272e3c05cb4d57b7875261ccb0aa0f4--hand-embroidery-hand-tattoos.jpg",
    artist_id: id
   })
   tat.save!
id += 1
end
puts "done!"
