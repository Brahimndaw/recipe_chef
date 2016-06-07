require 'rails_helper'

RSpec.describe Recipe, :type => :model do 
  let(:recipe) {
    Recipe.create(
    :title => "Old Fashion Donut",
    :video_url => "oy",
    :description => "yo",
    :tag_list => "Chicken"
    )
  }

    it "is valid with a title, source_url, and image_url" do
    expect(recipe).to be_valid
  end

  it "has many tags" do
  tags = Tag.create(name: "Meat", taggings_count: 0)
  expect(recipe.tags.first).to eq(tags)
  end




end
