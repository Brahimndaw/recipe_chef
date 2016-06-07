require 'faker'

FactoryGirl.define do
  factory :recipe do |f|
    f.title {Faker::Hipster.word}
  end
end
