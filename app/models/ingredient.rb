class Ingredient < ActiveRecord::Base
  has_many :recipe_amounts, dependent: :destroy
  has_many :recipes, through: :recipe_amounts, dependent: :destroy
end
