class AddImageArrayColumnToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :pics, :string, array: true, default: []
  end
end
