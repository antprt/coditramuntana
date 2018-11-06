require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "Name not present" do
    FactoryBot.build(:artist, name: nil).should_not be_valid
  end

  it "Description not present" do
    FactoryBot.build(:artist, description: nil).should_not be_valid
  end

  it "Name duplicated invalid record" do
    artist = FactoryBot.create(:artist)
    FactoryBot.build(:artist, name: artist.name).should_not be_valid
  end
end
