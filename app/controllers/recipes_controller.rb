class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

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
    @comment = Comment.new
  end


  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      flash[:success] = "You have successfully created your recipe."
      redirect_to recipe_path(@recipe)
    else
      flash[:danger] = "Your recipe was not created, please try again."
      render :new
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
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

private

  def recipe_params
    params.require(:recipe).permit(:video_url, :title, :description, :tag_list, {pics: []})
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end


end
