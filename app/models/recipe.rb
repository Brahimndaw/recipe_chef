class Recipe < ActiveRecord::Base
  has_many :ingredients, through: :recipe_amounts, dependent: :destroy
  has_many :recipe_amounts, dependent: :destroy
  has_many :comments
  belongs_to :user
  mount_uploaders :pics, RecipePicUploader
  acts_as_taggable
  acts_as_taggable_on :chicken, :fish, :seafood, :meat, :others
  ratyrate_rateable "delizioso"
  validates_presence_of :title
end
