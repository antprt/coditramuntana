require 'rails_helper'

RSpec.describe "long_plays/edit", type: :view do
  before(:each) do
    @long_play = FactoryBot.create(:long_play)
  end

  it "renders the edit long_play form" do
    render

    assert_select "form[action=?][method=?]", long_play_path(@long_play), "post" do

      assert_select "input#long_play_name[name=?]", "long_play[name]"

      assert_select "textarea#long_play_description[name=?]", "long_play[description]"

      assert_select "input#long_play_artist_id[name=?]", "long_play[artist_id]"
    end
  end
end
