require 'rails_helper'

RSpec.describe LongPlay, type: :model do
  it "Name not present" do
    expect(FactoryBot.build(:long_play, name: nil)).not_to be_valid
  end

  it "Description not present" do
    expect(FactoryBot.build(:long_play, description: nil)).not_to be_valid
  end

  it "No relation with artist invalid record" do
    expect(FactoryBot.build(:long_play, artist_id: nil)).not_to be_valid
  end
end