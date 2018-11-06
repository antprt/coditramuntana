require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Artist. As you add validations to Artist, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    attributes_for(:artist)
  }

  let(:invalid_attributes) {
    {name: "", description: ""}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ArtistsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Artist.create! valid_attributes
      get :index, {}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      artist = Artist.create! valid_attributes
      get :show, {:id => artist.to_param}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, {}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      artist = Artist.create! valid_attributes
      get :edit, {:id => artist.to_param}, valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Artist" do
        expect {
          post :create, {:artist => valid_attributes}, valid_session
        }.to change(Artist, :count).by(1)
      end

      it "redirects to the created artist" do
        post :create, {:artist => valid_attributes}, valid_session
        expect(response).to redirect_to(Artist.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, {:artist => invalid_attributes}, valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested artist" do
        artist = Artist.create! valid_attributes
        put :update, {:id => artist.to_param, :artist => new_attributes}, valid_session
        artist.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the artist" do
        artist = Artist.create! valid_attributes
        put :update, {:id => artist.to_param, :artist => valid_attributes}, valid_session
        expect(response).to redirect_to(artist)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        artist = Artist.create! valid_attributes
        put :update, {:id => artist.to_param, :artist => invalid_attributes}, valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested artist" do
      artist = Artist.create! valid_attributes
      expect {
        xhr :delete, :destroy, {:id => artist.to_param}, valid_session
      }.to change(Artist, :count).by(-1)
    end

    it "redirects to the artists list" do
      artist = Artist.create! valid_attributes
      xhr :delete, :destroy, {:id => artist.to_param}, valid_session
      response.content_type.should == Mime::JS
    end
  end

end
