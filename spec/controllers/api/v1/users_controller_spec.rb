require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe "GET #index" do

    it "list all users a @users" do
      user1, user2 = create(:user), create(:user)
      get :index
      expect(assigns(:users)).to eq([user1,user2])
    end
    
    it "responds with 200 " do
      expect(response).to have_http_status(:success)
    end
    
    it "responds with format json" do
      get :index, :fotmat => :json
    end 
  end
end
