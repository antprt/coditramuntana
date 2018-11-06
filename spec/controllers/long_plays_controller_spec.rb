require 'rails_helper'

RSpec.describe LongPlaysController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # LongPlay. As you add validations to LongPlay, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for(:long_play)
  }

  let(:invalid_attributes) {
    {name: "", text: "", artist_id: ""}
  }

  let(:long_play){
    FactoryBot.build(:long_play)
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LongPlaysController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index without filter" do
    it "returns a success response" do
      long_play.save! valid_attributes
      get :index, {}
      expect(response).to be_successful
    end
  end

  describe "GET #index with filter" do
    it "returns a success response" do
      long_play.save! valid_attributes
      get :index, xhr: true, params: {term: "a"}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      lp = long_play.save! valid_attributes
      get :show, params: {:id => lp.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, {}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      lp = long_play.save! valid_attributes
      get :edit, params: {:id => lp.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new LongPlay" do
        artist = FactoryBot.create(:artist)
        valid_attributes[:artist_id] = artist.id
        expect {
          post :create, params: {:long_play => valid_attributes}
        }.to change(LongPlay, :count).by(1)
      end

      it "redirects to the created long_play" do
        artist = FactoryBot.create(:artist)
        valid_attributes[:artist_id] = artist.id
        post :create, params: {:long_play => valid_attributes}
        expect(response).to redirect_to(LongPlay.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {:long_play => invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: "New name", description: "new description"}
      }

      it "updates the requested long_play" do
        long_play.save! valid_attributes
        put :update, params: {:id => long_play.to_param, :long_play => new_attributes}
        expect(long_play.reload.name).to eq(new_attributes[:name])
      end

      it "redirects to the long_play" do
        long_play.save! valid_attributes
        put :update, params: {:id => long_play.to_param, :long_play => new_attributes}
        expect(response).to redirect_to(long_play)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        long_play.save! valid_attributes
        put :update, params: {:id => long_play.to_param, :long_play => invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested long_play" do
      long_play.save! valid_attributes
      expect {
        post :destroy, xhr: true, params: {id: long_play.to_param}
      }.to change(LongPlay, :count).by(-1)
    end

    it "redirects to the long_plays list" do
      long_play.save! valid_attributes
      post :destroy, xhr: true, params: {id: long_play.to_param}
      expect(response.content_type).to eq(Mime[:js])
    end
  end

end
