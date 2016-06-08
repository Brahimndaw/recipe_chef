require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
    f.username {Faker::Name.first_name}
    f.email {Faker::Internet.email}
    f.password "test"
    f.password_confirmation "test"
  end
end
