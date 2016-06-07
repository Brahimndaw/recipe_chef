class ChangeRecipeAmountsColumnNames < ActiveRecord::Migration
  def change
    rename_column :recipe_amounts, :ingredients_id, :ingredient_id
    rename_column :recipe_amounts, :recipes_id, :recipe_id
  end
end
