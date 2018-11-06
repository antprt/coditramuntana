require 'rails_helper'

RSpec.describe "LongPlays", type: :request do
  describe "GET /long_plays" do
    it "works! (now write some real specs)" do
      get long_plays_path
      expect(response).to have_http_status(200)
    end
  end
end
