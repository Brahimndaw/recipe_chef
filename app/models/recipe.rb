class Recipe < ActiveRecord::Base
  has_many :ingredients, through: :recipe_amounts, dependent: :destroy
  has_many :recipe_amounts, dependent: :destroy
  has_many :tags
  has_many :pics
  has_many :taggings
  has_many :tags, through: :taggings


  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end
end
