FactoryBot.define do
  factory :artist do
    name { Faker::Music.band }
    description { "The great english band" }
  end
end
