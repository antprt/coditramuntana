FactoryBot.define do
  factory :long_play do
    name { Faker::Music.album }
    description { Faker::Music.key + " " + Faker::Music.chord + " " + Faker::Music.instrument + " " + Faker::Music.genre }
    association :artist, factory: :artist
  end
end
