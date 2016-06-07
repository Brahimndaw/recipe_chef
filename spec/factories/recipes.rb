require 'faker'

FactoryGirl.define do
  factory :recipe do |f|
    f.title {Faker::Hipster.word}
    f.description {Faker::Lorem.sentence}
  end
end
