FactoryBot.define do
  factory :artist do
    name { Faker::Music.band }
    description { Faker::Music.key + " " + Faker::Music.chord + " " + Faker::Music.instrument + " " + Faker::Music.genre }
  end
end
