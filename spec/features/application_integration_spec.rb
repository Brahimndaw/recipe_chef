require 'spec_helper'

 describe 'GET /recipes - recipe index' do
   it 'gets all recipes' do
     visit '/recipes'
     expect(page.body).to include('Recipes to Love')
     within('#recipe-list') do
       expect(page).to have_selector('#individual-recipe', :count => Recipe.count)
     end
   end
 end

 describe 'POST /search - Search function' do

   def user_login
       @luigi = User.create(
         name: "Luigo",
         password: "password",
         username: "lui",
         email: 'lui@lg.com',
       )
       visit '/'
       click_link('Sign in')
       expect(current_path).to eq('/signin')
       fill_in("username", :with => "lui")
       fill_in("password", :with => "password")
       click_button('login')
     end

    it 'searches titles' do
      user_login
      fill_in(:q, :with => 'plantain')
      find('#search-submit').click
      expect(page).to have_text("plantain")
    end
 end
