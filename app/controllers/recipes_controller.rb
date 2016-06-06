class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def search
    Adapter::FoodAPIWrapper.new(params[:query])
    @recipes = Recipe.where("name LIKE ?", params[:query])
    binding.pry
    redirect_to search_form_path
  end

  def index
    if params[:tag]
      @recipes = Recipe.tagged_with(params[:tag])
    else
      @recipes = Recipe.all
    end
  end

  def new
   @recipe = Recipe.new
  end

  def show
  end


  def create
   @recipe = Recipe.create(recipe_params)
   if @recipe.save
    flash[:success] = "You have successfully created your recipe."
    redirect_to recipes_path
   else
    flash[:danger] = "Your recipe was not created, please try again."
   end
end

  def edit

  end

  def update

    if @recipe.update(recipe_params)
    flash[:success] = "You have successfully updated your recipe"
    redirect_to recipe_path(@recipe)
    else
    flash[:danger] = "Please check the required fields and try again"
    redirect_to :back
   end
  end

  def destroy
    binding.pry
    @recipe.destroy
    redirect_to recipes_path
  end

private

  def recipe_params
    params.require(:recipe).permit(:video_url, :title, :description, :tag_list)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
