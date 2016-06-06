class Recipe < ActiveRecord::Base
  has_many :ingredients, through: :recipe_amounts, dependent: :destroy
  has_many :recipe_amounts, dependent: :destroy
  has_many :pics
  acts_as_taggable
  acts_as_taggable_on :chicken, :fish, :seafood, :meat, :others
end
