require 'rails_helper'

RSpec.describe User, :type => :model do 
let(:user) {
    User.create(
    :name => "Luigi yo",
    :username => "Lui",
    :email => "Luigi@lg.com",
    :password => "password",
    :password_confirmation => "password"
    )
  }


it "is valid with a name, username, email, password, and password_confirmation" do
expect(user).to be_valid
end

it "is not valid without a password" do
expect(User.new(name: "Luigi")).not_to be_valid
end





end
