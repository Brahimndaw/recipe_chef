require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe 'POST #create' do

    it "rejects incorrect passwords" do
      @test_user = FactoryGirl.create(:user)
      post :create, :username => @test_user.username, :password => "wrongpassword"
      expect(response).to redirect_to(signin_path)
    end
  end
end
