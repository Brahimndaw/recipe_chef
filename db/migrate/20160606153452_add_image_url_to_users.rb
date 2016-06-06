class AddImageUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image_url, :string, default: "https://pixabay.com/static/uploads/photo/2014/04/02/16/22/chef-307076_960_720.png"
  end
end
