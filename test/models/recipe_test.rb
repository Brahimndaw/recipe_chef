require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @recipe = Recipe.new(title: "Old Fashion donut", source_url: "", image_url: "")
  end

  test "recipe should be valid" do
  assert @recipe.valid?
  end

  test "title should be present" do 
  @recipe.title = " "
  assert_not @recipe.valid?
  end

  test "source_url should be present" do 
  @recipe.source_url = " "
  assert_not @recipe.valid?
  end

   test "image_url should be present" do 
  @recipe.image_url = " "
  assert_not @recipe.valid?
  end







end
