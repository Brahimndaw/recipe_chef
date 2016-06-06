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

   let(:user) { User.create(username: "Mario", name: "Mario", email: "mario@mario.com") }

   before(:each) do
     binding.pry
     allow_any_instance_of(RecipesController).to receive(:current_user).and_return(user)
     @plantain = Recipe.create(title: "plantain")
   end

   it 'searches titles' do
     visit '/recipes'
     binding.pry
     within('.navbar-form') do
       fill_in(:q, :with => 'plantain')
       find('#search-submit').click
     end
     expect(page).to have_text("plantain")
   end
 end
