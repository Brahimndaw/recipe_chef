class User < ActiveRecord::Base
  has_many :recipes
  has_many :ratings
  has_many :pics
  has_secure_password
  validates_presence_of :username, :name, :email
  validates_uniqueness_of :username, :email
  ratyrate_rateable "skills"
   ratyrate_rater
end
