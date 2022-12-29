class RenameColumnInRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :type, :column_type
  end
end
