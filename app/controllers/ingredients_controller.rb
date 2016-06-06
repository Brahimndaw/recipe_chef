class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all.sort_by {|ingredient| ingredient.name}
  end
end
