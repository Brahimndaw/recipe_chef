class RecipesController < ApplicationController

  def search
    Adapter::FoodAPIWrapper.new(params[:query])
    @recipes = Recipe.where("name LIKE ?", params[:query])
    binding.pry
    redirect_to search_form_path
  end

  # private

  # def search_params
  #   params.require(:search).permit(:q)
  # end

 #  def index
 #  @recipes = Recipe.all
 #  end
 #
 #  def new
 #   @recipe = Recipe.new()
 #  end
 #
 #  def create
 # @recipe = Recipe.create()
 #  end
 #
 #  def edit
 #
 #  end
 #
 #  def update
 #  @recipe = recipe.update()
 #  end
  #
  # def destroy
  # end


end
