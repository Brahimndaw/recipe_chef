class RecipesController < ApplicationController
  def index
  @recipes = Recipe.all 
  end

  def new
   @recipe = Recipe.new()
  end

  def create
 @recipe = Recipe.create()
  end

  def edit

  end

  def update
  @recipe = recipe.update()
  end

  def destroy
  end


end
