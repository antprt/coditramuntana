1..5.times do
  Artist.create(name: Faker::Music.band, description: Faker::Music.key + " " + Faker::Music.chord + " " + Faker::Music.instrument + " " + Faker::Music.genre)
end