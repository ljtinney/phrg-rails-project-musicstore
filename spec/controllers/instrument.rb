require "rails_helper"

RSpec.describe InstrumentsController, type: :controller do
  describe "GET index" do
    it "assigns @instruments" do
      instrument = create :instrument
      session[:user_id] = 1
      get :index
      expect(assigns(:instruments)).to eq([instrument])
    end

    it "renders the index template" do
      session[:user_id] = 1
      get :index
      expect(response).to render_template("index")
    end
  end
end