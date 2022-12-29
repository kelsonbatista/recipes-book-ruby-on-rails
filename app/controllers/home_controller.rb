class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def ola
  end
end