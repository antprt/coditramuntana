require 'rails_helper'

RSpec.describe LongPlay, type: :model do
  it "Name not present" do
    FactoryBot.build(:long_play, name: nil).should_not be_valid
  end

  it "Description not present" do
    FactoryBot.build(:long_play, description: nil).should_not be_valid
  end

  it "No relation with artist invalid record" do
    FactoryBot.build(:long_play, artist_id: nil).should_not be_valid
  end
end