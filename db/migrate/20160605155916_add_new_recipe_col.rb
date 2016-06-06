class AddNewRecipeCol < ActiveRecord::Migration
  
  def change
     add_column :recipes, :video_url, :string
     add_column :recipes, :description, :string
  end

end
