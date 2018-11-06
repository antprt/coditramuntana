require 'rails_helper'

RSpec.describe "long_plays/show", type: :view do
  before(:each) do
    @long_play = FactoryBot.create(:long_play, name: "Name" ,description: "MyText")
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
