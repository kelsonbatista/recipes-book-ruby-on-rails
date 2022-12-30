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
      return redirect_to root_path
    end
    render new
  end

  def edit
    
  end

  def update
    if @recipe.update(recipe_params)
      return redirect_to recipe_path(@recipe.id)
    end
    render edit
  end

  def destroy
    if @recipe.destroy
      return redirect_to root_path
    end
    render show
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :recipe_type_id, :cuisine_id, :ingredients, :method, :time)
  end

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end