require 'rails_helper'

RSpec.describe UsersController, type: :controller do
let(:user) {User.create(username: "Luigi Mario",name: "Luigi", email: "luigi@luigi.com", password_digest: "beef", image_url: "https://sickr.files.wordpress.com/2013/11/luigi-circle.jpg")}

before(:each) do
  allow(controller).to receive(current_user).and_return(user)
end

end





#
# RSpec.describe UsersController do
#   describe "GET index" do
#     it "assigns @users" do
#       mario = User.create(username: "Mario", name: "Mario Mario", email: "mario@mario.com")
#       get :index
#       binding.pry
#       expect(assigns(:users)).to eq([user])
#     end
#
#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end
# end
