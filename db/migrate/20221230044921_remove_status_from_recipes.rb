class RemoveStatusFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :status, :string
  end
end
