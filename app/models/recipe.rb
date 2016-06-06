class Recipe < ActiveRecord::Base
  has_many :recipe_amounts, dependent: :destroy
  has_many :ingredients, through: :recipe_amounts, dependent: :destroy
  has_many :tags
  has_many :pics
end
