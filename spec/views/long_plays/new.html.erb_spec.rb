require 'rails_helper'

RSpec.describe "long_plays/new", type: :view do
  before(:each) do
    @long_play = FactoryBot.build(:long_play)
  end

  it "renders new long_play form" do
    render

    assert_select "form[action=?][method=?]", long_plays_path, "post" do

      assert_select "input#long_play_name[name=?]", "long_play[name]"

      assert_select "textarea#long_play_description[name=?]", "long_play[description]"

      assert_select "input#long_play_artist_id[name=?]", "long_play[artist_id]"
    end
  end
end
