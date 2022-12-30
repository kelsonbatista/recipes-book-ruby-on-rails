class HomeController < ApplicationController
  def index
    #@recipes = Recipe.all
    @recipes = Recipe.published
  end

  def ola
  end
end