require 'rails_helper'

RSpec.describe DeliveriesController, type: :controller do

  describe "GET #price:decimal" do
    it "returns http success" do
      get :price:decimal
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #count:float" do
    it "returns http success" do
      get :count:float
      expect(response).to have_http_status(:success)
    end
  end

end
