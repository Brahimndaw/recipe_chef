class Addcolumntable < ActiveRecord::Migration
  def change
    add_column :recipes, :tag_list, :string
  end
end
