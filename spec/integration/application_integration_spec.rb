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
  let(:plantain) {Recipe.create(title: "plantain")}
  it 'searches titles' do
    visit '/'
    within('.navbar-form') do
      fill_in(:q, :with => 'plantain')
      find('#search-submit').click
    end
    binding.pry
    expect(page).to have_text("plantain")
  end
end
