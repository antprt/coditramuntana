require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "Name not present" do
    expect(FactoryBot.build(:artist, name: nil)).not_to be_valid
  end

  it "Description not present" do
    expect(FactoryBot.build(:artist, description: nil)).not_to be_valid
  end

  it "Name duplicated invalid record" do
    artist = FactoryBot.create(:artist)
    expect(FactoryBot.build(:artist, name: artist.name)).not_to be_valid
  end
end
