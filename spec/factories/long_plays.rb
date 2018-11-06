FactoryBot.define do
  factory :long_play do
    name { "Abbey Road" }
    description { "Is the most popular lp of the beatles" }
    association :artist, factory: :artist
  end
end
