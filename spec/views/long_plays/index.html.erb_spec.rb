require 'rails_helper'

RSpec.describe "long_plays/index", type: :view do
  before(:each) do
    @longplay1 = FactoryBot.create(:long_play)
    @longplay2 = FactoryBot.create(:long_play)
    @long_plays = [@longplay1, @longplay2]
  end

  it "renders a list of long_plays" do
    render
    assert_select "tr#long-play-1>td:nth-child(1)", :text => @longplay1.name.to_s, :count => 1
    assert_select "tr#long-play-1>td:nth-child(2)", :text => @longplay1.description.to_s, :count => 1

    assert_select "tr#long-play-2>td:nth-child(1)", :text => @longplay2.name.to_s, :count => 1
    assert_select "tr#long-play-2>td:nth-child(2)", :text => @longplay2.description.to_s, :count => 1
  end
end
