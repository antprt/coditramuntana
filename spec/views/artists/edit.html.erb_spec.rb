require 'rails_helper'

RSpec.describe "artists/edit", type: :view do
  before(:each) do
    @artist = FactoryBot.create(:artist)
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "textarea#artist_description[name=?]", "artist[description]"
    end
  end
end
