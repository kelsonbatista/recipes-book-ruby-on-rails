class RecipeTypesController < ApplicationController
  def new
    @recipe_type = RecipeType.new
  end

  def create
    @recipe_type = RecipeType.new(params.require(:recipe_type).permit(:name))
    if @recipe_type.save
      flash.notice = 'Tipo cadastrado com sucesso'
      return redirect_to recipe_types_path #o return garante que termina aqui
    else
      render new
    end
  end
end