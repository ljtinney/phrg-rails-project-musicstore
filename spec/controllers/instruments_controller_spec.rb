require "rails_helper"

RSpec.describe InstrumentsController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      session[:user_id] = 1
      get :index
      expect(response).to render_template("index")
    end
  end
end
