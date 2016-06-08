require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'GET #index' do

    it 'assigns @users' do
      @test_user = FactoryGirl.create(:user)
      get :index
      expect(assigns(:users)).to eq([@test_user])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'PATCH #update' do

    before(:all) do
      @existing_user = FactoryGirl.create(:user)
    end

    context 'valid user params' do
      it 'edits the user and redirects to his/her profile' do
        patch :update, :id => @existing_user.id, :user => {'name' => 'Mario'}
        expect(controller).to set_flash[:success]
        expect(response).to redirect_to(user_path(@existing_user))
      end
    end
    context 'invalid user params' do
      it 'does not edit the user' do
        patch :update, :id => @existing_user.id, :user => {'name' => nil}
        expect(controller).to set_flash[:danger]
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the user and redirects to root path' do
      @existing_user = FactoryGirl.create(:user)
      expect{
        delete :destroy, :id => @existing_user.id
      }.to change(User, :count).by(-1)
      expect(response).to redirect_to(root_url)
    end
  end
end
