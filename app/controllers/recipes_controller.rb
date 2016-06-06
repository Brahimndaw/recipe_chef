class RecipesController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:search]
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def search
    # Adapter::FoodAPIWrapper.new(params[:query])
    @recipes = Recipe.where("lower(title) LIKE ? OR tags LIKE ?", "%#{params[:q].downcase}%")
    if @recipes.nil?
      flash[:danger] = "Sorry, no results"
      redirect_to recipes_path
    end
  end

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
    flash[:success] = "You have successfully created your recipe."
    redirect_to recipes_path
   else
    flash[:danger] = "Your recipe was not created, please try again."
   end
end

  def edit

  end

  def update
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

private

  def recipe_params
    params.require(:recipe).permit(:video_url, :title, :description, tags_attributes: [:name])
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
