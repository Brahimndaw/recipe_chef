class CreateRecipeAmounts < ActiveRecord::Migration
  def change
    create_table :recipe_amounts do |t|
      t.references :recipes
      t.references :ingredients
    end
  end
end
