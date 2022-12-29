class RenameColumnTypeInRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :column_type, :recipe_type
  end
end
