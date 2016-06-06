class Recipe < ActiveRecord::Base
  has_many :recipe_amounts
  has_many :ingredients, through: :recipe_amounts
  has_many :tags
  has_many :pics
end
