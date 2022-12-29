class AddColumnsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :cuisine, :string
    add_column :recipes, :ingredients, :string
    add_column :recipes, :method, :string
    add_column :recipes, :time, :integer
  end
end
