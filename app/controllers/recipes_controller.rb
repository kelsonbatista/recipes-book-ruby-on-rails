class RecipesController < ApplicationController
  before_action :recipe_find, only: [:show, :edit, :update, :destroy]

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    end
    render new
  end

  def edit
    
  end

  def update
    @recipe.update(recipe_params)
    redirect_to root_path
  end

  def destroy
    @recipe.destroy
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :recipe_type, :cuisine, :ingredients, :method, :time)
  end

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end