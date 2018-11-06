require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    @artist1 = FactoryBot.create(:artist)
    @artist2 = FactoryBot.create(:artist)
    @artists = [@artist1, @artist2]
  end
  
  it "renders a list of artists" do
    render
    assert_select "tr#artist-1>td:nth-child(1)", :text => @artist1.name.to_s, :count => 1
    assert_select "tr#artist-1>td:nth-child(2)", :text => @artist1.description.to_s, :count => 1

    assert_select "tr#artist-2>td:nth-child(1)", :text => @artist2.name.to_s, :count => 1
    assert_select "tr#artist-2>td:nth-child(2)", :text => @artist2.description.to_s, :count => 1
  end
end
