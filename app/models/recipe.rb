class Recipe < ActiveRecord::Base
has_many :ingredients
has_many :tags
has_many :pics
end
