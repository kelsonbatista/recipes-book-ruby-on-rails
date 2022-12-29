class HomeController < ApplicationController
  def index
    r1 = Recipe.new('Bolo de cenoura', 'Sobremesa')
    r2 = Recipe.new('Feijoada', 'Prato principal')
    r3 = Recipe.new('Bolo de chocolate', 'Sobremesa')

    @recipes = [r1, r2, r3]
  end

  def ola
  end
end