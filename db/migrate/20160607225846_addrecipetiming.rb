class Addrecipetiming < ActiveRecord::Migration
  def change
     add_column :recipes, :length, :string
  end
end
