class RemoveOldRecipeColumns < ActiveRecord::Migration
  def up
     remove_column :recipes, :source_url 
     remove_column :recipes, :image_url
  end

end
