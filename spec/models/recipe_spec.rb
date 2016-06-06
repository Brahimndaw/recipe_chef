require 'rails_helper'

RSpec.describe Recipe, :type => :model do 
  let(:recipe) {
    Recipe.create(
    :title => "Old Fashion Donut",
    :video_url => "oy",
    :description => "yo"
    )
  }

    it "is valid with a title, source_url, and image_url" do
    expect(recipe).to be_valid
  end

  it "has many tags" do
  tags = Tag.create(name: "chicken")
  expect(recipe.tags.first).to eq(tag)
  end




end
