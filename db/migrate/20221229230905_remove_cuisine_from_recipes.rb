class RemoveCuisineFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :cuisine, :string
  end
end
