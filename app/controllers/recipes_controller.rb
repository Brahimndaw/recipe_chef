class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
  @recipes = Recipe.all 
  end

  def new
   @recipe = Recipe.new
  end

  def show
  end


  def create
   @recipe = Recipe.create(recipe_params)
   if @recipe.save
    flash[:sucess] = "You have successfully created your recipe."
    redirect_to recipes_path
   else
    flash[:danger] = "You're recipe was not created, please try again."
   end
end 

  def edit

  end

  def update
  @recipe = recipe.update()
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

private
  
  def recipe_params
    params.require(:recipe).permit(:video_url, :title, :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
