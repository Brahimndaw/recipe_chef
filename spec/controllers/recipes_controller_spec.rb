require 'rails_helper'

RSpec.describe RecipesController, type: :controller do

  describe 'GET #index' do
    context 'without params' do
      it 'shows all recipes' do
        get :index
        expect(response).to render_template(:index)
      end
    end
    context 'with tag param' do
      it 'shows only tagged recipes' do
        parm = Recipe.create(title: "chicken parm")
        chicken = Tag.create(name: "chicken")
        parm.tag_list.add("chicken")
        parm.save
        get :index, :tag => "chicken"
        expect(assigns(:recipes)).to eq([parm])
      end
    end
  end

  describe 'GET #search' do
    context 'no search hits' do
      it 'redirects to recipe path' do
        get :search, :q => "xyzzy"
        expect(response).to redirect_to(recipes_path)
      end
    end
  end

  describe 'GET #new' do
    it 'renders the new recipe template' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    context 'valid recipe params' do
      it 'creates the recipe and redirects to recipe path' do
        post :create, :recipe => {'title' => 'beef'}
        expect(controller).to set_flash[:success]
        expect(response).to redirect_to(recipes_path)
      end
    end
    context 'invalid recipe params' do
      it 'does not create the recipe' do
        post :create, :recipe => {'description' => 'beef'}
        expect(controller).to set_flash[:danger]
      end
    end
  end

  describe 'PATCH #update' do

    before(:all) do
      @existing_recipe = FactoryGirl.create(:recipe)
    end

    context 'valid recipe params' do
      it 'edits the recipe and redirects to recipe path' do
        patch :update, :id => @existing_recipe.id, :recipe => {'title' => 'beef'}
        expect(controller).to set_flash[:success]
        expect(response).to redirect_to(recipe_path(@existing_recipe))
      end
    end
    context 'invalid recipe params' do
      it 'does not create the recipe' do
        patch :update, :id => @existing_recipe.id, :recipe => {'title' => nil}
        expect(controller).to set_flash[:danger]
      end
    end
  end

end
