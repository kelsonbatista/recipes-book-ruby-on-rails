class CuisinesController < ApplicationController
  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(params.require(:cuisine).permit(:name))
    if @cuisine.save
      flash.notice = 'Culinária cadastrada com sucesso'
      return redirect_to cuisines_path
    end
    render new
  end
end