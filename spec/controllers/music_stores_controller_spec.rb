require "rails_helper"

RSpec.describe MusicStoresController, type: :controller do
  describe "GET index" do
    it "assigns @music_stores" do
      music_store = create :music_store
      session[:user_id] = 1
      get :index
      expect(assigns(:music_stores)).to eq([music_store])
    end

    it "renders the index template" do
      session[:user_id] = 1
      get :index
      expect(response).to render_template("index")
    end
  end
end