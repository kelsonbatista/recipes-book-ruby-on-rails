class Recipe < ApplicationRecord
  #referenciar a outra tabela (recipe_type)
  belongs_to :recipe_type
end
